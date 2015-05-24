// JavaScript source code
function new_page(element) {
        var returnValue = true;
        var errorMsg = "Errors when filling out the registration :\n";
        var regMail = /[0-9a-z_]+@[0-9a-z_^.]+.[a-z]{2,3}/i;
        var regDate = /(\d{2}\-){2}\d{4}/;
        var firstname = element.firstname.value;
        var lastname = element.lastname.value;
        var mail = element.mail.value;
        var password = element.password.value;
        var confrimpassword = element.confirm.value;
        var birthday = element.birth.value;
        var country = element.country.value;
        localStorage.setItem("flag", true);
        if (regMail.exec(mail) == null && mail === "") {
            errorMsg += "Incorrect email\n";
            returnValue = false;
        }
        else localStorage.setItem("Milo",mail);
        if (regDate.exec(birthday) == null && birthday === "") {
            errorMsg += "Incorrect birthday\n";
            returnValue = false;
        }
          else localStorage.setItem("Birthday",birthday);
        if (password !== confrimpassword || confrimpassword === "" || password === "") {
            errorMsg += "Passwords do not match\n";
            returnValue = false;
        }
        else localStorage.setItem("Password", password);
        if (lastname === "" || firstname === "" || country === "") {
            errorMsg += "Not all fields are filled registration \n";
            returnValue = false;
        }
        else {
            localStorage.setItem("Firstname", firstname);
            localStorage.setItem("Lastname", lastname);
            localStorage.setItem("Country",country);
        }
        if (!returnValue) {
            alert(errorMsg);
        }
        window.location = "second.html";
        return returnValue;

        //localStorage.setItem("firstname",firstname);
        //localStorage.setItem("lastname",lastname);
        //localStorage.setItem("milo",mail);
        //localStorage.setItem("password",password);
        //localStorage.setItem("Country",birthday);
        //localStorage.setItem("Birthday",country);
       
    }
