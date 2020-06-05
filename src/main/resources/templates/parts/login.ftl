<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Логин:</label>
            <div class="col-sm-6">
                <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                       class="form-control ${(usernameError??)?string('is-invalid', '')}"
                       placeholder="User name"/>
                <#if usernameError??>
                    <div class="invalid-feedback">
                        ${usernameError}
                    </div>
                </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Пароль:</label>
            <div class="col-sm-6">
                <input type="password" name="password"
                       class="form-control ${(passwordError??)?string('is-invalid', '')}"
                       placeholder="Password"/>
                <#if passwordError??>
                    <div class="invalid-feedback">
                        ${passwordError}
                    </div>
                </#if>
            </div>
        </div>
        <#if isRegisterForm>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Потдверждение паролья:</label>
                <div class="col-sm-6">
                    <input type="password" name="password2"
                           class="form-control ${(password2Error??)?string('is-invalid', '')}"
                           placeholder="Retype password"/>
                    <#if password2Error??>
                        <div class="invalid-feedback">
                            ${password2Error}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Электронная почта:</label>
                <div class="col-sm-6">
                    <input type="email" name="email" value="<#if user??>${user.email}</#if>"
                           class="form-control ${(emailError??)?string('is-invalid', '')}"
                           placeholder="some@some.com"/>
                    <#if emailError??>
                        <div class="invalid-feedback">
                            ${emailError}
                        </div>
                    </#if>
                </div>
            </div>
        </#if>

        <hr>

        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <#if isRegisterForm>
            <button class="btn btn-dark btn-lg btn-block" type="submit">
                Регистрация
            </button>
            <p class="text-muted">
                После регистрации вы получите письмо со ссылкой для активации аккаунта.
                В течение трех дней, пока ссылка действительна, по ней нужно перейти, чтобы завершить регистрацию.
                <br/>
                Обратите внимание: письмо может попасть в папку Спам, обязательно проверьте ее.
                Если письма нет (нигде, в том числе в спаме), то подождите несколько часов (в почтовых службах случаются
                технические задержки);
                <br/>
                **убедитесь, что при регистрации вы верно указали свой email.
            </p>
        <#else>
            <button class="btn btn-dark btn-lg btn-block" type="submit">
                Войти
            </button>
        </#if>
        <hr>
        <#if isRegisterForm>
            <div class="col-sm-10">
                <div class="g-recaptcha" data-sitekey="6LcGlgAVAAAAAL1ArfXH5vmJKwfme-uGOPp8ZJaJ"></div>
                <#if captchaError??>
                    <div class="alert alert-danger" role="alert">
                        ${captchaError}
                    </div>
                </#if>
            </div>
        </#if>
        <#if !isRegisterForm>
            <a href="/registration" class="btn btn-dark btn-lg btn-block">Регистрация</a>
        </#if>
    </form>
</#macro>
