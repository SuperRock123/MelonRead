"use strict";(self["webpackChunkmelonread_vue_test2"]=self["webpackChunkmelonread_vue_test2"]||[]).push([[133],{133:function(e,a,s){s.r(a),s.d(a,{default:function(){return m}});var r=function(){var e=this,a=e._self._c;return a("div",[a("van-nav-bar",{attrs:{title:"编辑个人信息","left-text":"返回","left-arrow":""},on:{"click-left":function(a){return e.$router.go(-1)}}}),a("van-form",{on:{submit:e.onSubmit}},[a("van-field",{attrs:{name:"用户名",label:"用户名",placeholder:"用户名",required:"",rules:[{required:!0,message:"请填写用户名"}]},model:{value:e.username,callback:function(a){e.username=a},expression:"username"}}),a("van-field",{attrs:{type:"password",name:"密码",label:"密码",placeholder:"密码",required:"",rules:[{required:!0,message:"请填写密码"}]},model:{value:e.password,callback:function(a){e.password=a},expression:"password"}}),a("van-field",{attrs:{type:"email",name:"邮箱",label:"邮箱",placeholder:"邮箱",rules:[{required:!1,message:"请填写邮箱"}]},model:{value:e.email,callback:function(a){e.email=a},expression:"email"}}),a("van-field",{attrs:{type:"url",name:"头像",label:"头像",placeholder:"头像url",rules:[{required:!1,message:"请填写头像"}]},model:{value:e.avatar,callback:function(a){e.avatar=a},expression:"avatar"}}),a("van-field",{attrs:{rows:"3",autosize:"",label:"简介",type:"textarea",maxlength:"80",placeholder:"请输入简介","show-word-limit":""},model:{value:e.bio,callback:function(a){e.bio=a},expression:"bio"}}),a("div",{staticStyle:{margin:"16px"}},[a("van-button",{attrs:{round:"",block:"",type:"info","native-type":"submit"},on:{click:e.onClickRegirster}},[e._v("保存")])],1)],1)],1)},t=[],l=s(2549),i=s(571),n=s(316),o={name:"user_login",data(){return{username:"",password:"",avatar:"",bio:"",email:"",userId:(0,i.F6)()}},async created(){const{data:e}=await(0,l.kl)(this.userId);this.username=e.username,this.password=e.password,this.avatar=e.avatar,this.bio=e.bio,this.email=e.email},methods:{onSubmit(e){},onclickLeft(){},async onClickRegirster(){""!==this.username&&""!==this.password?((0,n.A)({type:"success",message:"编辑成功"}),await(0,l.TK)(this.userId,this.username,this.password,this.bio,this.avatar,this.email),this.$router.replace("/user")):(0,n.A)({type:"primary",message:"用户名和密码不能为空"})}}},u=o,c=s(1656),d=(0,c.A)(u,r,t,!1,null,null,null),m=d.exports}}]);
//# sourceMappingURL=133.85c38a8d.js.map