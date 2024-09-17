import React, { useEffect, useState } from 'react';
import { MapContainer, TileLayer, Marker, Popup, LayersControl, LayerGroup } from 'react-leaflet';
import L from 'leaflet';
import 'leaflet/dist/leaflet.css';
import axios from 'axios';
import proj4 from 'proj4';

const { BaseLayer, Overlay } = LayersControl;

// Define projections
proj4.defs("EPSG:32647", "+proj=utm +zone=47 +datum=WGS84 +units=m +no_defs");

const fromProjection = 'EPSG:32647';
const toProjection = 'EPSG:4326';

// Define different icons for each layer
const nuatmIcon = L.icon({
    iconUrl: '/assets/atm3.png',
    iconSize: [25, 41],
    iconAnchor: [12, 41],
    popupAnchor: [1, -34],
});

const activityIcon = L.icon({
    iconUrl: '/assets/ลานกิจกรรม.png',
    iconSize: [25, 41],
    iconAnchor: [12, 41],
    popupAnchor: [1, -34],
});

const coffeeShopIcon = L.icon({
    iconUrl: '/assets/ร้านกาแฟ.png',
    iconSize: [25, 41],
    iconAnchor: [12, 41],
    popupAnchor: [1, -34],
});

const evChargerIcon = L.icon({
    iconUrl: '/assets/จุดชาจรถไฟฟ้า.png',
    iconSize: [25, 41],
    iconAnchor: [12, 41],
    popupAnchor: [1, -34],
});

const photocopyShopIcon = L.icon({
    iconUrl: '/assets/ร้านถ่ายเอกสาร.png',
    iconSize: [25, 41],
    iconAnchor: [12, 41],
    popupAnchor: [1, -34],
});

const restaurantIcon = L.icon({
    iconUrl: '/assets/ร้านอาหาร.png',
    iconSize: [25, 41],
    iconAnchor: [12, 41],
    popupAnchor: [1, -34],
});

const storeIcon = L.icon({
    iconUrl: '/assets/ร้านค้า.png',
    iconSize: [25, 41],
    iconAnchor: [12, 41],
    popupAnchor: [1, -34],
});

const NUATM = () => {
    const [data, setData] = useState({
        NUATM: [],
        Activity: [],
        CoffeeShop: [],
        EVCharger: [],
        PhotocopyShop: [],
        Restaurant1: [],
        Store1: []
    });

    useEffect(() => {
        const fetchData = async (url, type) => {
            try {
                const response = await axios.get(url);
                const transformedData = response.data.map((item) => {
                    const coordinates = JSON.parse(item.geometry).coordinates;
                    const [lng, lat] = proj4(fromProjection, toProjection, coordinates);

                    let imageUrl = item.images
                        ? `http://localhost:3001/uploads/${item.images}`
                        : 'http://localhost:3001/uploads/default.jpg';

                    return {
                        id: item.id,
                        lat: lat,
                        lng: lng,
                        area: item.area || 'N/A',
                        time: item.time || 'N/A',
                        facilities: item.facilities || 'N/A',
                        service: item.service || 'N/A',
                        contact: item.contact || 'N/A',
                        note: item.note || 'N/A',
                        imageUrl: imageUrl
                    };
                });

                setData(prevData => ({
                    ...prevData,
                    [type]: transformedData
                }));
            } catch (error) {
                console.error(`Error fetching ${type} data:`, error);
            }
        };

        // Fetch data for each layer
        fetchData('http://localhost:3001/api/data', 'NUATM');
        fetchData('http://localhost:3001/api/activity', 'Activity');
        fetchData('http://localhost:3001/api/coffeeshop', 'CoffeeShop');
        fetchData('http://localhost:3001/api/evcharger', 'EVCharger');
        fetchData('http://localhost:3001/api/photocopyshop', 'PhotocopyShop');
        fetchData('http://localhost:3001/api/restaurant1', 'Restaurant1');
        fetchData('http://localhost:3001/api/store1', 'Store1');
    }, []);

    return (
        <div style={{ height: 'calc(100vh - 64px)', width: '100%' }}>
            <MapContainer center={[16.747288, 100.192937]} zoom={15} style={{ height: '100%', width: '100%' }}>
                <LayersControl position="topright">
                    <BaseLayer checked name="OpenStreetMap">
                        <TileLayer url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png" />
                    </BaseLayer>

                    <Overlay checked name="ตู้กดเงิน">
                        <LayerGroup>
                            {data.NUATM.map((location) => (
                                <Marker key={location.id} position={[location.lat, location.lng]} icon={nuatmIcon}>
                                    <Popup>
                                        <strong>Area:</strong> {location.area}<br />
                                        <strong>Facilities:</strong> {location.facilities}<br />
                                        <strong>Contact:</strong> {location.contact}<br />
                                        <strong>Time:</strong> {location.time}<br />
                                        <img src={location.imageUrl} alt="Location" style={{ width: '100px', height: 'auto' }} />
                                    </Popup>
                                </Marker>
                            ))}
                        </LayerGroup>
                    </Overlay>

                    <Overlay checked name="สนามกีฬา">
                        <LayerGroup>
                            {data.Activity.map((location) => (
                                <Marker key={location.id} position={[location.lat, location.lng]} icon={activityIcon}>
                                    <Popup>
                                        <strong>Area:</strong> {location.area}<br />
                                        <strong>Facilities:</strong> {location.facilities}<br />
                                        <strong>Contact:</strong> {location.contact}<br />
                                        <img src={location.imageUrl} alt="Location" style={{ width: '100px', height: 'auto' }} />
                                    </Popup>
                                </Marker>
                            ))}
                        </LayerGroup>
                    </Overlay>

                    <Overlay checked name="ร้านขายเครื่องดื่ม">
                        <LayerGroup>
                            {data.CoffeeShop.map((location) => (
                                <Marker key={location.id} position={[location.lat, location.lng]} icon={coffeeShopIcon}>
                                    <Popup>
                                        <strong>Area:</strong> {location.area}<br />
                                        <strong>Service:</strong> {location.service}<br />
                                        <strong>Facilities:</strong> {location.facilities}<br />
                                        <strong>Time:</strong> {location.time}<br />
                                        <img src={location.imageUrl} alt="Location" style={{ width: '100px', height: 'auto' }} />
                                    </Popup>
                                </Marker>
                            ))}
                        </LayerGroup>
                    </Overlay>

                    <Overlay checked name="จุดชาร์จรถอีวี">
                        <LayerGroup>
                            {data.EVCharger.map((location) => (
                                <Marker key={location.id} position={[location.lat, location.lng]} icon={evChargerIcon}>
                                    <Popup>
                                        <strong>Area:</strong> {location.area}<br />
                                        <strong>Time:</strong> {location.time}<br />
                                        <img src={location.imageUrl} alt="Location" style={{ width: '100px', height: 'auto' }} />
                                    </Popup>
                                </Marker>
                            ))}
                        </LayerGroup>
                    </Overlay>

                    <Overlay checked name="ร้านถ่ายเอกสาร">
                        <LayerGroup>
                            {data.PhotocopyShop.map((location) => (
                                <Marker key={location.id} position={[location.lat, location.lng]} icon={photocopyShopIcon}>
                                    <Popup>
                                        <strong>Area:</strong> {location.area}<br />
                                        <strong>Facilities:</strong> {location.facilities}<br />
                                        <strong>Service:</strong> {location.service}<br />
                                        <strong>Contact:</strong> {location.contact}<br />
                                        <strong>Time:</strong> {location.time}<br />
                                        <img src={location.imageUrl} alt="Location" style={{ width: '100px', height: 'auto' }} />
                                    </Popup>
                                </Marker>
                            ))}
                        </LayerGroup>
                    </Overlay>

                    <Overlay checked name="ร้านอาหาร">
                        <LayerGroup>
                            {data.Restaurant1.map((location) => (
                                <Marker key={location.id} position={[location.lat, location.lng]} icon={restaurantIcon}>
                                    <Popup>
                                        <strong>Area:</strong> {location.area}<br />
                                        <strong>Service:</strong> {location.service}<br />
                                        <strong>Facilities:</strong> {location.facilities}<br />
                                        <strong>Time:</strong> {location.time}<br />
                                        <img src={location.imageUrl} alt="Location" style={{ width: '100px', height: 'auto' }} />
                                    </Popup>
                                </Marker>
                            ))}
                        </LayerGroup>
                    </Overlay>

                    <Overlay checked name="ร้านขายของ">
                        <LayerGroup>
                            {data.Store1.map((location) => (
                                <Marker key={location.id} position={[location.lat, location.lng]} icon={storeIcon}>
                                    <Popup>
                                        <strong>Area:</strong> {location.area}<br />
                                        <strong>Facilities:</strong> {location.facilities}<br />
                                        <strong>Contact:</strong> {location.contact}<br />
                                        <strong>Time:</strong> {location.time}<br />
                                        <img src={location.imageUrl} alt="Location" style={{ width: '100px', height: 'auto' }} />
                                    </Popup>
                                </Marker>
                            ))}
                        </LayerGroup>
                    </Overlay>
                </LayersControl>
            </MapContainer>
        </div>
    );
};

export default NUATM;
