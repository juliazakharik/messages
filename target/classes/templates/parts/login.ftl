<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group">
            <label> User Name : </label>
            <input type="text" name="username" class="form-control col-sm-5" placeholder="Username"/>
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <#if isRegisterForm>
        <div class="form-group">
            <label>Email:</label>
            <input type="email" name="email" class="form-control col-sm-5" placeholder="Email"/>
        </div>
        </#if>
        <div class="form-group">
            <label>Password:</label>
            <input type="password" name="password" class="form-control col-sm-5" placeholder="Password"/>
        </div>
        <#if !isRegisterForm>
            <a href="/registration">Add new user</a>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit" class="btn btn-primary"><#if isRegisterForm>Create<#else>Sign in</#if></button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <input type="submit" class="btn btn-primary" value="Sign Out"/>
    </form>
</#macro>