import React from "react";
import AppBar from "@mui/material/AppBar";
import Box from "@mui/material/Box";
import Toolbar from "@mui/material/Toolbar";
import IconButton from "@mui/material/IconButton";
import Container from "@mui/material/Container";
import Avatar from "@mui/material/Avatar";
import { useNavigate } from "react-router-dom";

function HeadersBar() {
    const navigate = useNavigate();

    const handleLogoClick = () => {
        navigate('/'); // Adjust this route to your home page route
    };

    return (
        <AppBar position="static" sx={{ backgroundColor: "#f1be6c", boxShadow: "none", borderBottom: "1px solid #E0E0E0" }}>
            <Container maxWidth="xl">
                <Toolbar disableGutters sx={{ justifyContent: "space-between" }}>
                    {/* LOGO */}
                    <IconButton onClick={handleLogoClick} sx={{ p: 0 }}>
                        <Avatar
                            alt="NU Logo"
                            src="https://www.nupress.grad.nu.ac.th/wp-content/uploads/2018/05/logo-NU-2018.jpg"
                            sx={{ width: 50, height: 50 }}
                        />
                    </IconButton>
                    {/* /LOGO */}

                    {/* University Image */}
                    <Box>
                        <img
                            src="/assets/logo.png"
                            alt="มหาวิทยาลัยนเรศวร"
                            style={{ width: 150, height: "auto" }}
                        />
                    </Box>
                    {/* /University Image */}
                </Toolbar>
            </Container>
        </AppBar>
    );
}

export default HeadersBar;
