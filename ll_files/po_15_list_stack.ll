; ModuleID = 'PostorderTraversals/po_15_list_stack.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type { i32 (...)**, i32 }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type { %"class.std::locale::facet", %struct.__locale_struct*, i8, i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet" }
%"class.std::num_get" = type { %"class.std::locale::facet" }
%struct.TreeNode = type { i32, %struct.TreeNode*, %struct.TreeNode* }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, i8*, i64, i8, i8, i8, i8, i8*, i8*, i8, %"class.std::codecvt"*, i8*, i64, i8*, i8* }
%union.pthread_mutex_t = type { %"struct.<anonymous union>::__pthread_mutex_s" }
%"struct.<anonymous union>::__pthread_mutex_s" = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%"class.std::__basic_file" = type { %struct._IO_FILE*, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__mbstate_t = type { i32, %union.anon.0 }
%union.anon.0 = type { i32 }
%"class.std::codecvt" = type { %"class.std::__codecvt_abstract_base", %struct.__locale_struct* }
%"class.std::__codecvt_abstract_base" = type { %"class.std::locale::facet" }
%class.Solution = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" = type { i32*, i32*, i32* }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl" }
%"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl" = type { %"struct.std::_List_node" }
%"struct.std::_List_node" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"* }
%"class.__gnu_cxx::__normal_iterator" = type { i32* }
%"class.std::allocator.1" = type { i8 }
%"class.__gnu_cxx::new_allocator.2" = type { i8 }
%"struct.std::_List_iterator" = type { %"struct.std::__detail::_List_node_base"* }
%"struct.std::random_access_iterator_tag" = type { i8 }
%"struct.std::_List_node.7" = type { %"struct.std::__detail::_List_node_base", %struct.TreeNode* }
%"class.std::allocator.4" = type { i8 }
%"class.__gnu_cxx::new_allocator.5" = type { i8 }
%"class.std::move_iterator" = type { i32* }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@.str = private unnamed_addr constant [18 x i8] c"../../numbers.txt\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream"
@.str1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str2 = private unnamed_addr constant [28 x i8] c"vector::_M_emplace_back_aux\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

; Function Attrs: nounwind
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #0
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #0

; Function Attrs: nounwind uwtable
define %struct.TreeNode* @_Z6insertP8TreeNodei(%struct.TreeNode* %root, i32 %val) #3 {
  %1 = alloca %struct.TreeNode*, align 8
  %2 = alloca %struct.TreeNode*, align 8
  %3 = alloca i32, align 4
  store %struct.TreeNode* %root, %struct.TreeNode** %2, align 8
  store i32 %val, i32* %3, align 4
  %4 = load %struct.TreeNode** %2, align 8
  %5 = icmp ne %struct.TreeNode* %4, null
  br i1 %5, label %10, label %6

; <label>:6                                       ; preds = %0
  %7 = call noalias i8* @_Znwm(i64 24) #8
  %8 = bitcast i8* %7 to %struct.TreeNode*
  %9 = load i32* %3, align 4
  call void @_ZN8TreeNodeC2Ei(%struct.TreeNode* %8, i32 %9)
  store %struct.TreeNode* %8, %struct.TreeNode** %1
  br label %34

; <label>:10                                      ; preds = %0
  %11 = load i32* %3, align 4
  %12 = load %struct.TreeNode** %2, align 8
  %13 = getelementptr inbounds %struct.TreeNode* %12, i32 0, i32 0
  %14 = load i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %24

; <label>:16                                      ; preds = %10
  %17 = load %struct.TreeNode** %2, align 8
  %18 = getelementptr inbounds %struct.TreeNode* %17, i32 0, i32 1
  %19 = load %struct.TreeNode** %18, align 8
  %20 = load i32* %3, align 4
  %21 = call %struct.TreeNode* @_Z6insertP8TreeNodei(%struct.TreeNode* %19, i32 %20)
  %22 = load %struct.TreeNode** %2, align 8
  %23 = getelementptr inbounds %struct.TreeNode* %22, i32 0, i32 1
  store %struct.TreeNode* %21, %struct.TreeNode** %23, align 8
  br label %32

; <label>:24                                      ; preds = %10
  %25 = load %struct.TreeNode** %2, align 8
  %26 = getelementptr inbounds %struct.TreeNode* %25, i32 0, i32 2
  %27 = load %struct.TreeNode** %26, align 8
  %28 = load i32* %3, align 4
  %29 = call %struct.TreeNode* @_Z6insertP8TreeNodei(%struct.TreeNode* %27, i32 %28)
  %30 = load %struct.TreeNode** %2, align 8
  %31 = getelementptr inbounds %struct.TreeNode* %30, i32 0, i32 2
  store %struct.TreeNode* %29, %struct.TreeNode** %31, align 8
  br label %32

; <label>:32                                      ; preds = %24, %16
  %33 = load %struct.TreeNode** %2, align 8
  store %struct.TreeNode* %33, %struct.TreeNode** %1
  br label %34

; <label>:34                                      ; preds = %32, %6
  %35 = load %struct.TreeNode** %1
  ret %struct.TreeNode* %35
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #4

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN8TreeNodeC2Ei(%struct.TreeNode* %this, i32 %x) unnamed_addr #3 align 2 {
  %1 = alloca %struct.TreeNode*, align 8
  %2 = alloca i32, align 4
  store %struct.TreeNode* %this, %struct.TreeNode** %1, align 8
  store i32 %x, i32* %2, align 4
  %3 = load %struct.TreeNode** %1
  %4 = getelementptr inbounds %struct.TreeNode* %3, i32 0, i32 0
  %5 = load i32* %2, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds %struct.TreeNode* %3, i32 0, i32 1
  store %struct.TreeNode* null, %struct.TreeNode** %6, align 8
  %7 = getelementptr inbounds %struct.TreeNode* %3, i32 0, i32 2
  store %struct.TreeNode* null, %struct.TreeNode** %7, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #3 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %filename = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::allocator", align 1
  %file = alloca %"class.std::basic_ifstream", align 8
  %num = alloca i32, align 4
  %root = alloca %struct.TreeNode*, align 8
  %sol = alloca %class.Solution, align 1
  %result = alloca %"class.std::vector", align 8
  %i = alloca i64, align 8
  %5 = alloca i32
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %4) #0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %filename, i8* getelementptr inbounds ([18 x i8]* @.str, i32 0, i32 0), %"class.std::allocator"* %4)
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %4) #0
  %6 = load i32* %2, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %0
  %9 = load i8*** %3, align 8
  %10 = getelementptr inbounds i8** %9, i64 1
  %11 = load i8** %10, align 8
  %12 = call %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(%"class.std::__cxx11::basic_string"* %filename, i8* %11)
  br label %13

; <label>:13                                      ; preds = %8, %0
  %14 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* %filename) #0
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ifstream"* %file, i8* %14, i32 8)
  store %struct.TreeNode* null, %struct.TreeNode** %root, align 8
  br label %15

; <label>:15                                      ; preds = %27, %13
  %16 = bitcast %"class.std::basic_ifstream"* %file to %"class.std::basic_istream"*
  %17 = call %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* %16, i32* %num)
  %18 = bitcast %"class.std::basic_istream"* %17 to i8**
  %19 = load i8** %18
  %20 = getelementptr i8* %19, i64 -24
  %21 = bitcast i8* %20 to i64*
  %22 = load i64* %21
  %23 = bitcast %"class.std::basic_istream"* %17 to i8*
  %24 = getelementptr inbounds i8* %23, i64 %22
  %25 = bitcast i8* %24 to %"class.std::basic_ios"*
  %26 = call zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(%"class.std::basic_ios"* %25)
  br i1 %26, label %27, label %31

; <label>:27                                      ; preds = %15
  %28 = load %struct.TreeNode** %root, align 8
  %29 = load i32* %num, align 4
  %30 = call %struct.TreeNode* @_Z6insertP8TreeNodei(%struct.TreeNode* %28, i32 %29)
  store %struct.TreeNode* %30, %struct.TreeNode** %root, align 8
  br label %15

; <label>:31                                      ; preds = %15
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv(%"class.std::basic_ifstream"* %file)
  %32 = load %struct.TreeNode** %root, align 8
  call void @_ZN8Solution18postorderTraversalEP8TreeNode(%"class.std::vector"* sret %result, %class.Solution* %sol, %struct.TreeNode* %32)
  store i64 0, i64* %i, align 8
  br label %33

; <label>:33                                      ; preds = %43, %31
  %34 = load i64* %i, align 8
  %35 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %result) #0
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %46

; <label>:37                                      ; preds = %33
  %38 = load i64* %i, align 8
  %39 = call i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %result, i64 %38) #0
  %40 = load i32* %39
  %41 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %40)
  %42 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %41, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  br label %43

; <label>:43                                      ; preds = %37
  %44 = load i64* %i, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %i, align 8
  br label %33

; <label>:46                                      ; preds = %33
  %47 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, i32* %1
  store i32 1, i32* %5
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %result) #0
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"* %file) #0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %filename) #0
  %48 = load i32* %1
  ret i32 %48
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"*, i8*, %"class.std::allocator"*) #1

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator"*) #2

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator"*) #2

declare %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(%"class.std::__cxx11::basic_string"*, i8*) #1

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ifstream"*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"*) #2

declare %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"*, i32*) #1

declare zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(%"class.std::basic_ios"*) #1

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv(%"class.std::basic_ifstream"*) #1

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN8Solution18postorderTraversalEP8TreeNode(%"class.std::vector"* noalias sret %agg.result, %class.Solution* %this, %struct.TreeNode* %root) #3 align 2 {
  %1 = alloca %class.Solution*, align 8
  %2 = alloca %struct.TreeNode*, align 8
  %3 = alloca i1
  %4 = alloca i32
  %listStack = alloca %"class.std::__cxx11::list", align 8
  %node = alloca %struct.TreeNode*, align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %class.Solution* %this, %class.Solution** %1, align 8
  store %struct.TreeNode* %root, %struct.TreeNode** %2, align 8
  %7 = load %class.Solution** %1
  store i1 false, i1* %3
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector"* %agg.result) #0
  %8 = load %struct.TreeNode** %2, align 8
  %9 = icmp eq %struct.TreeNode* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  store i1 true, i1* %3
  store i32 1, i32* %4
  br label %45

; <label>:11                                      ; preds = %0
  call void @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EEC2Ev(%"class.std::__cxx11::list"* %listStack) #0
  call void @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EE9push_backERKS2_(%"class.std::__cxx11::list"* %listStack, %struct.TreeNode** %2)
  br label %12

; <label>:12                                      ; preds = %35, %11
  %13 = call zeroext i1 @_ZNKSt7__cxx114listIP8TreeNodeSaIS2_EE5emptyEv(%"class.std::__cxx11::list"* %listStack) #0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %36

; <label>:15                                      ; preds = %12
  %16 = call %struct.TreeNode** @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EE4backEv(%"class.std::__cxx11::list"* %listStack) #0
  %17 = load %struct.TreeNode** %16
  store %struct.TreeNode* %17, %struct.TreeNode** %node, align 8
  call void @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EE8pop_backEv(%"class.std::__cxx11::list"* %listStack) #0
  %18 = load %struct.TreeNode** %node, align 8
  %19 = getelementptr inbounds %struct.TreeNode* %18, i32 0, i32 0
  call void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"* %agg.result, i32* %19)
  %20 = load %struct.TreeNode** %node, align 8
  %21 = getelementptr inbounds %struct.TreeNode* %20, i32 0, i32 1
  %22 = load %struct.TreeNode** %21, align 8
  %23 = icmp ne %struct.TreeNode* %22, null
  br i1 %23, label %24, label %27

; <label>:24                                      ; preds = %15
  %25 = load %struct.TreeNode** %node, align 8
  %26 = getelementptr inbounds %struct.TreeNode* %25, i32 0, i32 1
  call void @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EE9push_backERKS2_(%"class.std::__cxx11::list"* %listStack, %struct.TreeNode** %26)
  br label %27

; <label>:27                                      ; preds = %24, %15
  %28 = load %struct.TreeNode** %node, align 8
  %29 = getelementptr inbounds %struct.TreeNode* %28, i32 0, i32 2
  %30 = load %struct.TreeNode** %29, align 8
  %31 = icmp ne %struct.TreeNode* %30, null
  br i1 %31, label %32, label %35

; <label>:32                                      ; preds = %27
  %33 = load %struct.TreeNode** %node, align 8
  %34 = getelementptr inbounds %struct.TreeNode* %33, i32 0, i32 2
  call void @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EE9push_backERKS2_(%"class.std::__cxx11::list"* %listStack, %struct.TreeNode** %34)
  br label %35

; <label>:35                                      ; preds = %32, %27
  br label %12

; <label>:36                                      ; preds = %12
  %37 = call i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector"* %agg.result) #0
  %38 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store i32* %37, i32** %38
  %39 = call i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector"* %agg.result) #0
  %40 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  store i32* %39, i32** %40
  %41 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  %42 = load i32** %41
  %43 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  %44 = load i32** %43
  call void @_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_(i32* %42, i32* %44)
  store i1 true, i1* %3
  store i32 1, i32* %4
  call void @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EED2Ev(%"class.std::__cxx11::list"* %listStack) #0
  br label %45

; <label>:45                                      ; preds = %36, %10
  %46 = load i1* %3
  br i1 %46, label %48, label %47

; <label>:47                                      ; preds = %45
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %agg.result) #0
  br label %48

; <label>:48                                      ; preds = %47, %45
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %this) #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %4, i32 0, i32 1
  %6 = load i32** %5, align 8
  %7 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load i32** %9, align 8
  %11 = ptrtoint i32* %6 to i64
  %12 = ptrtoint i32* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 4
  ret i64 %14
}

declare %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"*, i8*) #1

declare %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %this, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::vector"** %1
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load i32** %6, align 8
  %8 = load i64* %2, align 8
  %9 = getelementptr inbounds i32* %7, i64 %8
  ret i32* %9
}

declare %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"*) #1

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %4, i32 0, i32 0
  %6 = load i32** %5, align 8
  %7 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %8, i32 0, i32 1
  %10 = load i32** %9, align 8
  %11 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %12 = call %"class.std::allocator.1"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %11) #0
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %6, i32* %10, %"class.std::allocator.1"* %12)
  %13 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* %13) #0
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"*) #2

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"*) #2

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %__first, i32* %__last, %"class.std::allocator.1"*) #5 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %"class.std::allocator.1"*, align 8
  store i32* %__first, i32** %2, align 8
  store i32* %__last, i32** %3, align 8
  store %"class.std::allocator.1"* %0, %"class.std::allocator.1"** %4, align 8
  %5 = load i32** %2, align 8
  %6 = load i32** %3, align 8
  call void @_ZSt8_DestroyIPiEvT_S1_(i32* %5, i32* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.1"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3 to %"class.std::allocator.1"*
  ret %"class.std::allocator.1"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3, i32 0, i32 0
  %5 = load i32** %4, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %6, i32 0, i32 2
  %8 = load i32** %7, align 8
  %9 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %9, i32 0, i32 0
  %11 = load i32** %10, align 8
  %12 = ptrtoint i32* %8 to i64
  %13 = ptrtoint i32* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 4
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* %2, i32* %5, i64 %15)
  %16 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %16) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* %this, i32* %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"struct.std::_Vector_base"** %1
  %5 = load i32** %2, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %8 to %"class.std::allocator.1"*
  %10 = load i32** %2, align 8
  %11 = load i64* %3, align 8
  call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator.1"* %9, i32* %10, i64 %11)
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2 to %"class.std::allocator.1"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator.1"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIiED2Ev(%"class.std::allocator.1"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.1"*, align 8
  store %"class.std::allocator.1"* %this, %"class.std::allocator.1"** %1, align 8
  %2 = load %"class.std::allocator.1"** %1
  %3 = bitcast %"class.std::allocator.1"* %2 to %"class.__gnu_cxx::new_allocator.2"*
  call void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.2"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.2"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.2"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator.1"* %__a, i32* %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.1"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.1"* %__a, %"class.std::allocator.1"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.1"** %1, align 8
  %5 = bitcast %"class.std::allocator.1"* %4 to %"class.__gnu_cxx::new_allocator.2"*
  %6 = load i32** %2, align 8
  %7 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.2"* %5, i32* %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.2"* %this, i32* %__p, i64) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %2, align 8
  store i32* %__p, i32** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.2"** %2
  %6 = load i32** %3, align 8
  %7 = bitcast i32* %6 to i8*
  call void @_ZdlPv(i8* %7) #0
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #6

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyIPiEvT_S1_(i32* %__first, i32* %__last) #5 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  %3 = load i32** %1, align 8
  %4 = load i32** %2, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32* %3, i32* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32*, i32*) #3 align 2 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EEC2Ev(%"class.std::__cxx11::list"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %1, align 8
  %2 = load %"class.std::__cxx11::list"** %1
  %3 = bitcast %"class.std::__cxx11::list"* %2 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EEC2Ev(%"class.std::__cxx11::_List_base"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EE9push_backERKS2_(%"class.std::__cxx11::list"* %this, %struct.TreeNode** %__x) #3 align 2 {
  %1 = alloca %"class.std::__cxx11::list"*, align 8
  %2 = alloca %struct.TreeNode**, align 8
  %3 = alloca %"struct.std::_List_iterator", align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %1, align 8
  store %struct.TreeNode** %__x, %struct.TreeNode*** %2, align 8
  %4 = load %"class.std::__cxx11::list"** %1
  %5 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EE3endEv(%"class.std::__cxx11::list"* %4) #0
  %6 = getelementptr %"struct.std::_List_iterator"* %3, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %5, %"struct.std::__detail::_List_node_base"** %6
  %7 = load %struct.TreeNode*** %2, align 8
  %8 = getelementptr %"struct.std::_List_iterator"* %3, i32 0, i32 0
  %9 = load %"struct.std::__detail::_List_node_base"** %8
  call void @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_(%"class.std::__cxx11::list"* %4, %"struct.std::__detail::_List_node_base"* %9, %struct.TreeNode** %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt7__cxx114listIP8TreeNodeSaIS2_EE5emptyEv(%"class.std::__cxx11::list"* %this) #3 align 2 {
  %1 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %1, align 8
  %2 = load %"class.std::__cxx11::list"** %1
  %3 = bitcast %"class.std::__cxx11::list"* %2 to %"class.std::__cxx11::_List_base"*
  %4 = getelementptr inbounds %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_List_node"* %5 to %"struct.std::__detail::_List_node_base"*
  %7 = getelementptr inbounds %"struct.std::__detail::_List_node_base"* %6, i32 0, i32 0
  %8 = load %"struct.std::__detail::_List_node_base"** %7, align 8
  %9 = bitcast %"class.std::__cxx11::list"* %2 to %"class.std::__cxx11::_List_base"*
  %10 = getelementptr inbounds %"class.std::__cxx11::_List_base"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %10, i32 0, i32 0
  %12 = bitcast %"struct.std::_List_node"* %11 to %"struct.std::__detail::_List_node_base"*
  %13 = icmp eq %"struct.std::__detail::_List_node_base"* %8, %12
  ret i1 %13
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.TreeNode** @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EE4backEv(%"class.std::__cxx11::list"* %this) #3 align 2 {
  %1 = alloca %"class.std::__cxx11::list"*, align 8
  %__tmp = alloca %"struct.std::_List_iterator", align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %1, align 8
  %2 = load %"class.std::__cxx11::list"** %1
  %3 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EE3endEv(%"class.std::__cxx11::list"* %2) #0
  %4 = getelementptr %"struct.std::_List_iterator"* %__tmp, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %3, %"struct.std::__detail::_List_node_base"** %4
  %5 = call %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIP8TreeNodeEmmEv(%"struct.std::_List_iterator"* %__tmp) #0
  %6 = call %struct.TreeNode** @_ZNKSt14_List_iteratorIP8TreeNodeEdeEv(%"struct.std::_List_iterator"* %__tmp) #0
  ret %struct.TreeNode** %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EE8pop_backEv(%"class.std::__cxx11::list"* %this) #3 align 2 {
  %1 = alloca %"class.std::__cxx11::list"*, align 8
  %2 = alloca %"struct.std::_List_iterator", align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %1, align 8
  %3 = load %"class.std::__cxx11::list"** %1
  %4 = bitcast %"class.std::__cxx11::list"* %3 to %"class.std::__cxx11::_List_base"*
  %5 = getelementptr inbounds %"class.std::__cxx11::_List_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_List_node"* %6 to %"struct.std::__detail::_List_node_base"*
  %8 = getelementptr inbounds %"struct.std::__detail::_List_node_base"* %7, i32 0, i32 1
  %9 = load %"struct.std::__detail::_List_node_base"** %8, align 8
  call void @_ZNSt14_List_iteratorIP8TreeNodeEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* %2, %"struct.std::__detail::_List_node_base"* %9) #0
  %10 = getelementptr %"struct.std::_List_iterator"* %2, i32 0, i32 0
  %11 = load %"struct.std::__detail::_List_node_base"** %10
  call void @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EE8_M_eraseESt14_List_iteratorIS2_E(%"class.std::__cxx11::list"* %3, %"struct.std::__detail::_List_node_base"* %11) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"* %this, i32* %__x) #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i32*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i32* %__x, i32** %2, align 8
  %3 = load %"class.std::vector"** %1
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %5, i32 0, i32 1
  %7 = load i32** %6, align 8
  %8 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %9, i32 0, i32 2
  %11 = load i32** %10, align 8
  %12 = icmp ne i32* %7, %11
  br i1 %12, label %13, label %27

; <label>:13                                      ; preds = %0
  %14 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %15 = getelementptr inbounds %"struct.std::_Vector_base"* %14, i32 0, i32 0
  %16 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %15 to %"class.std::allocator.1"*
  %17 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %18 = getelementptr inbounds %"struct.std::_Vector_base"* %17, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %18, i32 0, i32 1
  %20 = load i32** %19, align 8
  %21 = load i32** %2, align 8
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator.1"* %16, i32* %20, i32* %21)
  %22 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %23 = getelementptr inbounds %"struct.std::_Vector_base"* %22, i32 0, i32 0
  %24 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %23, i32 0, i32 1
  %25 = load i32** %24, align 8
  %26 = getelementptr inbounds i32* %25, i32 1
  store i32* %26, i32** %24, align 8
  br label %29

; <label>:27                                      ; preds = %0
  %28 = load i32** %2, align 8
  call void @_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_(%"class.std::vector"* %3, i32* %28)
  br label %29

; <label>:29                                      ; preds = %27, %13
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_(i32* %__first.coerce, i32* %__last.coerce) #5 {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"struct.std::random_access_iterator_tag", align 1
  %4 = alloca %"struct.std::random_access_iterator_tag", align 1
  %5 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %5
  %6 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %6
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %1 to i8*
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %2 to i8*
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_(%"class.__gnu_cxx::__normal_iterator"* %__first)
  %11 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %12 = load i32** %11
  %13 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %14 = load i32** %13
  call void @_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag(i32* %12, i32* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"** %2
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %5, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %1, i32** %6) #0
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %8 = load i32** %7
  ret i32* %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"** %2
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %5, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %1, i32** %6) #0
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %8 = load i32** %7
  ret i32* %8
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EED2Ev(%"class.std::__cxx11::list"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %1, align 8
  %2 = load %"class.std::__cxx11::list"** %1
  %3 = bitcast %"class.std::__cxx11::list"* %2 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EED2Ev(%"class.std::__cxx11::_List_base"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EED2Ev(%"class.std::__cxx11::_List_base"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %1, align 8
  %2 = load %"class.std::__cxx11::_List_base"** %1
  call void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE8_M_clearEv(%"class.std::__cxx11::_List_base"* %2) #0
  %3 = getelementptr inbounds %"class.std::__cxx11::_List_base"* %2, i32 0, i32 0
  call void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE8_M_clearEv(%"class.std::__cxx11::_List_base"* %this) #3 align 2 {
  %1 = alloca %"class.std::__cxx11::_List_base"*, align 8
  %__cur = alloca %"struct.std::__detail::_List_node_base"*, align 8
  %__tmp = alloca %"struct.std::_List_node.7"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %1, align 8
  %2 = load %"class.std::__cxx11::_List_base"** %1
  %3 = getelementptr inbounds %"class.std::__cxx11::_List_base"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_List_node"* %4 to %"struct.std::__detail::_List_node_base"*
  %6 = getelementptr inbounds %"struct.std::__detail::_List_node_base"* %5, i32 0, i32 0
  %7 = load %"struct.std::__detail::_List_node_base"** %6, align 8
  store %"struct.std::__detail::_List_node_base"* %7, %"struct.std::__detail::_List_node_base"** %__cur, align 8
  br label %8

; <label>:8                                       ; preds = %14, %0
  %9 = load %"struct.std::__detail::_List_node_base"** %__cur, align 8
  %10 = getelementptr inbounds %"class.std::__cxx11::_List_base"* %2, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %10, i32 0, i32 0
  %12 = bitcast %"struct.std::_List_node"* %11 to %"struct.std::__detail::_List_node_base"*
  %13 = icmp ne %"struct.std::__detail::_List_node_base"* %9, %12
  br i1 %13, label %14, label %25

; <label>:14                                      ; preds = %8
  %15 = load %"struct.std::__detail::_List_node_base"** %__cur, align 8
  %16 = bitcast %"struct.std::__detail::_List_node_base"* %15 to %"struct.std::_List_node.7"*
  store %"struct.std::_List_node.7"* %16, %"struct.std::_List_node.7"** %__tmp, align 8
  %17 = load %"struct.std::_List_node.7"** %__tmp, align 8
  %18 = bitcast %"struct.std::_List_node.7"* %17 to %"struct.std::__detail::_List_node_base"*
  %19 = getelementptr inbounds %"struct.std::__detail::_List_node_base"* %18, i32 0, i32 0
  %20 = load %"struct.std::__detail::_List_node_base"** %19, align 8
  store %"struct.std::__detail::_List_node_base"* %20, %"struct.std::__detail::_List_node_base"** %__cur, align 8
  %21 = call %"class.std::allocator.4"* @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %2) #0
  %22 = bitcast %"class.std::allocator.4"* %21 to %"class.__gnu_cxx::new_allocator.5"*
  %23 = load %"struct.std::_List_node.7"** %__tmp, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP8TreeNodeEE7destroyIS4_EEvPT_(%"class.__gnu_cxx::new_allocator.5"* %22, %"struct.std::_List_node.7"* %23)
  %24 = load %"struct.std::_List_node.7"** %__tmp, align 8
  call void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE11_M_put_nodeEPSt10_List_nodeIS2_E(%"class.std::__cxx11::_List_base"* %2, %"struct.std::_List_node.7"* %24) #0
  br label %8

; <label>:25                                      ; preds = %8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"*, align 8
  store %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %this, %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"** %1, align 8
  %2 = load %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"** %1
  %3 = bitcast %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %2 to %"class.std::allocator.4"*
  call void @_ZNSaISt10_List_nodeIP8TreeNodeEED2Ev(%"class.std::allocator.4"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt10_List_nodeIP8TreeNodeEED2Ev(%"class.std::allocator.4"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.4"* %this, %"class.std::allocator.4"** %1, align 8
  %2 = load %"class.std::allocator.4"** %1
  %3 = bitcast %"class.std::allocator.4"* %2 to %"class.__gnu_cxx::new_allocator.5"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP8TreeNodeEED2Ev(%"class.__gnu_cxx::new_allocator.5"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP8TreeNodeEED2Ev(%"class.__gnu_cxx::new_allocator.5"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.5"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.4"* @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %this) #3 align 2 {
  %1 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %1, align 8
  %2 = load %"class.std::__cxx11::_List_base"** %1
  %3 = getelementptr inbounds %"class.std::__cxx11::_List_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %3 to %"class.std::allocator.4"*
  ret %"class.std::allocator.4"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP8TreeNodeEE7destroyIS4_EEvPT_(%"class.__gnu_cxx::new_allocator.5"* %this, %"struct.std::_List_node.7"* %__p) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  %2 = alloca %"struct.std::_List_node.7"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %1, align 8
  store %"struct.std::_List_node.7"* %__p, %"struct.std::_List_node.7"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.5"** %1
  %4 = load %"struct.std::_List_node.7"** %2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE11_M_put_nodeEPSt10_List_nodeIS2_E(%"class.std::__cxx11::_List_base"* %this, %"struct.std::_List_node.7"* %__p) #3 align 2 {
  %1 = alloca %"class.std::__cxx11::_List_base"*, align 8
  %2 = alloca %"struct.std::_List_node.7"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %1, align 8
  store %"struct.std::_List_node.7"* %__p, %"struct.std::_List_node.7"** %2, align 8
  %3 = load %"class.std::__cxx11::_List_base"** %1
  %4 = getelementptr inbounds %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %4 to %"class.std::allocator.4"*
  %6 = bitcast %"class.std::allocator.4"* %5 to %"class.__gnu_cxx::new_allocator.5"*
  %7 = load %"struct.std::_List_node.7"** %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP8TreeNodeEE10deallocateEPS4_m(%"class.__gnu_cxx::new_allocator.5"* %6, %"struct.std::_List_node.7"* %7, i64 1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP8TreeNodeEE10deallocateEPS4_m(%"class.__gnu_cxx::new_allocator.5"* %this, %"struct.std::_List_node.7"* %__p, i64) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  %3 = alloca %"struct.std::_List_node.7"*, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %2, align 8
  store %"struct.std::_List_node.7"* %__p, %"struct.std::_List_node.7"** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.5"** %2
  %6 = load %"struct.std::_List_node.7"** %3, align 8
  %7 = bitcast %"struct.std::_List_node.7"* %6 to i8*
  call void @_ZdlPv(i8* %7) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %this, i32** %__i) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %2 = alloca i32**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  store i32** %__i, i32*** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"** %1
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %5 = load i32*** %2, align 8
  %6 = load i32** %5, align 8
  store i32* %6, i32** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag(i32* %__first.coerce, i32* %__last.coerce) #3 {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %1 = alloca %"struct.std::random_access_iterator_tag", align 1
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %4
  %5 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %5
  %6 = call zeroext i1 @_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* %__first, %"class.__gnu_cxx::__normal_iterator"* %__last) #0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %23

; <label>:8                                       ; preds = %0
  %9 = call %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv(%"class.__gnu_cxx::__normal_iterator"* %__last) #0
  br label %10

; <label>:10                                      ; preds = %12, %8
  %11 = call zeroext i1 @_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* %__first, %"class.__gnu_cxx::__normal_iterator"* %__last) #0
  br i1 %11, label %12, label %23

; <label>:12                                      ; preds = %10
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator"* %2 to i8*
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator"* %3 to i8*
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %17 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %18 = load i32** %17
  %19 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %20 = load i32** %19
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_(i32* %18, i32* %20)
  %21 = call %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__first) #0
  %22 = call %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv(%"class.__gnu_cxx::__normal_iterator"* %__last) #0
  br label %10

; <label>:23                                      ; preds = %7, %10
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #0

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_(%"class.__gnu_cxx::__normal_iterator"*) #5 {
  %2 = alloca %"struct.std::random_access_iterator_tag", align 1
  %3 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"* %__rhs) #5 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %4 = call i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %3) #0
  %5 = load i32** %4
  %6 = load %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %7 = call i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %6) #0
  %8 = load i32** %7
  %9 = icmp eq i32* %5, %8
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %4 = load i32** %3, align 8
  %5 = getelementptr inbounds i32* %4, i32 -1
  store i32* %5, i32** %3, align 8
  ret %"class.__gnu_cxx::__normal_iterator"* %2
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"* %__rhs) #5 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %4 = call i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %3) #0
  %5 = load i32** %4
  %6 = load %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %7 = call i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %6) #0
  %8 = load i32** %7
  %9 = icmp ult i32* %5, %8
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_(i32* %__a.coerce, i32* %__b.coerce) #3 {
  %__a = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__b = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %1 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__a, i32 0, i32 0
  store i32* %__a.coerce, i32** %1
  %2 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__b, i32 0, i32 0
  store i32* %__b.coerce, i32** %2
  %3 = call i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__a) #0
  %4 = call i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__b) #0
  call void @_ZSt4swapIiEvRT_S1_(i32* %3, i32* %4) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %4 = load i32** %3, align 8
  %5 = getelementptr inbounds i32* %4, i32 1
  store i32* %5, i32** %3, align 8
  ret %"class.__gnu_cxx::__normal_iterator"* %2
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt4swapIiEvRT_S1_(i32* %__a, i32* %__b) #5 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %__tmp = alloca i32, align 4
  store i32* %__a, i32** %1, align 8
  store i32* %__b, i32** %2, align 8
  %3 = load i32** %1, align 8
  %4 = call i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* %3) #0
  %5 = load i32* %4
  store i32 %5, i32* %__tmp, align 4
  %6 = load i32** %2, align 8
  %7 = call i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* %6) #0
  %8 = load i32* %7
  %9 = load i32** %1, align 8
  store i32 %8, i32* %9, align 4
  %10 = call i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* %__tmp) #0
  %11 = load i32* %10
  %12 = load i32** %2, align 8
  store i32 %11, i32* %12, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %4 = load i32** %3, align 8
  ret i32* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* %__t) #3 {
  %1 = alloca i32*, align 8
  store i32* %__t, i32** %1, align 8
  %2 = load i32** %1, align 8
  ret i32* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  ret i32** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator.1"* %__a, i32* %__p, i32* %__args) #3 align 2 {
  %1 = alloca %"class.std::allocator.1"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store %"class.std::allocator.1"* %__a, %"class.std::allocator.1"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i32* %__args, i32** %3, align 8
  %4 = load %"class.std::allocator.1"** %1, align 8
  %5 = bitcast %"class.std::allocator.1"* %4 to %"class.__gnu_cxx::new_allocator.2"*
  %6 = load i32** %2, align 8
  %7 = load i32** %3, align 8
  %8 = call i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* %7) #0
  call void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.2"* %5, i32* %6, i32* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_(%"class.std::vector"* %this, i32* %__args) #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i32*, align 8
  %__len = alloca i64, align 8
  %__new_start = alloca i32*, align 8
  %__new_finish = alloca i32*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i32* %__args, i32** %2, align 8
  %3 = load %"class.std::vector"** %1
  %4 = call i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector"* %3, i64 1, i8* getelementptr inbounds ([28 x i8]* @.str2, i32 0, i32 0))
  store i64 %4, i64* %__len, align 8
  %5 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %6 = load i64* %__len, align 8
  %7 = call i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"* %5, i64 %6)
  store i32* %7, i32** %__new_start, align 8
  %8 = load i32** %__new_start, align 8
  store i32* %8, i32** %__new_finish, align 8
  %9 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %10 to %"class.std::allocator.1"*
  %12 = load i32** %__new_start, align 8
  %13 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %3) #0
  %14 = getelementptr inbounds i32* %12, i64 %13
  %15 = load i32** %2, align 8
  %16 = call i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* %15) #0
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator.1"* %11, i32* %14, i32* %16)
  store i32* null, i32** %__new_finish, align 8
  %17 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %18 = getelementptr inbounds %"struct.std::_Vector_base"* %17, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %18, i32 0, i32 0
  %20 = load i32** %19, align 8
  %21 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %22 = getelementptr inbounds %"struct.std::_Vector_base"* %21, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %22, i32 0, i32 1
  %24 = load i32** %23, align 8
  %25 = load i32** %__new_start, align 8
  %26 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %27 = call %"class.std::allocator.1"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %26) #0
  %28 = call i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %20, i32* %24, i32* %25, %"class.std::allocator.1"* %27)
  store i32* %28, i32** %__new_finish, align 8
  %29 = load i32** %__new_finish, align 8
  %30 = getelementptr inbounds i32* %29, i32 1
  store i32* %30, i32** %__new_finish, align 8
  %31 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %32 = getelementptr inbounds %"struct.std::_Vector_base"* %31, i32 0, i32 0
  %33 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %32, i32 0, i32 0
  %34 = load i32** %33, align 8
  %35 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %36 = getelementptr inbounds %"struct.std::_Vector_base"* %35, i32 0, i32 0
  %37 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %36, i32 0, i32 1
  %38 = load i32** %37, align 8
  %39 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %40 = call %"class.std::allocator.1"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %39) #0
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %34, i32* %38, %"class.std::allocator.1"* %40)
  %41 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %42 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %43 = getelementptr inbounds %"struct.std::_Vector_base"* %42, i32 0, i32 0
  %44 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %43, i32 0, i32 0
  %45 = load i32** %44, align 8
  %46 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %47 = getelementptr inbounds %"struct.std::_Vector_base"* %46, i32 0, i32 0
  %48 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %47, i32 0, i32 2
  %49 = load i32** %48, align 8
  %50 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %51 = getelementptr inbounds %"struct.std::_Vector_base"* %50, i32 0, i32 0
  %52 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %51, i32 0, i32 0
  %53 = load i32** %52, align 8
  %54 = ptrtoint i32* %49 to i64
  %55 = ptrtoint i32* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 4
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* %41, i32* %45, i64 %57)
  %58 = load i32** %__new_start, align 8
  %59 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %60 = getelementptr inbounds %"struct.std::_Vector_base"* %59, i32 0, i32 0
  %61 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %60, i32 0, i32 0
  store i32* %58, i32** %61, align 8
  %62 = load i32** %__new_finish, align 8
  %63 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %64 = getelementptr inbounds %"struct.std::_Vector_base"* %63, i32 0, i32 0
  %65 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %64, i32 0, i32 1
  store i32* %62, i32** %65, align 8
  %66 = load i32** %__new_start, align 8
  %67 = load i64* %__len, align 8
  %68 = getelementptr inbounds i32* %66, i64 %67
  %69 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %70 = getelementptr inbounds %"struct.std::_Vector_base"* %69, i32 0, i32 0
  %71 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %70, i32 0, i32 2
  store i32* %68, i32** %71, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 %__n, i8* %__s) #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %__len = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i8* %__s, i8** %3, align 8
  %5 = load %"class.std::vector"** %1
  %6 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* %5) #0
  %7 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %5) #0
  %8 = sub i64 %6, %7
  %9 = load i64* %2, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = load i8** %3, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %12) #9
  unreachable

; <label>:13                                      ; preds = %0
  %14 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %5) #0
  %15 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %5) #0
  store i64 %15, i64* %4
  %16 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %4, i64* %2)
  %17 = load i64* %16
  %18 = add i64 %14, %17
  store i64 %18, i64* %__len, align 8
  %19 = load i64* %__len, align 8
  %20 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %5) #0
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %26, label %22

; <label>:22                                      ; preds = %13
  %23 = load i64* %__len, align 8
  %24 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* %5) #0
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %22, %13
  %27 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* %5) #0
  br label %30

; <label>:28                                      ; preds = %22
  %29 = load i64* %__len, align 8
  br label %30

; <label>:30                                      ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"struct.std::_Vector_base"** %1
  %4 = load i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %7 to %"class.std::allocator.1"*
  %9 = load i64* %2, align 8
  %10 = call i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator.1"* %8, i64 %9)
  br label %12

; <label>:11                                      ; preds = %0
  br label %12

; <label>:12                                      ; preds = %11, %6
  %13 = phi i32* [ %10, %6 ], [ null, %11 ]
  ret i32* %13
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* %__t) #3 {
  %1 = alloca i32*, align 8
  store i32* %__t, i32** %1, align 8
  %2 = load i32** %1, align 8
  ret i32* %2
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %__first, i32* %__last, i32* %__result, %"class.std::allocator.1"* %__alloc) #5 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %"class.std::allocator.1"*, align 8
  %5 = alloca %"class.std::move_iterator", align 8
  %6 = alloca %"class.std::move_iterator", align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  store %"class.std::allocator.1"* %__alloc, %"class.std::allocator.1"** %4, align 8
  %7 = load i32** %1, align 8
  %8 = call i32* @_ZSt32__make_move_if_noexcept_iteratorIPiSt13move_iteratorIS0_EET0_T_(i32* %7)
  %9 = getelementptr %"class.std::move_iterator"* %5, i32 0, i32 0
  store i32* %8, i32** %9
  %10 = load i32** %2, align 8
  %11 = call i32* @_ZSt32__make_move_if_noexcept_iteratorIPiSt13move_iteratorIS0_EET0_T_(i32* %10)
  %12 = getelementptr %"class.std::move_iterator"* %6, i32 0, i32 0
  store i32* %11, i32** %12
  %13 = load i32** %3, align 8
  %14 = load %"class.std::allocator.1"** %4, align 8
  %15 = getelementptr %"class.std::move_iterator"* %5, i32 0, i32 0
  %16 = load i32** %15
  %17 = getelementptr %"class.std::move_iterator"* %6, i32 0, i32 0
  %18 = load i32** %17
  %19 = call i32* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i32* %16, i32* %18, i32* %13, %"class.std::allocator.1"* %14)
  ret i32* %19
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i32* %__first.coerce, i32* %__last.coerce, i32* %__result, %"class.std::allocator.1"*) #5 {
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %2 = alloca i32*, align 8
  %3 = alloca %"class.std::allocator.1"*, align 8
  %4 = alloca %"class.std::move_iterator", align 8
  %5 = alloca %"class.std::move_iterator", align 8
  %6 = getelementptr %"class.std::move_iterator"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %6
  %7 = getelementptr %"class.std::move_iterator"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %7
  store i32* %__result, i32** %2, align 8
  store %"class.std::allocator.1"* %0, %"class.std::allocator.1"** %3, align 8
  %8 = bitcast %"class.std::move_iterator"* %4 to i8*
  %9 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = bitcast %"class.std::move_iterator"* %5 to i8*
  %11 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %12 = load i32** %2, align 8
  %13 = getelementptr %"class.std::move_iterator"* %4, i32 0, i32 0
  %14 = load i32** %13
  %15 = getelementptr %"class.std::move_iterator"* %5, i32 0, i32 0
  %16 = load i32** %15
  %17 = call i32* @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %14, i32* %16, i32* %12)
  ret i32* %17
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt32__make_move_if_noexcept_iteratorIPiSt13move_iteratorIS0_EET0_T_(i32* %__i) #5 {
  %1 = alloca %"class.std::move_iterator", align 8
  %2 = alloca i32*, align 8
  store i32* %__i, i32** %2, align 8
  %3 = load i32** %2, align 8
  call void @_ZNSt13move_iteratorIPiEC2ES0_(%"class.std::move_iterator"* %1, i32* %3)
  %4 = getelementptr %"class.std::move_iterator"* %1, i32 0, i32 0
  %5 = load i32** %4
  ret i32* %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt13move_iteratorIPiEC2ES0_(%"class.std::move_iterator"* %this, i32* %__i) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::move_iterator"*, align 8
  %2 = alloca i32*, align 8
  store %"class.std::move_iterator"* %this, %"class.std::move_iterator"** %1, align 8
  store i32* %__i, i32** %2, align 8
  %3 = load %"class.std::move_iterator"** %1
  %4 = getelementptr inbounds %"class.std::move_iterator"* %3, i32 0, i32 0
  %5 = load i32** %2, align 8
  store i32* %5, i32** %4, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #5 {
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %1 = alloca i32*, align 8
  %__assignable = alloca i8, align 1
  %2 = alloca %"class.std::move_iterator", align 8
  %3 = alloca %"class.std::move_iterator", align 8
  %4 = getelementptr %"class.std::move_iterator"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %4
  %5 = getelementptr %"class.std::move_iterator"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %5
  store i32* %__result, i32** %1, align 8
  store i8 1, i8* %__assignable, align 1
  %6 = bitcast %"class.std::move_iterator"* %2 to i8*
  %7 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.std::move_iterator"* %3 to i8*
  %9 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i32** %1, align 8
  %11 = getelementptr %"class.std::move_iterator"* %2, i32 0, i32 0
  %12 = load i32** %11
  %13 = getelementptr %"class.std::move_iterator"* %3, i32 0, i32 0
  %14 = load i32** %13
  %15 = call i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(i32* %12, i32* %14, i32* %10)
  ret i32* %15
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #3 align 2 {
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %1 = alloca i32*, align 8
  %2 = alloca %"class.std::move_iterator", align 8
  %3 = alloca %"class.std::move_iterator", align 8
  %4 = getelementptr %"class.std::move_iterator"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %4
  %5 = getelementptr %"class.std::move_iterator"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %5
  store i32* %__result, i32** %1, align 8
  %6 = bitcast %"class.std::move_iterator"* %2 to i8*
  %7 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.std::move_iterator"* %3 to i8*
  %9 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i32** %1, align 8
  %11 = getelementptr %"class.std::move_iterator"* %2, i32 0, i32 0
  %12 = load i32** %11
  %13 = getelementptr %"class.std::move_iterator"* %3, i32 0, i32 0
  %14 = load i32** %13
  %15 = call i32* @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %12, i32* %14, i32* %10)
  ret i32* %15
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #5 {
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %1 = alloca i32*, align 8
  %2 = alloca %"class.std::move_iterator", align 8
  %3 = alloca %"class.std::move_iterator", align 8
  %4 = getelementptr %"class.std::move_iterator"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %4
  %5 = getelementptr %"class.std::move_iterator"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %5
  store i32* %__result, i32** %1, align 8
  %6 = bitcast %"class.std::move_iterator"* %2 to i8*
  %7 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = getelementptr %"class.std::move_iterator"* %2, i32 0, i32 0
  %9 = load i32** %8
  %10 = call i32* @_ZSt12__miter_baseISt13move_iteratorIPiEENSt11_Miter_baseIT_E13iterator_typeES4_(i32* %9)
  %11 = bitcast %"class.std::move_iterator"* %3 to i8*
  %12 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = getelementptr %"class.std::move_iterator"* %3, i32 0, i32 0
  %14 = load i32** %13
  %15 = call i32* @_ZSt12__miter_baseISt13move_iteratorIPiEENSt11_Miter_baseIT_E13iterator_typeES4_(i32* %14)
  %16 = load i32** %1, align 8
  %17 = call i32* @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(i32* %10, i32* %15, i32* %16)
  ret i32* %17
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #5 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  %4 = load i32** %1, align 8
  %5 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %4)
  %6 = load i32** %2, align 8
  %7 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %6)
  %8 = load i32** %3, align 8
  %9 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %8)
  %10 = call i32* @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(i32* %5, i32* %7, i32* %9)
  ret i32* %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt12__miter_baseISt13move_iteratorIPiEENSt11_Miter_baseIT_E13iterator_typeES4_(i32* %__it.coerce) #5 {
  %__it = alloca %"class.std::move_iterator", align 8
  %1 = alloca %"class.std::move_iterator", align 8
  %2 = getelementptr %"class.std::move_iterator"* %__it, i32 0, i32 0
  store i32* %__it.coerce, i32** %2
  %3 = bitcast %"class.std::move_iterator"* %1 to i8*
  %4 = bitcast %"class.std::move_iterator"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = getelementptr %"class.std::move_iterator"* %1, i32 0, i32 0
  %6 = load i32** %5
  %7 = call i32* @_ZNSt10_Iter_baseISt13move_iteratorIPiELb1EE7_S_baseES2_(i32* %6)
  ret i32* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt10_Iter_baseISt13move_iteratorIPiELb1EE7_S_baseES2_(i32* %__it.coerce) #3 align 2 {
  %__it = alloca %"class.std::move_iterator", align 8
  %1 = getelementptr %"class.std::move_iterator"* %__it, i32 0, i32 0
  store i32* %__it.coerce, i32** %1
  %2 = call i32* @_ZNKSt13move_iteratorIPiE4baseEv(%"class.std::move_iterator"* %__it)
  ret i32* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNKSt13move_iteratorIPiE4baseEv(%"class.std::move_iterator"* %this) #3 align 2 {
  %1 = alloca %"class.std::move_iterator"*, align 8
  store %"class.std::move_iterator"* %this, %"class.std::move_iterator"** %1, align 8
  %2 = load %"class.std::move_iterator"** %1
  %3 = getelementptr inbounds %"class.std::move_iterator"* %2, i32 0, i32 0
  %4 = load i32** %3, align 8
  ret i32* %4
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #5 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %__simple = alloca i8, align 1
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load i32** %1, align 8
  %5 = load i32** %2, align 8
  %6 = load i32** %3, align 8
  %7 = call i32* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %4, i32* %5, i32* %6)
  ret i32* %7
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %__it) #5 {
  %1 = alloca i32*, align 8
  store i32* %__it, i32** %1, align 8
  %2 = load i32** %1, align 8
  %3 = call i32* @_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_(i32* %2)
  ret i32* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_(i32* %__it) #3 align 2 {
  %1 = alloca i32*, align 8
  store i32* %__it, i32** %1, align 8
  %2 = load i32** %1, align 8
  ret i32* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %__first, i32* %__last, i32* %__result) #3 align 2 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %_Num = alloca i64, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  %4 = load i32** %2, align 8
  %5 = load i32** %1, align 8
  %6 = ptrtoint i32* %4 to i64
  %7 = ptrtoint i32* %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 4
  store i64 %9, i64* %_Num, align 8
  %10 = load i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %0
  %13 = load i32** %3, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = load i32** %1, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = load i64* %_Num, align 8
  %18 = mul i64 4, %17
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %14, i8* %16, i64 %18, i32 4, i1 false)
  br label %19

; <label>:19                                      ; preds = %12, %0
  %20 = load i32** %3, align 8
  %21 = load i64* %_Num, align 8
  %22 = getelementptr inbounds i32* %20, i64 %21
  ret i32* %22
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #0

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator.1"* %__a, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.1"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.1"* %__a, %"class.std::allocator.1"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.1"** %1, align 8
  %4 = bitcast %"class.std::allocator.1"* %3 to %"class.__gnu_cxx::new_allocator.2"*
  %5 = load i64* %2, align 8
  %6 = call i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.2"* %4, i64 %5, i8* null)
  ret i32* %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.2"* %this, i64 %__n, i8*) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.2"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.2"* %5) #0
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #9
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 4
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to i32*
  ret i32* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.2"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.2"** %1
  ret i64 4611686018427387903
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #7

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* %this) #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %4 = call %"class.std::allocator.1"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %3) #0
  %5 = call i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator.1"* %4) #0
  ret i64 %5
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #7

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZSt3maxImERKT_S2_S2_(i64* %__a, i64* %__b) #3 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  store i64* %__a, i64** %2, align 8
  store i64* %__b, i64** %3, align 8
  %4 = load i64** %2, align 8
  %5 = load i64* %4, align 8
  %6 = load i64** %3, align 8
  %7 = load i64* %6, align 8
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %0
  %10 = load i64** %3, align 8
  store i64* %10, i64** %1
  br label %13

; <label>:11                                      ; preds = %0
  %12 = load i64** %2, align 8
  store i64* %12, i64** %1
  br label %13

; <label>:13                                      ; preds = %11, %9
  %14 = load i64** %1
  ret i64* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator.1"* %__a) #3 align 2 {
  %1 = alloca %"class.std::allocator.1"*, align 8
  store %"class.std::allocator.1"* %__a, %"class.std::allocator.1"** %1, align 8
  %2 = load %"class.std::allocator.1"** %1, align 8
  %3 = bitcast %"class.std::allocator.1"* %2 to %"class.__gnu_cxx::new_allocator.2"*
  %4 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.2"* %3) #0
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.1"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3 to %"class.std::allocator.1"*
  ret %"class.std::allocator.1"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.2"* %this, i32* %__p, i32* %__args) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i32* %__args, i32** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.2"** %1
  %5 = load i32** %2, align 8
  %6 = bitcast i32* %5 to i8*
  %7 = icmp eq i8* %6, null
  br i1 %7, label %13, label %8

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %6 to i32*
  %10 = load i32** %3, align 8
  %11 = call i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* %10) #0
  %12 = load i32* %11
  store i32 %12, i32* %9, align 4
  br label %13

; <label>:13                                      ; preds = %8, %0
  %14 = phi i32* [ %9, %8 ], [ null, %0 ]
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EE8_M_eraseESt14_List_iteratorIS2_E(%"class.std::__cxx11::list"* %this, %"struct.std::__detail::_List_node_base"* %__position.coerce) #3 align 2 {
  %1 = alloca %"class.std::__cxx11::list"*, align 8
  %__position = alloca %"struct.std::_List_iterator", align 8
  %__n = alloca %"struct.std::_List_node.7"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %1, align 8
  %2 = getelementptr %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__position.coerce, %"struct.std::__detail::_List_node_base"** %2
  %3 = load %"class.std::__cxx11::list"** %1
  %4 = bitcast %"class.std::__cxx11::list"* %3 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE11_M_dec_sizeEm(%"class.std::__cxx11::_List_base"* %4, i64 1)
  %5 = getelementptr inbounds %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  %6 = load %"struct.std::__detail::_List_node_base"** %5, align 8
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* %6) #0
  %7 = getelementptr inbounds %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  %8 = load %"struct.std::__detail::_List_node_base"** %7, align 8
  %9 = bitcast %"struct.std::__detail::_List_node_base"* %8 to %"struct.std::_List_node.7"*
  store %"struct.std::_List_node.7"* %9, %"struct.std::_List_node.7"** %__n, align 8
  %10 = bitcast %"class.std::__cxx11::list"* %3 to %"class.std::__cxx11::_List_base"*
  %11 = call %"class.std::allocator.4"* @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %10) #0
  %12 = bitcast %"class.std::allocator.4"* %11 to %"class.__gnu_cxx::new_allocator.5"*
  %13 = load %"struct.std::_List_node.7"** %__n, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP8TreeNodeEE7destroyIS4_EEvPT_(%"class.__gnu_cxx::new_allocator.5"* %12, %"struct.std::_List_node.7"* %13)
  %14 = bitcast %"class.std::__cxx11::list"* %3 to %"class.std::__cxx11::_List_base"*
  %15 = load %"struct.std::_List_node.7"** %__n, align 8
  call void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE11_M_put_nodeEPSt10_List_nodeIS2_E(%"class.std::__cxx11::_List_base"* %14, %"struct.std::_List_node.7"* %15) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt14_List_iteratorIP8TreeNodeEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* %this, %"struct.std::__detail::_List_node_base"* %__x) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_List_iterator"*, align 8
  %2 = alloca %"struct.std::__detail::_List_node_base"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %1, align 8
  store %"struct.std::__detail::_List_node_base"* %__x, %"struct.std::__detail::_List_node_base"** %2, align 8
  %3 = load %"struct.std::_List_iterator"** %1
  %4 = getelementptr inbounds %"struct.std::_List_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"** %2, align 8
  store %"struct.std::__detail::_List_node_base"* %5, %"struct.std::__detail::_List_node_base"** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE11_M_dec_sizeEm(%"class.std::__cxx11::_List_base"* %this, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::__cxx11::_List_base"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::__cxx11::_List_base"** %1
  %4 = load i64* %2, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_List_node"* %6, i32 0, i32 1
  %8 = load i64* %7, align 8
  %9 = sub i64 %8, %4
  store i64 %9, i64* %7, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"*) #2

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EE3endEv(%"class.std::__cxx11::list"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_List_iterator", align 8
  %2 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %2, align 8
  %3 = load %"class.std::__cxx11::list"** %2
  %4 = bitcast %"class.std::__cxx11::list"* %3 to %"class.std::__cxx11::_List_base"*
  %5 = getelementptr inbounds %"class.std::__cxx11::_List_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_List_node"* %6 to %"struct.std::__detail::_List_node_base"*
  call void @_ZNSt14_List_iteratorIP8TreeNodeEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* %1, %"struct.std::__detail::_List_node_base"* %7) #0
  %8 = getelementptr %"struct.std::_List_iterator"* %1, i32 0, i32 0
  %9 = load %"struct.std::__detail::_List_node_base"** %8
  ret %"struct.std::__detail::_List_node_base"* %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIP8TreeNodeEmmEv(%"struct.std::_List_iterator"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %1, align 8
  %2 = load %"struct.std::_List_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_List_iterator"* %2, i32 0, i32 0
  %4 = load %"struct.std::__detail::_List_node_base"** %3, align 8
  %5 = getelementptr inbounds %"struct.std::__detail::_List_node_base"* %4, i32 0, i32 1
  %6 = load %"struct.std::__detail::_List_node_base"** %5, align 8
  %7 = getelementptr inbounds %"struct.std::_List_iterator"* %2, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %6, %"struct.std::__detail::_List_node_base"** %7, align 8
  ret %"struct.std::_List_iterator"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.TreeNode** @_ZNKSt14_List_iteratorIP8TreeNodeEdeEv(%"struct.std::_List_iterator"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %this, %"struct.std::_List_iterator"** %1, align 8
  %2 = load %"struct.std::_List_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_List_iterator"* %2, i32 0, i32 0
  %4 = load %"struct.std::__detail::_List_node_base"** %3, align 8
  %5 = bitcast %"struct.std::__detail::_List_node_base"* %4 to %"struct.std::_List_node.7"*
  %6 = getelementptr inbounds %"struct.std::_List_node.7"* %5, i32 0, i32 1
  ret %struct.TreeNode** %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EE9_M_insertIJRKS2_EEEvSt14_List_iteratorIS2_EDpOT_(%"class.std::__cxx11::list"* %this, %"struct.std::__detail::_List_node_base"* %__position.coerce, %struct.TreeNode** %__args) #3 align 2 {
  %1 = alloca %"class.std::__cxx11::list"*, align 8
  %__position = alloca %"struct.std::_List_iterator", align 8
  %2 = alloca %struct.TreeNode**, align 8
  %__tmp = alloca %"struct.std::_List_node.7"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %1, align 8
  %3 = getelementptr %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %__position.coerce, %"struct.std::__detail::_List_node_base"** %3
  store %struct.TreeNode** %__args, %struct.TreeNode*** %2, align 8
  %4 = load %"class.std::__cxx11::list"** %1
  %5 = load %struct.TreeNode*** %2, align 8
  %6 = call %struct.TreeNode** @_ZSt7forwardIRKP8TreeNodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.TreeNode** %5) #0
  %7 = call %"struct.std::_List_node.7"* @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EE14_M_create_nodeIJRKS2_EEEPSt10_List_nodeIS2_EDpOT_(%"class.std::__cxx11::list"* %4, %struct.TreeNode** %6)
  store %"struct.std::_List_node.7"* %7, %"struct.std::_List_node.7"** %__tmp, align 8
  %8 = load %"struct.std::_List_node.7"** %__tmp, align 8
  %9 = bitcast %"struct.std::_List_node.7"* %8 to %"struct.std::__detail::_List_node_base"*
  %10 = getelementptr inbounds %"struct.std::_List_iterator"* %__position, i32 0, i32 0
  %11 = load %"struct.std::__detail::_List_node_base"** %10, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* %9, %"struct.std::__detail::_List_node_base"* %11) #0
  %12 = bitcast %"class.std::__cxx11::list"* %4 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* %12, i64 1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_List_node.7"* @_ZNSt7__cxx114listIP8TreeNodeSaIS2_EE14_M_create_nodeIJRKS2_EEEPSt10_List_nodeIS2_EDpOT_(%"class.std::__cxx11::list"* %this, %struct.TreeNode** %__args) #3 align 2 {
  %1 = alloca %"class.std::__cxx11::list"*, align 8
  %2 = alloca %struct.TreeNode**, align 8
  %__p = alloca %"struct.std::_List_node.7"*, align 8
  store %"class.std::__cxx11::list"* %this, %"class.std::__cxx11::list"** %1, align 8
  store %struct.TreeNode** %__args, %struct.TreeNode*** %2, align 8
  %3 = load %"class.std::__cxx11::list"** %1
  %4 = bitcast %"class.std::__cxx11::list"* %3 to %"class.std::__cxx11::_List_base"*
  %5 = call %"struct.std::_List_node.7"* @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE11_M_get_nodeEv(%"class.std::__cxx11::_List_base"* %4)
  store %"struct.std::_List_node.7"* %5, %"struct.std::_List_node.7"** %__p, align 8
  %6 = bitcast %"class.std::__cxx11::list"* %3 to %"class.std::__cxx11::_List_base"*
  %7 = call %"class.std::allocator.4"* @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* %6) #0
  %8 = bitcast %"class.std::allocator.4"* %7 to %"class.__gnu_cxx::new_allocator.5"*
  %9 = load %"struct.std::_List_node.7"** %__p, align 8
  %10 = load %struct.TreeNode*** %2, align 8
  %11 = call %struct.TreeNode** @_ZSt7forwardIRKP8TreeNodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.TreeNode** %10) #0
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP8TreeNodeEE9constructIS4_JRKS3_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.5"* %8, %"struct.std::_List_node.7"* %9, %struct.TreeNode** %11)
  %12 = load %"struct.std::_List_node.7"** %__p, align 8
  ret %"struct.std::_List_node.7"* %12
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.TreeNode** @_ZSt7forwardIRKP8TreeNodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.TreeNode** %__t) #3 {
  %1 = alloca %struct.TreeNode**, align 8
  store %struct.TreeNode** %__t, %struct.TreeNode*** %1, align 8
  %2 = load %struct.TreeNode*** %1, align 8
  ret %struct.TreeNode** %2
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"*) #2

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* %this, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::__cxx11::_List_base"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::__cxx11::_List_base"** %1
  %4 = load i64* %2, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_List_node"* %6, i32 0, i32 1
  %8 = load i64* %7, align 8
  %9 = add i64 %8, %4
  store i64 %9, i64* %7, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_List_node.7"* @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE11_M_get_nodeEv(%"class.std::__cxx11::_List_base"* %this) #3 align 2 {
  %1 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %1, align 8
  %2 = load %"class.std::__cxx11::_List_base"** %1
  %3 = getelementptr inbounds %"class.std::__cxx11::_List_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %3 to %"class.std::allocator.4"*
  %5 = bitcast %"class.std::allocator.4"* %4 to %"class.__gnu_cxx::new_allocator.5"*
  %6 = call %"struct.std::_List_node.7"* @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP8TreeNodeEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.5"* %5, i64 1, i8* null)
  ret %"struct.std::_List_node.7"* %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP8TreeNodeEE9constructIS4_JRKS3_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.5"* %this, %"struct.std::_List_node.7"* %__p, %struct.TreeNode** %__args) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  %2 = alloca %"struct.std::_List_node.7"*, align 8
  %3 = alloca %struct.TreeNode**, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %1, align 8
  store %"struct.std::_List_node.7"* %__p, %"struct.std::_List_node.7"** %2, align 8
  store %struct.TreeNode** %__args, %struct.TreeNode*** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.5"** %1
  %5 = load %"struct.std::_List_node.7"** %2, align 8
  %6 = bitcast %"struct.std::_List_node.7"* %5 to i8*
  %7 = icmp eq i8* %6, null
  br i1 %7, label %12, label %8

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %6 to %"struct.std::_List_node.7"*
  %10 = load %struct.TreeNode*** %3, align 8
  %11 = call %struct.TreeNode** @_ZSt7forwardIRKP8TreeNodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.TreeNode** %10) #0
  call void @_ZNSt10_List_nodeIP8TreeNodeEC2IJRKS1_EEEDpOT_(%"struct.std::_List_node.7"* %9, %struct.TreeNode** %11)
  br label %12

; <label>:12                                      ; preds = %8, %0
  %13 = phi %"struct.std::_List_node.7"* [ %9, %8 ], [ null, %0 ]
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt10_List_nodeIP8TreeNodeEC2IJRKS1_EEEDpOT_(%"struct.std::_List_node.7"* %this, %struct.TreeNode** %__args) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_List_node.7"*, align 8
  %2 = alloca %struct.TreeNode**, align 8
  store %"struct.std::_List_node.7"* %this, %"struct.std::_List_node.7"** %1, align 8
  store %struct.TreeNode** %__args, %struct.TreeNode*** %2, align 8
  %3 = load %"struct.std::_List_node.7"** %1
  %4 = bitcast %"struct.std::_List_node.7"* %3 to %"struct.std::__detail::_List_node_base"*
  %5 = bitcast %"struct.std::__detail::_List_node_base"* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 16, i32 8, i1 false)
  %6 = getelementptr inbounds %"struct.std::_List_node.7"* %3, i32 0, i32 1
  %7 = load %struct.TreeNode*** %2, align 8
  %8 = call %struct.TreeNode** @_ZSt7forwardIRKP8TreeNodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.TreeNode** %7) #0
  %9 = load %struct.TreeNode** %8
  store %struct.TreeNode* %9, %struct.TreeNode** %6, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #0

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_List_node.7"* @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP8TreeNodeEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.5"* %this, i64 %__n, i8*) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.5"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIP8TreeNodeEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.5"* %5) #0
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #9
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 24
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %"struct.std::_List_node.7"*
  ret %"struct.std::_List_node.7"* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIP8TreeNodeEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.5"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.5"** %1
  ret i64 768614336404564650
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EEC2Ev(%"class.std::__cxx11::_List_base"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %1, align 8
  %2 = load %"class.std::__cxx11::_List_base"** %1
  %3 = getelementptr inbounds %"class.std::__cxx11::_List_base"* %2, i32 0, i32 0
  call void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE10_List_implC2Ev(%"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %3)
  call void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE7_M_initEv(%"class.std::__cxx11::_List_base"* %2) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE10_List_implC2Ev(%"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"*, align 8
  store %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %this, %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"** %1, align 8
  %2 = load %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"** %1
  %3 = bitcast %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %2 to %"class.std::allocator.4"*
  call void @_ZNSaISt10_List_nodeIP8TreeNodeEEC2Ev(%"class.std::allocator.4"* %3) #0
  %4 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %2, i32 0, i32 0
  call void @_ZNSt10_List_nodeImEC2IJEEEDpOT_(%"struct.std::_List_node"* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE7_M_initEv(%"class.std::__cxx11::_List_base"* %this) #3 align 2 {
  %1 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %1, align 8
  %2 = load %"class.std::__cxx11::_List_base"** %1
  %3 = getelementptr inbounds %"class.std::__cxx11::_List_base"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_List_node"* %4 to %"struct.std::__detail::_List_node_base"*
  %6 = getelementptr inbounds %"class.std::__cxx11::_List_base"* %2, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_List_node"* %7 to %"struct.std::__detail::_List_node_base"*
  %9 = getelementptr inbounds %"struct.std::__detail::_List_node_base"* %8, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %5, %"struct.std::__detail::_List_node_base"** %9, align 8
  %10 = getelementptr inbounds %"class.std::__cxx11::_List_base"* %2, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %10, i32 0, i32 0
  %12 = bitcast %"struct.std::_List_node"* %11 to %"struct.std::__detail::_List_node_base"*
  %13 = getelementptr inbounds %"class.std::__cxx11::_List_base"* %2, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %13, i32 0, i32 0
  %15 = bitcast %"struct.std::_List_node"* %14 to %"struct.std::__detail::_List_node_base"*
  %16 = getelementptr inbounds %"struct.std::__detail::_List_node_base"* %15, i32 0, i32 1
  store %"struct.std::__detail::_List_node_base"* %12, %"struct.std::__detail::_List_node_base"** %16, align 8
  call void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE11_M_set_sizeEm(%"class.std::__cxx11::_List_base"* %2, i64 0)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIP8TreeNodeSaIS2_EE11_M_set_sizeEm(%"class.std::__cxx11::_List_base"* %this, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::__cxx11::_List_base"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::__cxx11::_List_base"* %this, %"class.std::__cxx11::_List_base"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::__cxx11::_List_base"** %1
  %4 = load i64* %2, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::__cxx11::_List_base<TreeNode *, std::allocator<TreeNode *> >::_List_impl"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_List_node"* %6, i32 0, i32 1
  store i64 %4, i64* %7, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt10_List_nodeIP8TreeNodeEEC2Ev(%"class.std::allocator.4"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.4"* %this, %"class.std::allocator.4"** %1, align 8
  %2 = load %"class.std::allocator.4"** %1
  %3 = bitcast %"class.std::allocator.4"* %2 to %"class.__gnu_cxx::new_allocator.5"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP8TreeNodeEEC2Ev(%"class.__gnu_cxx::new_allocator.5"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt10_List_nodeImEC2IJEEEDpOT_(%"struct.std::_List_node"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_List_node"*, align 8
  store %"struct.std::_List_node"* %this, %"struct.std::_List_node"** %1, align 8
  %2 = load %"struct.std::_List_node"** %1
  %3 = bitcast %"struct.std::_List_node"* %2 to %"struct.std::__detail::_List_node_base"*
  %4 = bitcast %"struct.std::__detail::_List_node_base"* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 16, i32 8, i1 false)
  %5 = getelementptr inbounds %"struct.std::_List_node"* %2, i32 0, i32 1
  store i64 0, i64* %5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIP8TreeNodeEEC2Ev(%"class.__gnu_cxx::new_allocator.5"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.5"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2 to %"class.std::allocator.1"*
  call void @_ZNSaIiEC2Ev(%"class.std::allocator.1"* %3) #0
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2, i32 0, i32 0
  store i32* null, i32** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2, i32 0, i32 1
  store i32* null, i32** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2, i32 0, i32 2
  store i32* null, i32** %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIiEC2Ev(%"class.std::allocator.1"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.1"*, align 8
  store %"class.std::allocator.1"* %this, %"class.std::allocator.1"** %1, align 8
  %2 = load %"class.std::allocator.1"** %1
  %3 = bitcast %"class.std::allocator.1"* %2 to %"class.__gnu_cxx::new_allocator.2"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.2"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.2"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.2"*, align 8
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.2"** %1
  ret void
}

; Function Attrs: nounwind
define internal void @_GLOBAL__I_a() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { builtin }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
