; ModuleID = 'PostorderTraversals/po_03_iterative_reverse.cpp'
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
%"class.std::stack" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl" }
%"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl" = type { %struct.TreeNode***, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { %struct.TreeNode**, %struct.TreeNode**, %struct.TreeNode**, %struct.TreeNode*** }
%"class.__gnu_cxx::__normal_iterator" = type { i32* }
%"class.std::allocator.1" = type { i8 }
%"class.__gnu_cxx::new_allocator.2" = type { i8 }
%"class.std::allocator.4" = type { i8 }
%"struct.std::random_access_iterator_tag" = type { i8 }
%"class.std::move_iterator" = type { i32* }
%"class.__gnu_cxx::new_allocator.5" = type { i8 }
%"class.std::allocator.7" = type { i8 }
%"class.__gnu_cxx::new_allocator.8" = type { i8 }
%"struct.std::integral_constant" = type { i8 }
%"struct.__gnu_cxx::__allocator_always_compares_equal" = type { i8 }

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
  %stack = alloca %"class.std::stack", align 8
  %5 = alloca %"class.std::deque", align 8
  %node = alloca %struct.TreeNode*, align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %class.Solution* %this, %class.Solution** %1, align 8
  store %struct.TreeNode* %root, %struct.TreeNode** %2, align 8
  %8 = load %class.Solution** %1
  store i1 false, i1* %3
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector"* %agg.result) #0
  %9 = load %struct.TreeNode** %2, align 8
  %10 = icmp ne %struct.TreeNode* %9, null
  br i1 %10, label %12, label %11

; <label>:11                                      ; preds = %0
  store i1 true, i1* %3
  store i32 1, i32* %4
  br label %46

; <label>:12                                      ; preds = %0
  call void @_ZNSt5dequeIP8TreeNodeSaIS1_EEC2Ev(%"class.std::deque"* %5)
  call void @_ZNSt5stackIP8TreeNodeSt5dequeIS1_SaIS1_EEEC2EOS4_(%"class.std::stack"* %stack, %"class.std::deque"* %5)
  call void @_ZNSt5dequeIP8TreeNodeSaIS1_EED2Ev(%"class.std::deque"* %5) #0
  call void @_ZNSt5stackIP8TreeNodeSt5dequeIS1_SaIS1_EEE4pushERKS1_(%"class.std::stack"* %stack, %struct.TreeNode** %2)
  br label %13

; <label>:13                                      ; preds = %36, %12
  %14 = call zeroext i1 @_ZNKSt5stackIP8TreeNodeSt5dequeIS1_SaIS1_EEE5emptyEv(%"class.std::stack"* %stack)
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %37

; <label>:16                                      ; preds = %13
  %17 = call %struct.TreeNode** @_ZNSt5stackIP8TreeNodeSt5dequeIS1_SaIS1_EEE3topEv(%"class.std::stack"* %stack)
  %18 = load %struct.TreeNode** %17
  store %struct.TreeNode* %18, %struct.TreeNode** %node, align 8
  call void @_ZNSt5stackIP8TreeNodeSt5dequeIS1_SaIS1_EEE3popEv(%"class.std::stack"* %stack)
  %19 = load %struct.TreeNode** %node, align 8
  %20 = getelementptr inbounds %struct.TreeNode* %19, i32 0, i32 0
  call void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"* %agg.result, i32* %20)
  %21 = load %struct.TreeNode** %node, align 8
  %22 = getelementptr inbounds %struct.TreeNode* %21, i32 0, i32 1
  %23 = load %struct.TreeNode** %22, align 8
  %24 = icmp ne %struct.TreeNode* %23, null
  br i1 %24, label %25, label %28

; <label>:25                                      ; preds = %16
  %26 = load %struct.TreeNode** %node, align 8
  %27 = getelementptr inbounds %struct.TreeNode* %26, i32 0, i32 1
  call void @_ZNSt5stackIP8TreeNodeSt5dequeIS1_SaIS1_EEE4pushERKS1_(%"class.std::stack"* %stack, %struct.TreeNode** %27)
  br label %28

; <label>:28                                      ; preds = %25, %16
  %29 = load %struct.TreeNode** %node, align 8
  %30 = getelementptr inbounds %struct.TreeNode* %29, i32 0, i32 2
  %31 = load %struct.TreeNode** %30, align 8
  %32 = icmp ne %struct.TreeNode* %31, null
  br i1 %32, label %33, label %36

; <label>:33                                      ; preds = %28
  %34 = load %struct.TreeNode** %node, align 8
  %35 = getelementptr inbounds %struct.TreeNode* %34, i32 0, i32 2
  call void @_ZNSt5stackIP8TreeNodeSt5dequeIS1_SaIS1_EEE4pushERKS1_(%"class.std::stack"* %stack, %struct.TreeNode** %35)
  br label %36

; <label>:36                                      ; preds = %33, %28
  br label %13

; <label>:37                                      ; preds = %13
  %38 = call i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector"* %agg.result) #0
  %39 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  store i32* %38, i32** %39
  %40 = call i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector"* %agg.result) #0
  %41 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %7, i32 0, i32 0
  store i32* %40, i32** %41
  %42 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  %43 = load i32** %42
  %44 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %7, i32 0, i32 0
  %45 = load i32** %44
  call void @_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_(i32* %43, i32* %45)
  store i1 true, i1* %3
  store i32 1, i32* %4
  call void @_ZNSt5stackIP8TreeNodeSt5dequeIS1_SaIS1_EEED2Ev(%"class.std::stack"* %stack) #0
  br label %46

; <label>:46                                      ; preds = %37, %11
  %47 = load i1* %3
  br i1 %47, label %49, label %48

; <label>:48                                      ; preds = %46
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %agg.result) #0
  br label %49

; <label>:49                                      ; preds = %48, %46
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
define linkonce_odr void @_ZNSt5stackIP8TreeNodeSt5dequeIS1_SaIS1_EEEC2EOS4_(%"class.std::stack"* %this, %"class.std::deque"* %__c) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::stack"*, align 8
  %2 = alloca %"class.std::deque"*, align 8
  store %"class.std::stack"* %this, %"class.std::stack"** %1, align 8
  store %"class.std::deque"* %__c, %"class.std::deque"** %2, align 8
  %3 = load %"class.std::stack"** %1
  %4 = getelementptr inbounds %"class.std::stack"* %3, i32 0, i32 0
  %5 = load %"class.std::deque"** %2, align 8
  %6 = call %"class.std::deque"* @_ZSt4moveIRSt5dequeIP8TreeNodeSaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::deque"* %5) #0
  call void @_ZNSt5dequeIP8TreeNodeSaIS1_EEC2EOS3_(%"class.std::deque"* %4, %"class.std::deque"* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP8TreeNodeSaIS1_EEC2Ev(%"class.std::deque"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EEC2Ev(%"class.std::_Deque_base"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP8TreeNodeSaIS1_EED2Ev(%"class.std::deque"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator", align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %4 = load %"class.std::deque"** %1
  call void @_ZNSt5dequeIP8TreeNodeSaIS1_EE5beginEv(%"struct.std::_Deque_iterator"* sret %2, %"class.std::deque"* %4) #0
  call void @_ZNSt5dequeIP8TreeNodeSaIS1_EE3endEv(%"struct.std::_Deque_iterator"* sret %3, %"class.std::deque"* %4) #0
  %5 = bitcast %"class.std::deque"* %4 to %"class.std::_Deque_base"*
  %6 = call %"class.std::allocator.4"* @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %5) #0
  call void @_ZNSt5dequeIP8TreeNodeSaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_(%"class.std::deque"* %4, %"struct.std::_Deque_iterator"* %2, %"struct.std::_Deque_iterator"* %3, %"class.std::allocator.4"* %6)
  %7 = bitcast %"class.std::deque"* %4 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EED2Ev(%"class.std::_Deque_base"* %7) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5stackIP8TreeNodeSt5dequeIS1_SaIS1_EEE4pushERKS1_(%"class.std::stack"* %this, %struct.TreeNode** %__x) #3 align 2 {
  %1 = alloca %"class.std::stack"*, align 8
  %2 = alloca %struct.TreeNode**, align 8
  store %"class.std::stack"* %this, %"class.std::stack"** %1, align 8
  store %struct.TreeNode** %__x, %struct.TreeNode*** %2, align 8
  %3 = load %"class.std::stack"** %1
  %4 = getelementptr inbounds %"class.std::stack"* %3, i32 0, i32 0
  %5 = load %struct.TreeNode*** %2, align 8
  call void @_ZNSt5dequeIP8TreeNodeSaIS1_EE9push_backERKS1_(%"class.std::deque"* %4, %struct.TreeNode** %5)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt5stackIP8TreeNodeSt5dequeIS1_SaIS1_EEE5emptyEv(%"class.std::stack"* %this) #3 align 2 {
  %1 = alloca %"class.std::stack"*, align 8
  store %"class.std::stack"* %this, %"class.std::stack"** %1, align 8
  %2 = load %"class.std::stack"** %1
  %3 = getelementptr inbounds %"class.std::stack"* %2, i32 0, i32 0
  %4 = call zeroext i1 @_ZNKSt5dequeIP8TreeNodeSaIS1_EE5emptyEv(%"class.std::deque"* %3) #0
  ret i1 %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.TreeNode** @_ZNSt5stackIP8TreeNodeSt5dequeIS1_SaIS1_EEE3topEv(%"class.std::stack"* %this) #3 align 2 {
  %1 = alloca %"class.std::stack"*, align 8
  store %"class.std::stack"* %this, %"class.std::stack"** %1, align 8
  %2 = load %"class.std::stack"** %1
  %3 = getelementptr inbounds %"class.std::stack"* %2, i32 0, i32 0
  %4 = call %struct.TreeNode** @_ZNSt5dequeIP8TreeNodeSaIS1_EE4backEv(%"class.std::deque"* %3) #0
  ret %struct.TreeNode** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5stackIP8TreeNodeSt5dequeIS1_SaIS1_EEE3popEv(%"class.std::stack"* %this) #3 align 2 {
  %1 = alloca %"class.std::stack"*, align 8
  store %"class.std::stack"* %this, %"class.std::stack"** %1, align 8
  %2 = load %"class.std::stack"** %1
  %3 = getelementptr inbounds %"class.std::stack"* %2, i32 0, i32 0
  call void @_ZNSt5dequeIP8TreeNodeSaIS1_EE8pop_backEv(%"class.std::deque"* %3) #0
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
define linkonce_odr void @_ZNSt5stackIP8TreeNodeSt5dequeIS1_SaIS1_EEED2Ev(%"class.std::stack"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::stack"*, align 8
  store %"class.std::stack"* %this, %"class.std::stack"** %1, align 8
  %2 = load %"class.std::stack"** %1
  %3 = getelementptr inbounds %"class.std::stack"* %2, i32 0, i32 0
  call void @_ZNSt5dequeIP8TreeNodeSaIS1_EED2Ev(%"class.std::deque"* %3) #0
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

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt3maxImERKT_S2_S2_(i64* %__a, i64* %__b) #5 {
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
define linkonce_odr void @_ZNSt5dequeIP8TreeNodeSaIS1_EE8pop_backEv(%"class.std::deque"* %this) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %4, i32 0, i32 3
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %5, i32 0, i32 0
  %7 = load %struct.TreeNode*** %6, align 8
  %8 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %9 = getelementptr inbounds %"class.std::_Deque_base"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %9, i32 0, i32 3
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator"* %10, i32 0, i32 1
  %12 = load %struct.TreeNode*** %11, align 8
  %13 = icmp ne %struct.TreeNode** %7, %12
  br i1 %13, label %14, label %29

; <label>:14                                      ; preds = %0
  %15 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %16 = getelementptr inbounds %"class.std::_Deque_base"* %15, i32 0, i32 0
  %17 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %16, i32 0, i32 3
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator"* %17, i32 0, i32 0
  %19 = load %struct.TreeNode*** %18, align 8
  %20 = getelementptr inbounds %struct.TreeNode** %19, i32 -1
  store %struct.TreeNode** %20, %struct.TreeNode*** %18, align 8
  %21 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %22 = getelementptr inbounds %"class.std::_Deque_base"* %21, i32 0, i32 0
  %23 = bitcast %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %22 to %"class.std::allocator.4"*
  %24 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %25 = getelementptr inbounds %"class.std::_Deque_base"* %24, i32 0, i32 0
  %26 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %25, i32 0, i32 3
  %27 = getelementptr inbounds %"struct.std::_Deque_iterator"* %26, i32 0, i32 0
  %28 = load %struct.TreeNode*** %27, align 8
  call void @_ZNSt16allocator_traitsISaIP8TreeNodeEE7destroyIS1_EEvRS2_PT_(%"class.std::allocator.4"* %23, %struct.TreeNode** %28)
  br label %30

; <label>:29                                      ; preds = %0
  call void @_ZNSt5dequeIP8TreeNodeSaIS1_EE15_M_pop_back_auxEv(%"class.std::deque"* %2)
  br label %30

; <label>:30                                      ; preds = %29, %14
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIP8TreeNodeEE7destroyIS1_EEvRS2_PT_(%"class.std::allocator.4"* %__a, %struct.TreeNode** %__p) #3 align 2 {
  %1 = alloca %"class.std::allocator.4"*, align 8
  %2 = alloca %struct.TreeNode**, align 8
  store %"class.std::allocator.4"* %__a, %"class.std::allocator.4"** %1, align 8
  store %struct.TreeNode** %__p, %struct.TreeNode*** %2, align 8
  %3 = load %"class.std::allocator.4"** %1, align 8
  %4 = bitcast %"class.std::allocator.4"* %3 to %"class.__gnu_cxx::new_allocator.5"*
  %5 = load %struct.TreeNode*** %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIP8TreeNodeE7destroyIS2_EEvPT_(%"class.__gnu_cxx::new_allocator.5"* %4, %struct.TreeNode** %5)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP8TreeNodeSaIS1_EE15_M_pop_back_auxEv(%"class.std::deque"* %this) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %5 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %5, i32 0, i32 3
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator"* %6, i32 0, i32 1
  %8 = load %struct.TreeNode*** %7, align 8
  call void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE18_M_deallocate_nodeEPS1_(%"class.std::_Deque_base"* %3, %struct.TreeNode** %8) #0
  %9 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %10 = getelementptr inbounds %"class.std::_Deque_base"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %10, i32 0, i32 3
  %12 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %13 = getelementptr inbounds %"class.std::_Deque_base"* %12, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %13, i32 0, i32 3
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator"* %14, i32 0, i32 3
  %16 = load %struct.TreeNode**** %15, align 8
  %17 = getelementptr inbounds %struct.TreeNode*** %16, i64 -1
  call void @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_E11_M_set_nodeEPS3_(%"struct.std::_Deque_iterator"* %11, %struct.TreeNode*** %17) #0
  %18 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %19 = getelementptr inbounds %"class.std::_Deque_base"* %18, i32 0, i32 0
  %20 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %19, i32 0, i32 3
  %21 = getelementptr inbounds %"struct.std::_Deque_iterator"* %20, i32 0, i32 2
  %22 = load %struct.TreeNode*** %21, align 8
  %23 = getelementptr inbounds %struct.TreeNode** %22, i64 -1
  %24 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %25 = getelementptr inbounds %"class.std::_Deque_base"* %24, i32 0, i32 0
  %26 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %25, i32 0, i32 3
  %27 = getelementptr inbounds %"struct.std::_Deque_iterator"* %26, i32 0, i32 0
  store %struct.TreeNode** %23, %struct.TreeNode*** %27, align 8
  %28 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %29 = call %"class.std::allocator.4"* @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %28) #0
  %30 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %31 = getelementptr inbounds %"class.std::_Deque_base"* %30, i32 0, i32 0
  %32 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %31, i32 0, i32 3
  %33 = getelementptr inbounds %"struct.std::_Deque_iterator"* %32, i32 0, i32 0
  %34 = load %struct.TreeNode*** %33, align 8
  call void @_ZNSt16allocator_traitsISaIP8TreeNodeEE7destroyIS1_EEvRS2_PT_(%"class.std::allocator.4"* %29, %struct.TreeNode** %34)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE18_M_deallocate_nodeEPS1_(%"class.std::_Deque_base"* %this, %struct.TreeNode** %__p) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca %struct.TreeNode**, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store %struct.TreeNode** %__p, %struct.TreeNode*** %2, align 8
  %3 = load %"class.std::_Deque_base"** %1
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %4 to %"class.std::allocator.4"*
  %6 = load %struct.TreeNode*** %2, align 8
  %7 = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  call void @_ZNSt16allocator_traitsISaIP8TreeNodeEE10deallocateERS2_PS1_m(%"class.std::allocator.4"* %5, %struct.TreeNode** %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_E11_M_set_nodeEPS3_(%"struct.std::_Deque_iterator"* %this, %struct.TreeNode*** %__new_node) #3 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  %2 = alloca %struct.TreeNode***, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  store %struct.TreeNode*** %__new_node, %struct.TreeNode**** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"** %1
  %4 = load %struct.TreeNode**** %2, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 3
  store %struct.TreeNode*** %4, %struct.TreeNode**** %5, align 8
  %6 = load %struct.TreeNode**** %2, align 8
  %7 = load %struct.TreeNode*** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 1
  store %struct.TreeNode** %7, %struct.TreeNode*** %8, align 8
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 1
  %10 = load %struct.TreeNode*** %9, align 8
  %11 = call i64 @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_E14_S_buffer_sizeEv() #0
  %12 = getelementptr inbounds %struct.TreeNode** %10, i64 %11
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 2
  store %struct.TreeNode** %12, %struct.TreeNode*** %13, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.4"* @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %3 to %"class.std::allocator.4"*
  ret %"class.std::allocator.4"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_E14_S_buffer_sizeEv() #3 align 2 {
  %1 = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  ret i64 %1
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64 @_ZSt16__deque_buf_sizem(i64 %__size) #5 {
  %1 = alloca i64, align 8
  store i64 %__size, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = icmp ult i64 %2, 512
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = load i64* %1, align 8
  %6 = udiv i64 512, %5
  br label %8

; <label>:7                                       ; preds = %0
  br label %8

; <label>:8                                       ; preds = %7, %4
  %9 = phi i64 [ %6, %4 ], [ 1, %7 ]
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIP8TreeNodeEE10deallocateERS2_PS1_m(%"class.std::allocator.4"* %__a, %struct.TreeNode** %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.4"*, align 8
  %2 = alloca %struct.TreeNode**, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.4"* %__a, %"class.std::allocator.4"** %1, align 8
  store %struct.TreeNode** %__p, %struct.TreeNode*** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.4"** %1, align 8
  %5 = bitcast %"class.std::allocator.4"* %4 to %"class.__gnu_cxx::new_allocator.5"*
  %6 = load %struct.TreeNode*** %2, align 8
  %7 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIP8TreeNodeE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.5"* %5, %struct.TreeNode** %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP8TreeNodeE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.5"* %this, %struct.TreeNode** %__p, i64) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  %3 = alloca %struct.TreeNode**, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %2, align 8
  store %struct.TreeNode** %__p, %struct.TreeNode*** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.5"** %2
  %6 = load %struct.TreeNode*** %3, align 8
  %7 = bitcast %struct.TreeNode** %6 to i8*
  call void @_ZdlPv(i8* %7) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP8TreeNodeE7destroyIS2_EEvPT_(%"class.__gnu_cxx::new_allocator.5"* %this, %struct.TreeNode** %__p) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  %2 = alloca %struct.TreeNode**, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %1, align 8
  store %struct.TreeNode** %__p, %struct.TreeNode*** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.5"** %1
  %4 = load %struct.TreeNode*** %2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.TreeNode** @_ZNSt5dequeIP8TreeNodeSaIS1_EE4backEv(%"class.std::deque"* %this) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %__tmp = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  call void @_ZNSt5dequeIP8TreeNodeSaIS1_EE3endEv(%"struct.std::_Deque_iterator"* sret %__tmp, %"class.std::deque"* %2) #0
  %3 = call %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_EmmEv(%"struct.std::_Deque_iterator"* %__tmp) #0
  %4 = call %struct.TreeNode** @_ZNKSt15_Deque_iteratorIP8TreeNodeRS1_PS1_EdeEv(%"struct.std::_Deque_iterator"* %__tmp) #0
  ret %struct.TreeNode** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP8TreeNodeSaIS1_EE3endEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %4, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_EC2ERKS4_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* %5) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_EmmEv(%"struct.std::_Deque_iterator"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  %2 = load %"struct.std::_Deque_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  %4 = load %struct.TreeNode*** %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 1
  %6 = load %struct.TreeNode*** %5, align 8
  %7 = icmp eq %struct.TreeNode** %4, %6
  br i1 %7, label %8, label %15

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 3
  %10 = load %struct.TreeNode**** %9, align 8
  %11 = getelementptr inbounds %struct.TreeNode*** %10, i64 -1
  call void @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_E11_M_set_nodeEPS3_(%"struct.std::_Deque_iterator"* %2, %struct.TreeNode*** %11) #0
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 2
  %13 = load %struct.TreeNode*** %12, align 8
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  store %struct.TreeNode** %13, %struct.TreeNode*** %14, align 8
  br label %15

; <label>:15                                      ; preds = %8, %0
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  %17 = load %struct.TreeNode*** %16, align 8
  %18 = getelementptr inbounds %struct.TreeNode** %17, i32 -1
  store %struct.TreeNode** %18, %struct.TreeNode*** %16, align 8
  ret %"struct.std::_Deque_iterator"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.TreeNode** @_ZNKSt15_Deque_iteratorIP8TreeNodeRS1_PS1_EdeEv(%"struct.std::_Deque_iterator"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  %2 = load %"struct.std::_Deque_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  %4 = load %struct.TreeNode*** %3, align 8
  ret %struct.TreeNode** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_EC2ERKS4_(%"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"* %__x) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"** %1
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Deque_iterator"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %5, i32 0, i32 0
  %7 = load %struct.TreeNode*** %6, align 8
  store %struct.TreeNode** %7, %struct.TreeNode*** %4, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 1
  %9 = load %"struct.std::_Deque_iterator"** %2, align 8
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator"* %9, i32 0, i32 1
  %11 = load %struct.TreeNode*** %10, align 8
  store %struct.TreeNode** %11, %struct.TreeNode*** %8, align 8
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 2
  %13 = load %"struct.std::_Deque_iterator"** %2, align 8
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator"* %13, i32 0, i32 2
  %15 = load %struct.TreeNode*** %14, align 8
  store %struct.TreeNode** %15, %struct.TreeNode*** %12, align 8
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 3
  %17 = load %"struct.std::_Deque_iterator"** %2, align 8
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator"* %17, i32 0, i32 3
  %19 = load %struct.TreeNode**** %18, align 8
  store %struct.TreeNode*** %19, %struct.TreeNode**** %16, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt5dequeIP8TreeNodeSaIS1_EE5emptyEv(%"class.std::deque"* %this) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %4, i32 0, i32 3
  %6 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %7, i32 0, i32 2
  %9 = call zeroext i1 @_ZSteqIP8TreeNodeRS1_PS1_EbRKSt15_Deque_iteratorIT_T0_T1_ESA_(%"struct.std::_Deque_iterator"* %5, %"struct.std::_Deque_iterator"* %8) #0
  ret i1 %9
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr zeroext i1 @_ZSteqIP8TreeNodeRS1_PS1_EbRKSt15_Deque_iteratorIT_T0_T1_ESA_(%"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"* %__y) #5 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %1, align 8
  store %"struct.std::_Deque_iterator"* %__y, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"** %1, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 0
  %5 = load %struct.TreeNode*** %4, align 8
  %6 = load %"struct.std::_Deque_iterator"** %2, align 8
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator"* %6, i32 0, i32 0
  %8 = load %struct.TreeNode*** %7, align 8
  %9 = icmp eq %struct.TreeNode** %5, %8
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP8TreeNodeSaIS1_EE9push_backERKS1_(%"class.std::deque"* %this, %struct.TreeNode** %__x) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca %struct.TreeNode**, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store %struct.TreeNode** %__x, %struct.TreeNode*** %2, align 8
  %3 = load %"class.std::deque"** %1
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %5 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %5, i32 0, i32 3
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator"* %6, i32 0, i32 0
  %8 = load %struct.TreeNode*** %7, align 8
  %9 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %10 = getelementptr inbounds %"class.std::_Deque_base"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %10, i32 0, i32 3
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator"* %11, i32 0, i32 2
  %13 = load %struct.TreeNode*** %12, align 8
  %14 = getelementptr inbounds %struct.TreeNode** %13, i64 -1
  %15 = icmp ne %struct.TreeNode** %8, %14
  br i1 %15, label %16, label %32

; <label>:16                                      ; preds = %0
  %17 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %18 = getelementptr inbounds %"class.std::_Deque_base"* %17, i32 0, i32 0
  %19 = bitcast %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %18 to %"class.std::allocator.4"*
  %20 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %21 = getelementptr inbounds %"class.std::_Deque_base"* %20, i32 0, i32 0
  %22 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %21, i32 0, i32 3
  %23 = getelementptr inbounds %"struct.std::_Deque_iterator"* %22, i32 0, i32 0
  %24 = load %struct.TreeNode*** %23, align 8
  %25 = load %struct.TreeNode*** %2, align 8
  call void @_ZNSt16allocator_traitsISaIP8TreeNodeEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(%"class.std::allocator.4"* %19, %struct.TreeNode** %24, %struct.TreeNode** %25)
  %26 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %27 = getelementptr inbounds %"class.std::_Deque_base"* %26, i32 0, i32 0
  %28 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %27, i32 0, i32 3
  %29 = getelementptr inbounds %"struct.std::_Deque_iterator"* %28, i32 0, i32 0
  %30 = load %struct.TreeNode*** %29, align 8
  %31 = getelementptr inbounds %struct.TreeNode** %30, i32 1
  store %struct.TreeNode** %31, %struct.TreeNode*** %29, align 8
  br label %34

; <label>:32                                      ; preds = %0
  %33 = load %struct.TreeNode*** %2, align 8
  call void @_ZNSt5dequeIP8TreeNodeSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(%"class.std::deque"* %3, %struct.TreeNode** %33)
  br label %34

; <label>:34                                      ; preds = %32, %16
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIP8TreeNodeEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(%"class.std::allocator.4"* %__a, %struct.TreeNode** %__p, %struct.TreeNode** %__args) #3 align 2 {
  %1 = alloca %"class.std::allocator.4"*, align 8
  %2 = alloca %struct.TreeNode**, align 8
  %3 = alloca %struct.TreeNode**, align 8
  store %"class.std::allocator.4"* %__a, %"class.std::allocator.4"** %1, align 8
  store %struct.TreeNode** %__p, %struct.TreeNode*** %2, align 8
  store %struct.TreeNode** %__args, %struct.TreeNode*** %3, align 8
  %4 = load %"class.std::allocator.4"** %1, align 8
  %5 = bitcast %"class.std::allocator.4"* %4 to %"class.__gnu_cxx::new_allocator.5"*
  %6 = load %struct.TreeNode*** %2, align 8
  %7 = load %struct.TreeNode*** %3, align 8
  %8 = call %struct.TreeNode** @_ZSt7forwardIRKP8TreeNodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.TreeNode** %7) #0
  call void @_ZN9__gnu_cxx13new_allocatorIP8TreeNodeE9constructIS2_JRKS2_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.5"* %5, %struct.TreeNode** %6, %struct.TreeNode** %8)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP8TreeNodeSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(%"class.std::deque"* %this, %struct.TreeNode** %__args) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca %struct.TreeNode**, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store %struct.TreeNode** %__args, %struct.TreeNode*** %2, align 8
  %3 = load %"class.std::deque"** %1
  call void @_ZNSt5dequeIP8TreeNodeSaIS1_EE22_M_reserve_map_at_backEm(%"class.std::deque"* %3, i64 1)
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %5 = call %struct.TreeNode** @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %4)
  %6 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %7, i32 0, i32 3
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator"* %8, i32 0, i32 3
  %10 = load %struct.TreeNode**** %9, align 8
  %11 = getelementptr inbounds %struct.TreeNode*** %10, i64 1
  store %struct.TreeNode** %5, %struct.TreeNode*** %11, align 8
  %12 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %13 = getelementptr inbounds %"class.std::_Deque_base"* %12, i32 0, i32 0
  %14 = bitcast %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %13 to %"class.std::allocator.4"*
  %15 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %16 = getelementptr inbounds %"class.std::_Deque_base"* %15, i32 0, i32 0
  %17 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %16, i32 0, i32 3
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator"* %17, i32 0, i32 0
  %19 = load %struct.TreeNode*** %18, align 8
  %20 = load %struct.TreeNode*** %2, align 8
  %21 = call %struct.TreeNode** @_ZSt7forwardIRKP8TreeNodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.TreeNode** %20) #0
  call void @_ZNSt16allocator_traitsISaIP8TreeNodeEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(%"class.std::allocator.4"* %14, %struct.TreeNode** %19, %struct.TreeNode** %21)
  %22 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %23 = getelementptr inbounds %"class.std::_Deque_base"* %22, i32 0, i32 0
  %24 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %23, i32 0, i32 3
  %25 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %26 = getelementptr inbounds %"class.std::_Deque_base"* %25, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %26, i32 0, i32 3
  %28 = getelementptr inbounds %"struct.std::_Deque_iterator"* %27, i32 0, i32 3
  %29 = load %struct.TreeNode**** %28, align 8
  %30 = getelementptr inbounds %struct.TreeNode*** %29, i64 1
  call void @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_E11_M_set_nodeEPS3_(%"struct.std::_Deque_iterator"* %24, %struct.TreeNode*** %30) #0
  %31 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %32 = getelementptr inbounds %"class.std::_Deque_base"* %31, i32 0, i32 0
  %33 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %32, i32 0, i32 3
  %34 = getelementptr inbounds %"struct.std::_Deque_iterator"* %33, i32 0, i32 1
  %35 = load %struct.TreeNode*** %34, align 8
  %36 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %37 = getelementptr inbounds %"class.std::_Deque_base"* %36, i32 0, i32 0
  %38 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %37, i32 0, i32 3
  %39 = getelementptr inbounds %"struct.std::_Deque_iterator"* %38, i32 0, i32 0
  store %struct.TreeNode** %35, %struct.TreeNode*** %39, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP8TreeNodeSaIS1_EE22_M_reserve_map_at_backEm(%"class.std::deque"* %this, i64 %__nodes_to_add) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store i64 %__nodes_to_add, i64* %2, align 8
  %3 = load %"class.std::deque"** %1
  %4 = load i64* %2, align 8
  %5 = add i64 %4, 1
  %6 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %7, i32 0, i32 1
  %9 = load i64* %8, align 8
  %10 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %11 = getelementptr inbounds %"class.std::_Deque_base"* %10, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %11, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator"* %12, i32 0, i32 3
  %14 = load %struct.TreeNode**** %13, align 8
  %15 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %16 = getelementptr inbounds %"class.std::_Deque_base"* %15, i32 0, i32 0
  %17 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %16, i32 0, i32 0
  %18 = load %struct.TreeNode**** %17, align 8
  %19 = ptrtoint %struct.TreeNode*** %14 to i64
  %20 = ptrtoint %struct.TreeNode*** %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 8
  %23 = sub i64 %9, %22
  %24 = icmp ugt i64 %5, %23
  br i1 %24, label %25, label %27

; <label>:25                                      ; preds = %0
  %26 = load i64* %2, align 8
  call void @_ZNSt5dequeIP8TreeNodeSaIS1_EE17_M_reallocate_mapEmb(%"class.std::deque"* %3, i64 %26, i1 zeroext false)
  br label %27

; <label>:27                                      ; preds = %25, %0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.TreeNode** @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %3 to %"class.std::allocator.4"*
  %5 = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  %6 = call %struct.TreeNode** @_ZNSt16allocator_traitsISaIP8TreeNodeEE8allocateERS2_m(%"class.std::allocator.4"* %4, i64 %5)
  ret %struct.TreeNode** %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.TreeNode** @_ZSt7forwardIRKP8TreeNodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.TreeNode** %__t) #3 {
  %1 = alloca %struct.TreeNode**, align 8
  store %struct.TreeNode** %__t, %struct.TreeNode*** %1, align 8
  %2 = load %struct.TreeNode*** %1, align 8
  ret %struct.TreeNode** %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.TreeNode** @_ZNSt16allocator_traitsISaIP8TreeNodeEE8allocateERS2_m(%"class.std::allocator.4"* %__a, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.4"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.4"* %__a, %"class.std::allocator.4"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.4"** %1, align 8
  %4 = bitcast %"class.std::allocator.4"* %3 to %"class.__gnu_cxx::new_allocator.5"*
  %5 = load i64* %2, align 8
  %6 = call %struct.TreeNode** @_ZN9__gnu_cxx13new_allocatorIP8TreeNodeE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.5"* %4, i64 %5, i8* null)
  ret %struct.TreeNode** %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.TreeNode** @_ZN9__gnu_cxx13new_allocatorIP8TreeNodeE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.5"* %this, i64 %__n, i8*) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.5"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP8TreeNodeE8max_sizeEv(%"class.__gnu_cxx::new_allocator.5"* %5) #0
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #9
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %struct.TreeNode**
  ret %struct.TreeNode** %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIP8TreeNodeE8max_sizeEv(%"class.__gnu_cxx::new_allocator.5"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.5"** %1
  ret i64 2305843009213693951
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP8TreeNodeSaIS1_EE17_M_reallocate_mapEmb(%"class.std::deque"* %this, i64 %__nodes_to_add, i1 zeroext %__add_at_front) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %__old_num_nodes = alloca i64, align 8
  %__new_num_nodes = alloca i64, align 8
  %__new_nstart = alloca %struct.TreeNode***, align 8
  %__new_map_size = alloca i64, align 8
  %__new_map = alloca %struct.TreeNode***, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store i64 %__nodes_to_add, i64* %2, align 8
  %4 = zext i1 %__add_at_front to i8
  store i8 %4, i8* %3, align 1
  %5 = load %"class.std::deque"** %1
  %6 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %7, i32 0, i32 3
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator"* %8, i32 0, i32 3
  %10 = load %struct.TreeNode**** %9, align 8
  %11 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %12 = getelementptr inbounds %"class.std::_Deque_base"* %11, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %12, i32 0, i32 2
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator"* %13, i32 0, i32 3
  %15 = load %struct.TreeNode**** %14, align 8
  %16 = ptrtoint %struct.TreeNode*** %10 to i64
  %17 = ptrtoint %struct.TreeNode*** %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %__old_num_nodes, align 8
  %21 = load i64* %__old_num_nodes, align 8
  %22 = load i64* %2, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %__new_num_nodes, align 8
  %24 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %25 = getelementptr inbounds %"class.std::_Deque_base"* %24, i32 0, i32 0
  %26 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %25, i32 0, i32 1
  %27 = load i64* %26, align 8
  %28 = load i64* %__new_num_nodes, align 8
  %29 = mul i64 2, %28
  %30 = icmp ugt i64 %27, %29
  br i1 %30, label %31, label %90

; <label>:31                                      ; preds = %0
  %32 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %33 = getelementptr inbounds %"class.std::_Deque_base"* %32, i32 0, i32 0
  %34 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %33, i32 0, i32 0
  %35 = load %struct.TreeNode**** %34, align 8
  %36 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %37 = getelementptr inbounds %"class.std::_Deque_base"* %36, i32 0, i32 0
  %38 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %37, i32 0, i32 1
  %39 = load i64* %38, align 8
  %40 = load i64* %__new_num_nodes, align 8
  %41 = sub i64 %39, %40
  %42 = udiv i64 %41, 2
  %43 = getelementptr inbounds %struct.TreeNode*** %35, i64 %42
  %44 = load i8* %3, align 1
  %45 = trunc i8 %44 to i1
  br i1 %45, label %46, label %48

; <label>:46                                      ; preds = %31
  %47 = load i64* %2, align 8
  br label %49

; <label>:48                                      ; preds = %31
  br label %49

; <label>:49                                      ; preds = %48, %46
  %50 = phi i64 [ %47, %46 ], [ 0, %48 ]
  %51 = getelementptr inbounds %struct.TreeNode*** %43, i64 %50
  store %struct.TreeNode*** %51, %struct.TreeNode**** %__new_nstart, align 8
  %52 = load %struct.TreeNode**** %__new_nstart, align 8
  %53 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %54 = getelementptr inbounds %"class.std::_Deque_base"* %53, i32 0, i32 0
  %55 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %54, i32 0, i32 2
  %56 = getelementptr inbounds %"struct.std::_Deque_iterator"* %55, i32 0, i32 3
  %57 = load %struct.TreeNode**** %56, align 8
  %58 = icmp ult %struct.TreeNode*** %52, %57
  br i1 %58, label %59, label %73

; <label>:59                                      ; preds = %49
  %60 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %61 = getelementptr inbounds %"class.std::_Deque_base"* %60, i32 0, i32 0
  %62 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %61, i32 0, i32 2
  %63 = getelementptr inbounds %"struct.std::_Deque_iterator"* %62, i32 0, i32 3
  %64 = load %struct.TreeNode**** %63, align 8
  %65 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %66 = getelementptr inbounds %"class.std::_Deque_base"* %65, i32 0, i32 0
  %67 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %66, i32 0, i32 3
  %68 = getelementptr inbounds %"struct.std::_Deque_iterator"* %67, i32 0, i32 3
  %69 = load %struct.TreeNode**** %68, align 8
  %70 = getelementptr inbounds %struct.TreeNode*** %69, i64 1
  %71 = load %struct.TreeNode**** %__new_nstart, align 8
  %72 = call %struct.TreeNode*** @_ZSt4copyIPPP8TreeNodeS3_ET0_T_S5_S4_(%struct.TreeNode*** %64, %struct.TreeNode*** %70, %struct.TreeNode*** %71)
  br label %89

; <label>:73                                      ; preds = %49
  %74 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %75 = getelementptr inbounds %"class.std::_Deque_base"* %74, i32 0, i32 0
  %76 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %75, i32 0, i32 2
  %77 = getelementptr inbounds %"struct.std::_Deque_iterator"* %76, i32 0, i32 3
  %78 = load %struct.TreeNode**** %77, align 8
  %79 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %80 = getelementptr inbounds %"class.std::_Deque_base"* %79, i32 0, i32 0
  %81 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %80, i32 0, i32 3
  %82 = getelementptr inbounds %"struct.std::_Deque_iterator"* %81, i32 0, i32 3
  %83 = load %struct.TreeNode**** %82, align 8
  %84 = getelementptr inbounds %struct.TreeNode*** %83, i64 1
  %85 = load %struct.TreeNode**** %__new_nstart, align 8
  %86 = load i64* %__old_num_nodes, align 8
  %87 = getelementptr inbounds %struct.TreeNode*** %85, i64 %86
  %88 = call %struct.TreeNode*** @_ZSt13copy_backwardIPPP8TreeNodeS3_ET0_T_S5_S4_(%struct.TreeNode*** %78, %struct.TreeNode*** %84, %struct.TreeNode*** %87)
  br label %89

; <label>:89                                      ; preds = %73, %59
  br label %149

; <label>:90                                      ; preds = %0
  %91 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %92 = getelementptr inbounds %"class.std::_Deque_base"* %91, i32 0, i32 0
  %93 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %92, i32 0, i32 1
  %94 = load i64* %93, align 8
  %95 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %96 = getelementptr inbounds %"class.std::_Deque_base"* %95, i32 0, i32 0
  %97 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %96, i32 0, i32 1
  %98 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %97, i64* %2)
  %99 = load i64* %98
  %100 = add i64 %94, %99
  %101 = add i64 %100, 2
  store i64 %101, i64* %__new_map_size, align 8
  %102 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %103 = load i64* %__new_map_size, align 8
  %104 = call %struct.TreeNode*** @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE15_M_allocate_mapEm(%"class.std::_Deque_base"* %102, i64 %103)
  store %struct.TreeNode*** %104, %struct.TreeNode**** %__new_map, align 8
  %105 = load %struct.TreeNode**** %__new_map, align 8
  %106 = load i64* %__new_map_size, align 8
  %107 = load i64* %__new_num_nodes, align 8
  %108 = sub i64 %106, %107
  %109 = udiv i64 %108, 2
  %110 = getelementptr inbounds %struct.TreeNode*** %105, i64 %109
  %111 = load i8* %3, align 1
  %112 = trunc i8 %111 to i1
  br i1 %112, label %113, label %115

; <label>:113                                     ; preds = %90
  %114 = load i64* %2, align 8
  br label %116

; <label>:115                                     ; preds = %90
  br label %116

; <label>:116                                     ; preds = %115, %113
  %117 = phi i64 [ %114, %113 ], [ 0, %115 ]
  %118 = getelementptr inbounds %struct.TreeNode*** %110, i64 %117
  store %struct.TreeNode*** %118, %struct.TreeNode**** %__new_nstart, align 8
  %119 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %120 = getelementptr inbounds %"class.std::_Deque_base"* %119, i32 0, i32 0
  %121 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %120, i32 0, i32 2
  %122 = getelementptr inbounds %"struct.std::_Deque_iterator"* %121, i32 0, i32 3
  %123 = load %struct.TreeNode**** %122, align 8
  %124 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %125 = getelementptr inbounds %"class.std::_Deque_base"* %124, i32 0, i32 0
  %126 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %125, i32 0, i32 3
  %127 = getelementptr inbounds %"struct.std::_Deque_iterator"* %126, i32 0, i32 3
  %128 = load %struct.TreeNode**** %127, align 8
  %129 = getelementptr inbounds %struct.TreeNode*** %128, i64 1
  %130 = load %struct.TreeNode**** %__new_nstart, align 8
  %131 = call %struct.TreeNode*** @_ZSt4copyIPPP8TreeNodeS3_ET0_T_S5_S4_(%struct.TreeNode*** %123, %struct.TreeNode*** %129, %struct.TreeNode*** %130)
  %132 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %133 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %134 = getelementptr inbounds %"class.std::_Deque_base"* %133, i32 0, i32 0
  %135 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %134, i32 0, i32 0
  %136 = load %struct.TreeNode**** %135, align 8
  %137 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %138 = getelementptr inbounds %"class.std::_Deque_base"* %137, i32 0, i32 0
  %139 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %138, i32 0, i32 1
  %140 = load i64* %139, align 8
  call void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE17_M_deallocate_mapEPPS1_m(%"class.std::_Deque_base"* %132, %struct.TreeNode*** %136, i64 %140) #0
  %141 = load %struct.TreeNode**** %__new_map, align 8
  %142 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %143 = getelementptr inbounds %"class.std::_Deque_base"* %142, i32 0, i32 0
  %144 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %143, i32 0, i32 0
  store %struct.TreeNode*** %141, %struct.TreeNode**** %144, align 8
  %145 = load i64* %__new_map_size, align 8
  %146 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %147 = getelementptr inbounds %"class.std::_Deque_base"* %146, i32 0, i32 0
  %148 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %147, i32 0, i32 1
  store i64 %145, i64* %148, align 8
  br label %149

; <label>:149                                     ; preds = %116, %89
  %150 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %151 = getelementptr inbounds %"class.std::_Deque_base"* %150, i32 0, i32 0
  %152 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %151, i32 0, i32 2
  %153 = load %struct.TreeNode**** %__new_nstart, align 8
  call void @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_E11_M_set_nodeEPS3_(%"struct.std::_Deque_iterator"* %152, %struct.TreeNode*** %153) #0
  %154 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %155 = getelementptr inbounds %"class.std::_Deque_base"* %154, i32 0, i32 0
  %156 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %155, i32 0, i32 3
  %157 = load %struct.TreeNode**** %__new_nstart, align 8
  %158 = load i64* %__old_num_nodes, align 8
  %159 = getelementptr inbounds %struct.TreeNode*** %157, i64 %158
  %160 = getelementptr inbounds %struct.TreeNode*** %159, i64 -1
  call void @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_E11_M_set_nodeEPS3_(%"struct.std::_Deque_iterator"* %156, %struct.TreeNode*** %160) #0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.TreeNode*** @_ZSt4copyIPPP8TreeNodeS3_ET0_T_S5_S4_(%struct.TreeNode*** %__first, %struct.TreeNode*** %__last, %struct.TreeNode*** %__result) #5 {
  %1 = alloca %struct.TreeNode***, align 8
  %2 = alloca %struct.TreeNode***, align 8
  %3 = alloca %struct.TreeNode***, align 8
  store %struct.TreeNode*** %__first, %struct.TreeNode**** %1, align 8
  store %struct.TreeNode*** %__last, %struct.TreeNode**** %2, align 8
  store %struct.TreeNode*** %__result, %struct.TreeNode**** %3, align 8
  %4 = load %struct.TreeNode**** %1, align 8
  %5 = call %struct.TreeNode*** @_ZSt12__miter_baseIPPP8TreeNodeENSt11_Miter_baseIT_E13iterator_typeES5_(%struct.TreeNode*** %4)
  %6 = load %struct.TreeNode**** %2, align 8
  %7 = call %struct.TreeNode*** @_ZSt12__miter_baseIPPP8TreeNodeENSt11_Miter_baseIT_E13iterator_typeES5_(%struct.TreeNode*** %6)
  %8 = load %struct.TreeNode**** %3, align 8
  %9 = call %struct.TreeNode*** @_ZSt14__copy_move_a2ILb0EPPP8TreeNodeS3_ET1_T0_S5_S4_(%struct.TreeNode*** %5, %struct.TreeNode*** %7, %struct.TreeNode*** %8)
  ret %struct.TreeNode*** %9
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.TreeNode*** @_ZSt13copy_backwardIPPP8TreeNodeS3_ET0_T_S5_S4_(%struct.TreeNode*** %__first, %struct.TreeNode*** %__last, %struct.TreeNode*** %__result) #5 {
  %1 = alloca %struct.TreeNode***, align 8
  %2 = alloca %struct.TreeNode***, align 8
  %3 = alloca %struct.TreeNode***, align 8
  store %struct.TreeNode*** %__first, %struct.TreeNode**** %1, align 8
  store %struct.TreeNode*** %__last, %struct.TreeNode**** %2, align 8
  store %struct.TreeNode*** %__result, %struct.TreeNode**** %3, align 8
  %4 = load %struct.TreeNode**** %1, align 8
  %5 = call %struct.TreeNode*** @_ZSt12__miter_baseIPPP8TreeNodeENSt11_Miter_baseIT_E13iterator_typeES5_(%struct.TreeNode*** %4)
  %6 = load %struct.TreeNode**** %2, align 8
  %7 = call %struct.TreeNode*** @_ZSt12__miter_baseIPPP8TreeNodeENSt11_Miter_baseIT_E13iterator_typeES5_(%struct.TreeNode*** %6)
  %8 = load %struct.TreeNode**** %3, align 8
  %9 = call %struct.TreeNode*** @_ZSt23__copy_move_backward_a2ILb0EPPP8TreeNodeS3_ET1_T0_S5_S4_(%struct.TreeNode*** %5, %struct.TreeNode*** %7, %struct.TreeNode*** %8)
  ret %struct.TreeNode*** %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.TreeNode*** @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE15_M_allocate_mapEm(%"class.std::_Deque_base"* %this, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i64, align 8
  %__map_alloc = alloca %"class.std::allocator.7", align 1
  %3 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %4 = load %"class.std::_Deque_base"** %1
  call void @_ZNKSt11_Deque_baseIP8TreeNodeSaIS1_EE20_M_get_map_allocatorEv(%"class.std::allocator.7"* sret %__map_alloc, %"class.std::_Deque_base"* %4) #0
  %5 = load i64* %2, align 8
  %6 = call %struct.TreeNode*** @_ZNSt16allocator_traitsISaIPP8TreeNodeEE8allocateERS3_m(%"class.std::allocator.7"* %__map_alloc, i64 %5)
  store i32 1, i32* %3
  call void @_ZNSaIPP8TreeNodeED2Ev(%"class.std::allocator.7"* %__map_alloc) #0
  ret %struct.TreeNode*** %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE17_M_deallocate_mapEPPS1_m(%"class.std::_Deque_base"* %this, %struct.TreeNode*** %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca %struct.TreeNode***, align 8
  %3 = alloca i64, align 8
  %__map_alloc = alloca %"class.std::allocator.7", align 1
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store %struct.TreeNode*** %__p, %struct.TreeNode**** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::_Deque_base"** %1
  call void @_ZNKSt11_Deque_baseIP8TreeNodeSaIS1_EE20_M_get_map_allocatorEv(%"class.std::allocator.7"* sret %__map_alloc, %"class.std::_Deque_base"* %4) #0
  %5 = load %struct.TreeNode**** %2, align 8
  %6 = load i64* %3, align 8
  call void @_ZNSt16allocator_traitsISaIPP8TreeNodeEE10deallocateERS3_PS2_m(%"class.std::allocator.7"* %__map_alloc, %struct.TreeNode*** %5, i64 %6)
  call void @_ZNSaIPP8TreeNodeED2Ev(%"class.std::allocator.7"* %__map_alloc) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNKSt11_Deque_baseIP8TreeNodeSaIS1_EE20_M_get_map_allocatorEv(%"class.std::allocator.7"* noalias sret %agg.result, %"class.std::_Deque_base"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = call %"class.std::allocator.4"* @_ZNKSt11_Deque_baseIP8TreeNodeSaIS1_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %2) #0
  call void @_ZNSaIPP8TreeNodeEC2IS0_EERKSaIT_E(%"class.std::allocator.7"* %agg.result, %"class.std::allocator.4"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIPP8TreeNodeEE10deallocateERS3_PS2_m(%"class.std::allocator.7"* %__a, %struct.TreeNode*** %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.7"*, align 8
  %2 = alloca %struct.TreeNode***, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.7"* %__a, %"class.std::allocator.7"** %1, align 8
  store %struct.TreeNode*** %__p, %struct.TreeNode**** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.7"** %1, align 8
  %5 = bitcast %"class.std::allocator.7"* %4 to %"class.__gnu_cxx::new_allocator.8"*
  %6 = load %struct.TreeNode**** %2, align 8
  %7 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPP8TreeNodeE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator.8"* %5, %struct.TreeNode*** %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPP8TreeNodeED2Ev(%"class.std::allocator.7"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.7"*, align 8
  store %"class.std::allocator.7"* %this, %"class.std::allocator.7"** %1, align 8
  %2 = load %"class.std::allocator.7"** %1
  %3 = bitcast %"class.std::allocator.7"* %2 to %"class.__gnu_cxx::new_allocator.8"*
  call void @_ZN9__gnu_cxx13new_allocatorIPP8TreeNodeED2Ev(%"class.__gnu_cxx::new_allocator.8"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPP8TreeNodeED2Ev(%"class.__gnu_cxx::new_allocator.8"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.8"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPP8TreeNodeE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator.8"* %this, %struct.TreeNode*** %__p, i64) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  %3 = alloca %struct.TreeNode***, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %2, align 8
  store %struct.TreeNode*** %__p, %struct.TreeNode**** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.8"** %2
  %6 = load %struct.TreeNode**** %3, align 8
  %7 = bitcast %struct.TreeNode*** %6 to i8*
  call void @_ZdlPv(i8* %7) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPP8TreeNodeEC2IS0_EERKSaIT_E(%"class.std::allocator.7"* %this, %"class.std::allocator.4"*) unnamed_addr #3 align 2 {
  %2 = alloca %"class.std::allocator.7"*, align 8
  %3 = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.7"* %this, %"class.std::allocator.7"** %2, align 8
  store %"class.std::allocator.4"* %0, %"class.std::allocator.4"** %3, align 8
  %4 = load %"class.std::allocator.7"** %2
  %5 = bitcast %"class.std::allocator.7"* %4 to %"class.__gnu_cxx::new_allocator.8"*
  call void @_ZN9__gnu_cxx13new_allocatorIPP8TreeNodeEC2Ev(%"class.__gnu_cxx::new_allocator.8"* %5) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.4"* @_ZNKSt11_Deque_baseIP8TreeNodeSaIS1_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %3 to %"class.std::allocator.4"*
  ret %"class.std::allocator.4"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPP8TreeNodeEC2Ev(%"class.__gnu_cxx::new_allocator.8"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.8"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.TreeNode*** @_ZNSt16allocator_traitsISaIPP8TreeNodeEE8allocateERS3_m(%"class.std::allocator.7"* %__a, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.7"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.7"* %__a, %"class.std::allocator.7"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.7"** %1, align 8
  %4 = bitcast %"class.std::allocator.7"* %3 to %"class.__gnu_cxx::new_allocator.8"*
  %5 = load i64* %2, align 8
  %6 = call %struct.TreeNode*** @_ZN9__gnu_cxx13new_allocatorIPP8TreeNodeE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.8"* %4, i64 %5, i8* null)
  ret %struct.TreeNode*** %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.TreeNode*** @_ZN9__gnu_cxx13new_allocatorIPP8TreeNodeE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.8"* %this, i64 %__n, i8*) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.8"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIPP8TreeNodeE8max_sizeEv(%"class.__gnu_cxx::new_allocator.8"* %5) #0
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #9
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %struct.TreeNode***
  ret %struct.TreeNode*** %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIPP8TreeNodeE8max_sizeEv(%"class.__gnu_cxx::new_allocator.8"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.8"** %1
  ret i64 2305843009213693951
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.TreeNode*** @_ZSt23__copy_move_backward_a2ILb0EPPP8TreeNodeS3_ET1_T0_S5_S4_(%struct.TreeNode*** %__first, %struct.TreeNode*** %__last, %struct.TreeNode*** %__result) #5 {
  %1 = alloca %struct.TreeNode***, align 8
  %2 = alloca %struct.TreeNode***, align 8
  %3 = alloca %struct.TreeNode***, align 8
  store %struct.TreeNode*** %__first, %struct.TreeNode**** %1, align 8
  store %struct.TreeNode*** %__last, %struct.TreeNode**** %2, align 8
  store %struct.TreeNode*** %__result, %struct.TreeNode**** %3, align 8
  %4 = load %struct.TreeNode**** %1, align 8
  %5 = call %struct.TreeNode*** @_ZSt12__niter_baseIPPP8TreeNodeENSt11_Niter_baseIT_E13iterator_typeES5_(%struct.TreeNode*** %4)
  %6 = load %struct.TreeNode**** %2, align 8
  %7 = call %struct.TreeNode*** @_ZSt12__niter_baseIPPP8TreeNodeENSt11_Niter_baseIT_E13iterator_typeES5_(%struct.TreeNode*** %6)
  %8 = load %struct.TreeNode**** %3, align 8
  %9 = call %struct.TreeNode*** @_ZSt12__niter_baseIPPP8TreeNodeENSt11_Niter_baseIT_E13iterator_typeES5_(%struct.TreeNode*** %8)
  %10 = call %struct.TreeNode*** @_ZSt22__copy_move_backward_aILb0EPPP8TreeNodeS3_ET1_T0_S5_S4_(%struct.TreeNode*** %5, %struct.TreeNode*** %7, %struct.TreeNode*** %9)
  ret %struct.TreeNode*** %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.TreeNode*** @_ZSt12__miter_baseIPPP8TreeNodeENSt11_Miter_baseIT_E13iterator_typeES5_(%struct.TreeNode*** %__it) #5 {
  %1 = alloca %struct.TreeNode***, align 8
  store %struct.TreeNode*** %__it, %struct.TreeNode**** %1, align 8
  %2 = load %struct.TreeNode**** %1, align 8
  %3 = call %struct.TreeNode*** @_ZNSt10_Iter_baseIPPP8TreeNodeLb0EE7_S_baseES3_(%struct.TreeNode*** %2)
  ret %struct.TreeNode*** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.TreeNode*** @_ZNSt10_Iter_baseIPPP8TreeNodeLb0EE7_S_baseES3_(%struct.TreeNode*** %__it) #3 align 2 {
  %1 = alloca %struct.TreeNode***, align 8
  store %struct.TreeNode*** %__it, %struct.TreeNode**** %1, align 8
  %2 = load %struct.TreeNode**** %1, align 8
  ret %struct.TreeNode*** %2
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.TreeNode*** @_ZSt22__copy_move_backward_aILb0EPPP8TreeNodeS3_ET1_T0_S5_S4_(%struct.TreeNode*** %__first, %struct.TreeNode*** %__last, %struct.TreeNode*** %__result) #5 {
  %1 = alloca %struct.TreeNode***, align 8
  %2 = alloca %struct.TreeNode***, align 8
  %3 = alloca %struct.TreeNode***, align 8
  %__simple = alloca i8, align 1
  store %struct.TreeNode*** %__first, %struct.TreeNode**** %1, align 8
  store %struct.TreeNode*** %__last, %struct.TreeNode**** %2, align 8
  store %struct.TreeNode*** %__result, %struct.TreeNode**** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load %struct.TreeNode**** %1, align 8
  %5 = load %struct.TreeNode**** %2, align 8
  %6 = load %struct.TreeNode**** %3, align 8
  %7 = call %struct.TreeNode*** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPP8TreeNodeEEPT_PKS6_S9_S7_(%struct.TreeNode*** %4, %struct.TreeNode*** %5, %struct.TreeNode*** %6)
  ret %struct.TreeNode*** %7
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.TreeNode*** @_ZSt12__niter_baseIPPP8TreeNodeENSt11_Niter_baseIT_E13iterator_typeES5_(%struct.TreeNode*** %__it) #5 {
  %1 = alloca %struct.TreeNode***, align 8
  store %struct.TreeNode*** %__it, %struct.TreeNode**** %1, align 8
  %2 = load %struct.TreeNode**** %1, align 8
  %3 = call %struct.TreeNode*** @_ZNSt10_Iter_baseIPPP8TreeNodeLb0EE7_S_baseES3_(%struct.TreeNode*** %2)
  ret %struct.TreeNode*** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.TreeNode*** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPP8TreeNodeEEPT_PKS6_S9_S7_(%struct.TreeNode*** %__first, %struct.TreeNode*** %__last, %struct.TreeNode*** %__result) #3 align 2 {
  %1 = alloca %struct.TreeNode***, align 8
  %2 = alloca %struct.TreeNode***, align 8
  %3 = alloca %struct.TreeNode***, align 8
  %_Num = alloca i64, align 8
  store %struct.TreeNode*** %__first, %struct.TreeNode**** %1, align 8
  store %struct.TreeNode*** %__last, %struct.TreeNode**** %2, align 8
  store %struct.TreeNode*** %__result, %struct.TreeNode**** %3, align 8
  %4 = load %struct.TreeNode**** %2, align 8
  %5 = load %struct.TreeNode**** %1, align 8
  %6 = ptrtoint %struct.TreeNode*** %4 to i64
  %7 = ptrtoint %struct.TreeNode*** %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  store i64 %9, i64* %_Num, align 8
  %10 = load i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

; <label>:12                                      ; preds = %0
  %13 = load %struct.TreeNode**** %3, align 8
  %14 = load i64* %_Num, align 8
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds %struct.TreeNode*** %13, i64 %15
  %17 = bitcast %struct.TreeNode*** %16 to i8*
  %18 = load %struct.TreeNode**** %1, align 8
  %19 = bitcast %struct.TreeNode*** %18 to i8*
  %20 = load i64* %_Num, align 8
  %21 = mul i64 8, %20
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %17, i8* %19, i64 %21, i32 8, i1 false)
  br label %22

; <label>:22                                      ; preds = %12, %0
  %23 = load %struct.TreeNode**** %3, align 8
  %24 = load i64* %_Num, align 8
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds %struct.TreeNode*** %23, i64 %25
  ret %struct.TreeNode*** %26
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.TreeNode*** @_ZSt14__copy_move_a2ILb0EPPP8TreeNodeS3_ET1_T0_S5_S4_(%struct.TreeNode*** %__first, %struct.TreeNode*** %__last, %struct.TreeNode*** %__result) #5 {
  %1 = alloca %struct.TreeNode***, align 8
  %2 = alloca %struct.TreeNode***, align 8
  %3 = alloca %struct.TreeNode***, align 8
  store %struct.TreeNode*** %__first, %struct.TreeNode**** %1, align 8
  store %struct.TreeNode*** %__last, %struct.TreeNode**** %2, align 8
  store %struct.TreeNode*** %__result, %struct.TreeNode**** %3, align 8
  %4 = load %struct.TreeNode**** %1, align 8
  %5 = call %struct.TreeNode*** @_ZSt12__niter_baseIPPP8TreeNodeENSt11_Niter_baseIT_E13iterator_typeES5_(%struct.TreeNode*** %4)
  %6 = load %struct.TreeNode**** %2, align 8
  %7 = call %struct.TreeNode*** @_ZSt12__niter_baseIPPP8TreeNodeENSt11_Niter_baseIT_E13iterator_typeES5_(%struct.TreeNode*** %6)
  %8 = load %struct.TreeNode**** %3, align 8
  %9 = call %struct.TreeNode*** @_ZSt12__niter_baseIPPP8TreeNodeENSt11_Niter_baseIT_E13iterator_typeES5_(%struct.TreeNode*** %8)
  %10 = call %struct.TreeNode*** @_ZSt13__copy_move_aILb0EPPP8TreeNodeS3_ET1_T0_S5_S4_(%struct.TreeNode*** %5, %struct.TreeNode*** %7, %struct.TreeNode*** %9)
  ret %struct.TreeNode*** %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.TreeNode*** @_ZSt13__copy_move_aILb0EPPP8TreeNodeS3_ET1_T0_S5_S4_(%struct.TreeNode*** %__first, %struct.TreeNode*** %__last, %struct.TreeNode*** %__result) #5 {
  %1 = alloca %struct.TreeNode***, align 8
  %2 = alloca %struct.TreeNode***, align 8
  %3 = alloca %struct.TreeNode***, align 8
  %__simple = alloca i8, align 1
  store %struct.TreeNode*** %__first, %struct.TreeNode**** %1, align 8
  store %struct.TreeNode*** %__last, %struct.TreeNode**** %2, align 8
  store %struct.TreeNode*** %__result, %struct.TreeNode**** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load %struct.TreeNode**** %1, align 8
  %5 = load %struct.TreeNode**** %2, align 8
  %6 = load %struct.TreeNode**** %3, align 8
  %7 = call %struct.TreeNode*** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPP8TreeNodeEEPT_PKS6_S9_S7_(%struct.TreeNode*** %4, %struct.TreeNode*** %5, %struct.TreeNode*** %6)
  ret %struct.TreeNode*** %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.TreeNode*** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPP8TreeNodeEEPT_PKS6_S9_S7_(%struct.TreeNode*** %__first, %struct.TreeNode*** %__last, %struct.TreeNode*** %__result) #3 align 2 {
  %1 = alloca %struct.TreeNode***, align 8
  %2 = alloca %struct.TreeNode***, align 8
  %3 = alloca %struct.TreeNode***, align 8
  %_Num = alloca i64, align 8
  store %struct.TreeNode*** %__first, %struct.TreeNode**** %1, align 8
  store %struct.TreeNode*** %__last, %struct.TreeNode**** %2, align 8
  store %struct.TreeNode*** %__result, %struct.TreeNode**** %3, align 8
  %4 = load %struct.TreeNode**** %2, align 8
  %5 = load %struct.TreeNode**** %1, align 8
  %6 = ptrtoint %struct.TreeNode*** %4 to i64
  %7 = ptrtoint %struct.TreeNode*** %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  store i64 %9, i64* %_Num, align 8
  %10 = load i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %0
  %13 = load %struct.TreeNode**** %3, align 8
  %14 = bitcast %struct.TreeNode*** %13 to i8*
  %15 = load %struct.TreeNode**** %1, align 8
  %16 = bitcast %struct.TreeNode*** %15 to i8*
  %17 = load i64* %_Num, align 8
  %18 = mul i64 8, %17
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %14, i8* %16, i64 %18, i32 8, i1 false)
  br label %19

; <label>:19                                      ; preds = %12, %0
  %20 = load %struct.TreeNode**** %3, align 8
  %21 = load i64* %_Num, align 8
  %22 = getelementptr inbounds %struct.TreeNode*** %20, i64 %21
  ret %struct.TreeNode*** %22
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP8TreeNodeE9constructIS2_JRKS2_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.5"* %this, %struct.TreeNode** %__p, %struct.TreeNode** %__args) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  %2 = alloca %struct.TreeNode**, align 8
  %3 = alloca %struct.TreeNode**, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %1, align 8
  store %struct.TreeNode** %__p, %struct.TreeNode*** %2, align 8
  store %struct.TreeNode** %__args, %struct.TreeNode*** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.5"** %1
  %5 = load %struct.TreeNode*** %2, align 8
  %6 = bitcast %struct.TreeNode** %5 to i8*
  %7 = icmp eq i8* %6, null
  br i1 %7, label %13, label %8

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %6 to %struct.TreeNode**
  %10 = load %struct.TreeNode*** %3, align 8
  %11 = call %struct.TreeNode** @_ZSt7forwardIRKP8TreeNodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.TreeNode** %10) #0
  %12 = load %struct.TreeNode** %11
  store %struct.TreeNode* %12, %struct.TreeNode** %9, align 8
  br label %13

; <label>:13                                      ; preds = %8, %0
  %14 = phi %struct.TreeNode** [ %9, %8 ], [ null, %0 ]
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP8TreeNodeSaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_(%"class.std::deque"* %this, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"class.std::allocator.4"*) #3 align 2 {
  %2 = alloca %"class.std::deque"*, align 8
  %3 = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %2, align 8
  store %"class.std::allocator.4"* %0, %"class.std::allocator.4"** %3, align 8
  %4 = load %"class.std::deque"** %2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP8TreeNodeSaIS1_EE5beginEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %4, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_EC2ERKS4_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* %5) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EED2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %3, i32 0, i32 0
  %5 = load %struct.TreeNode**** %4, align 8
  %6 = icmp ne %struct.TreeNode*** %5, null
  br i1 %6, label %7, label %23

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %8, i32 0, i32 2
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator"* %9, i32 0, i32 3
  %11 = load %struct.TreeNode**** %10, align 8
  %12 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %12, i32 0, i32 3
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator"* %13, i32 0, i32 3
  %15 = load %struct.TreeNode**** %14, align 8
  %16 = getelementptr inbounds %struct.TreeNode*** %15, i64 1
  call void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE16_M_destroy_nodesEPPS1_S5_(%"class.std::_Deque_base"* %2, %struct.TreeNode*** %11, %struct.TreeNode*** %16) #0
  %17 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %18 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %17, i32 0, i32 0
  %19 = load %struct.TreeNode**** %18, align 8
  %20 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %20, i32 0, i32 1
  %22 = load i64* %21, align 8
  call void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE17_M_deallocate_mapEPPS1_m(%"class.std::_Deque_base"* %2, %struct.TreeNode*** %19, i64 %22) #0
  br label %23

; <label>:23                                      ; preds = %7, %0
  %24 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE11_Deque_implD2Ev(%"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %24) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE16_M_destroy_nodesEPPS1_S5_(%"class.std::_Deque_base"* %this, %struct.TreeNode*** %__nstart, %struct.TreeNode*** %__nfinish) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca %struct.TreeNode***, align 8
  %3 = alloca %struct.TreeNode***, align 8
  %__n = alloca %struct.TreeNode***, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store %struct.TreeNode*** %__nstart, %struct.TreeNode**** %2, align 8
  store %struct.TreeNode*** %__nfinish, %struct.TreeNode**** %3, align 8
  %4 = load %"class.std::_Deque_base"** %1
  %5 = load %struct.TreeNode**** %2, align 8
  store %struct.TreeNode*** %5, %struct.TreeNode**** %__n, align 8
  br label %6

; <label>:6                                       ; preds = %13, %0
  %7 = load %struct.TreeNode**** %__n, align 8
  %8 = load %struct.TreeNode**** %3, align 8
  %9 = icmp ult %struct.TreeNode*** %7, %8
  br i1 %9, label %10, label %16

; <label>:10                                      ; preds = %6
  %11 = load %struct.TreeNode**** %__n, align 8
  %12 = load %struct.TreeNode*** %11, align 8
  call void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE18_M_deallocate_nodeEPS1_(%"class.std::_Deque_base"* %4, %struct.TreeNode** %12) #0
  br label %13

; <label>:13                                      ; preds = %10
  %14 = load %struct.TreeNode**** %__n, align 8
  %15 = getelementptr inbounds %struct.TreeNode*** %14, i32 1
  store %struct.TreeNode*** %15, %struct.TreeNode**** %__n, align 8
  br label %6

; <label>:16                                      ; preds = %6
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE11_Deque_implD2Ev(%"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %this, %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"** %1, align 8
  %2 = load %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"** %1
  %3 = bitcast %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %2 to %"class.std::allocator.4"*
  call void @_ZNSaIP8TreeNodeED2Ev(%"class.std::allocator.4"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP8TreeNodeED2Ev(%"class.std::allocator.4"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.4"* %this, %"class.std::allocator.4"** %1, align 8
  %2 = load %"class.std::allocator.4"** %1
  %3 = bitcast %"class.std::allocator.4"* %2 to %"class.__gnu_cxx::new_allocator.5"*
  call void @_ZN9__gnu_cxx13new_allocatorIP8TreeNodeED2Ev(%"class.__gnu_cxx::new_allocator.5"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP8TreeNodeED2Ev(%"class.__gnu_cxx::new_allocator.5"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.5"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EEC2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE11_Deque_implC2Ev(%"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %3)
  call void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE17_M_initialize_mapEm(%"class.std::_Deque_base"* %2, i64 0)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE11_Deque_implC2Ev(%"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %this, %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"** %1, align 8
  %2 = load %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"** %1
  %3 = bitcast %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %2 to %"class.std::allocator.4"*
  call void @_ZNSaIP8TreeNodeEC2Ev(%"class.std::allocator.4"* %3) #0
  %4 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %2, i32 0, i32 0
  store %struct.TreeNode*** null, %struct.TreeNode**** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %2, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %2, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_EC2Ev(%"struct.std::_Deque_iterator"* %6) #0
  %7 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %2, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_EC2Ev(%"struct.std::_Deque_iterator"* %7) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE17_M_initialize_mapEm(%"class.std::_Deque_base"* %this, i64 %__num_elements) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i64, align 8
  %__num_nodes = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %__nstart = alloca %struct.TreeNode***, align 8
  %__nfinish = alloca %struct.TreeNode***, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store i64 %__num_elements, i64* %2, align 8
  %5 = load %"class.std::_Deque_base"** %1
  %6 = load i64* %2, align 8
  %7 = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  %8 = udiv i64 %6, %7
  %9 = add i64 %8, 1
  store i64 %9, i64* %__num_nodes, align 8
  store i64 8, i64* %3
  %10 = load i64* %__num_nodes, align 8
  %11 = add i64 %10, 2
  store i64 %11, i64* %4
  %12 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %3, i64* %4)
  %13 = load i64* %12
  %14 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %15 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %17 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %16, i32 0, i32 1
  %18 = load i64* %17, align 8
  %19 = call %struct.TreeNode*** @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE15_M_allocate_mapEm(%"class.std::_Deque_base"* %5, i64 %18)
  %20 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %20, i32 0, i32 0
  store %struct.TreeNode*** %19, %struct.TreeNode**** %21, align 8
  %22 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %22, i32 0, i32 0
  %24 = load %struct.TreeNode**** %23, align 8
  %25 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %26 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %25, i32 0, i32 1
  %27 = load i64* %26, align 8
  %28 = load i64* %__num_nodes, align 8
  %29 = sub i64 %27, %28
  %30 = udiv i64 %29, 2
  %31 = getelementptr inbounds %struct.TreeNode*** %24, i64 %30
  store %struct.TreeNode*** %31, %struct.TreeNode**** %__nstart, align 8
  %32 = load %struct.TreeNode**** %__nstart, align 8
  %33 = load i64* %__num_nodes, align 8
  %34 = getelementptr inbounds %struct.TreeNode*** %32, i64 %33
  store %struct.TreeNode*** %34, %struct.TreeNode**** %__nfinish, align 8
  %35 = load %struct.TreeNode**** %__nstart, align 8
  %36 = load %struct.TreeNode**** %__nfinish, align 8
  call void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE15_M_create_nodesEPPS1_S5_(%"class.std::_Deque_base"* %5, %struct.TreeNode*** %35, %struct.TreeNode*** %36)
  %37 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %38 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %37, i32 0, i32 2
  %39 = load %struct.TreeNode**** %__nstart, align 8
  call void @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_E11_M_set_nodeEPS3_(%"struct.std::_Deque_iterator"* %38, %struct.TreeNode*** %39) #0
  %40 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %41 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %40, i32 0, i32 3
  %42 = load %struct.TreeNode**** %__nfinish, align 8
  %43 = getelementptr inbounds %struct.TreeNode*** %42, i64 -1
  call void @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_E11_M_set_nodeEPS3_(%"struct.std::_Deque_iterator"* %41, %struct.TreeNode*** %43) #0
  %44 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %45 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %44, i32 0, i32 2
  %46 = getelementptr inbounds %"struct.std::_Deque_iterator"* %45, i32 0, i32 1
  %47 = load %struct.TreeNode*** %46, align 8
  %48 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %49 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %48, i32 0, i32 2
  %50 = getelementptr inbounds %"struct.std::_Deque_iterator"* %49, i32 0, i32 0
  store %struct.TreeNode** %47, %struct.TreeNode*** %50, align 8
  %51 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %52 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %51, i32 0, i32 3
  %53 = getelementptr inbounds %"struct.std::_Deque_iterator"* %52, i32 0, i32 1
  %54 = load %struct.TreeNode*** %53, align 8
  %55 = load i64* %2, align 8
  %56 = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  %57 = urem i64 %55, %56
  %58 = getelementptr inbounds %struct.TreeNode** %54, i64 %57
  %59 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %60 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %59, i32 0, i32 3
  %61 = getelementptr inbounds %"struct.std::_Deque_iterator"* %60, i32 0, i32 0
  store %struct.TreeNode** %58, %struct.TreeNode*** %61, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE15_M_create_nodesEPPS1_S5_(%"class.std::_Deque_base"* %this, %struct.TreeNode*** %__nstart, %struct.TreeNode*** %__nfinish) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca %struct.TreeNode***, align 8
  %3 = alloca %struct.TreeNode***, align 8
  %__cur = alloca %struct.TreeNode***, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store %struct.TreeNode*** %__nstart, %struct.TreeNode**** %2, align 8
  store %struct.TreeNode*** %__nfinish, %struct.TreeNode**** %3, align 8
  %4 = load %"class.std::_Deque_base"** %1
  %5 = load %struct.TreeNode**** %2, align 8
  store %struct.TreeNode*** %5, %struct.TreeNode**** %__cur, align 8
  br label %6

; <label>:6                                       ; preds = %13, %0
  %7 = load %struct.TreeNode**** %__cur, align 8
  %8 = load %struct.TreeNode**** %3, align 8
  %9 = icmp ult %struct.TreeNode*** %7, %8
  br i1 %9, label %10, label %16

; <label>:10                                      ; preds = %6
  %11 = call %struct.TreeNode** @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %4)
  %12 = load %struct.TreeNode**** %__cur, align 8
  store %struct.TreeNode** %11, %struct.TreeNode*** %12, align 8
  br label %13

; <label>:13                                      ; preds = %10
  %14 = load %struct.TreeNode**** %__cur, align 8
  %15 = getelementptr inbounds %struct.TreeNode*** %14, i32 1
  store %struct.TreeNode*** %15, %struct.TreeNode**** %__cur, align 8
  br label %6

; <label>:16                                      ; preds = %6
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP8TreeNodeEC2Ev(%"class.std::allocator.4"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.4"* %this, %"class.std::allocator.4"** %1, align 8
  %2 = load %"class.std::allocator.4"** %1
  %3 = bitcast %"class.std::allocator.4"* %2 to %"class.__gnu_cxx::new_allocator.5"*
  call void @_ZN9__gnu_cxx13new_allocatorIP8TreeNodeEC2Ev(%"class.__gnu_cxx::new_allocator.5"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_EC2Ev(%"struct.std::_Deque_iterator"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  %2 = load %"struct.std::_Deque_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  store %struct.TreeNode** null, %struct.TreeNode*** %3, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 1
  store %struct.TreeNode** null, %struct.TreeNode*** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 2
  store %struct.TreeNode** null, %struct.TreeNode*** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 3
  store %struct.TreeNode*** null, %struct.TreeNode**** %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP8TreeNodeEC2Ev(%"class.__gnu_cxx::new_allocator.5"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.5"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP8TreeNodeSaIS1_EEC2EOS3_(%"class.std::deque"* %this, %"class.std::deque"* %__x) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store %"class.std::deque"* %__x, %"class.std::deque"** %2, align 8
  %3 = load %"class.std::deque"** %1
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %5 = load %"class.std::deque"** %2, align 8
  %6 = call %"class.std::deque"* @_ZSt4moveIRSt5dequeIP8TreeNodeSaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::deque"* %5) #0
  %7 = bitcast %"class.std::deque"* %6 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EEC2EOS3_(%"class.std::_Deque_base"* %4, %"class.std::_Deque_base"* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::deque"* @_ZSt4moveIRSt5dequeIP8TreeNodeSaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::deque"* %__t) #3 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %__t, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1, align 8
  ret %"class.std::deque"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EEC2EOS3_(%"class.std::_Deque_base"* %this, %"class.std::_Deque_base"* %__x) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca %"class.std::_Deque_base"*, align 8
  %3 = alloca %"struct.std::integral_constant", align 1
  %4 = alloca %"struct.__gnu_cxx::__allocator_always_compares_equal", align 1
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store %"class.std::_Deque_base"* %__x, %"class.std::_Deque_base"** %2, align 8
  %5 = load %"class.std::_Deque_base"** %1
  %6 = load %"class.std::_Deque_base"** %2, align 8
  %7 = call %"class.std::_Deque_base"* @_ZSt4moveIRSt11_Deque_baseIP8TreeNodeSaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::_Deque_base"* %6) #0
  %8 = bitcast %"struct.__gnu_cxx::__allocator_always_compares_equal"* %4 to %"struct.std::integral_constant"*
  call void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EEC2EOS3_St17integral_constantIbLb1EE(%"class.std::_Deque_base"* %5, %"class.std::_Deque_base"* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EEC2EOS3_St17integral_constantIbLb1EE(%"class.std::_Deque_base"* %this, %"class.std::_Deque_base"* %__x) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca %"class.std::_Deque_base"*, align 8
  %3 = alloca %"struct.std::integral_constant", align 1
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store %"class.std::_Deque_base"* %__x, %"class.std::_Deque_base"** %2, align 8
  %4 = load %"class.std::_Deque_base"** %1
  %5 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  %6 = load %"class.std::_Deque_base"** %2, align 8
  %7 = call %"class.std::allocator.4"* @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %6) #0
  %8 = call %"class.std::allocator.4"* @_ZSt4moveIRSaIP8TreeNodeEEONSt16remove_referenceIT_E4typeEOS5_(%"class.std::allocator.4"* %7) #0
  call void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE11_Deque_implC2EOS2_(%"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %5, %"class.std::allocator.4"* %8) #0
  call void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE17_M_initialize_mapEm(%"class.std::_Deque_base"* %4, i64 0)
  %9 = load %"class.std::_Deque_base"** %2, align 8
  %10 = getelementptr inbounds %"class.std::_Deque_base"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %10, i32 0, i32 0
  %12 = load %struct.TreeNode**** %11, align 8
  %13 = icmp ne %struct.TreeNode*** %12, null
  br i1 %13, label %14, label %18

; <label>:14                                      ; preds = %0
  %15 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  %16 = load %"class.std::_Deque_base"** %2, align 8
  %17 = getelementptr inbounds %"class.std::_Deque_base"* %16, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE11_Deque_impl12_M_swap_dataERS4_(%"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %15, %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %17) #0
  br label %18

; <label>:18                                      ; preds = %14, %0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::_Deque_base"* @_ZSt4moveIRSt11_Deque_baseIP8TreeNodeSaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::_Deque_base"* %__t) #3 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %__t, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1, align 8
  ret %"class.std::_Deque_base"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE11_Deque_implC2EOS2_(%"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %this, %"class.std::allocator.4"* %__a) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"*, align 8
  %2 = alloca %"class.std::allocator.4"*, align 8
  store %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %this, %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"** %1, align 8
  store %"class.std::allocator.4"* %__a, %"class.std::allocator.4"** %2, align 8
  %3 = load %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"** %1
  %4 = bitcast %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %3 to %"class.std::allocator.4"*
  %5 = load %"class.std::allocator.4"** %2, align 8
  %6 = call %"class.std::allocator.4"* @_ZSt4moveIRSaIP8TreeNodeEEONSt16remove_referenceIT_E4typeEOS5_(%"class.std::allocator.4"* %5) #0
  call void @_ZNSaIP8TreeNodeEC2ERKS1_(%"class.std::allocator.4"* %4, %"class.std::allocator.4"* %6) #0
  %7 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %3, i32 0, i32 0
  store %struct.TreeNode*** null, %struct.TreeNode**** %7, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %3, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %3, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_EC2Ev(%"struct.std::_Deque_iterator"* %9) #0
  %10 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %3, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_EC2Ev(%"struct.std::_Deque_iterator"* %10) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.4"* @_ZSt4moveIRSaIP8TreeNodeEEONSt16remove_referenceIT_E4typeEOS5_(%"class.std::allocator.4"* %__t) #3 {
  %1 = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.4"* %__t, %"class.std::allocator.4"** %1, align 8
  %2 = load %"class.std::allocator.4"** %1, align 8
  ret %"class.std::allocator.4"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP8TreeNodeSaIS1_EE11_Deque_impl12_M_swap_dataERS4_(%"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %this, %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"*, align 8
  %2 = alloca %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %this, %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"** %1, align 8
  store %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %__x, %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"** %2, align 8
  %3 = load %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"** %1
  %4 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %3, i32 0, i32 2
  %5 = load %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %5, i32 0, i32 2
  call void @_ZSt4swapISt15_Deque_iteratorIP8TreeNodeRS2_PS2_EEvRT_S7_(%"struct.std::_Deque_iterator"* %4, %"struct.std::_Deque_iterator"* %6) #0
  %7 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %3, i32 0, i32 3
  %8 = load %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"** %2, align 8
  %9 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %8, i32 0, i32 3
  call void @_ZSt4swapISt15_Deque_iteratorIP8TreeNodeRS2_PS2_EEvRT_S7_(%"struct.std::_Deque_iterator"* %7, %"struct.std::_Deque_iterator"* %9) #0
  %10 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %3, i32 0, i32 0
  %11 = load %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"** %2, align 8
  %12 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %11, i32 0, i32 0
  call void @_ZSt4swapIPPP8TreeNodeEvRT_S5_(%struct.TreeNode**** %10, %struct.TreeNode**** %12) #0
  %13 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %3, i32 0, i32 1
  %14 = load %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"** %2, align 8
  %15 = getelementptr inbounds %"struct.std::_Deque_base<TreeNode *, std::allocator<TreeNode *> >::_Deque_impl"* %14, i32 0, i32 1
  call void @_ZSt4swapImEvRT_S1_(i64* %13, i64* %15) #0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt4swapISt15_Deque_iteratorIP8TreeNodeRS2_PS2_EEvRT_S7_(%"struct.std::_Deque_iterator"* %__a, %"struct.std::_Deque_iterator"* %__b) #5 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  %__tmp = alloca %"struct.std::_Deque_iterator", align 8
  store %"struct.std::_Deque_iterator"* %__a, %"struct.std::_Deque_iterator"** %1, align 8
  store %"struct.std::_Deque_iterator"* %__b, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"** %1, align 8
  %4 = call %"struct.std::_Deque_iterator"* @_ZSt4moveIRSt15_Deque_iteratorIP8TreeNodeRS2_PS2_EEONSt16remove_referenceIT_E4typeEOS8_(%"struct.std::_Deque_iterator"* %3) #0
  call void @_ZNSt15_Deque_iteratorIP8TreeNodeRS1_PS1_EC2ERKS4_(%"struct.std::_Deque_iterator"* %__tmp, %"struct.std::_Deque_iterator"* %4) #0
  %5 = load %"struct.std::_Deque_iterator"** %1, align 8
  %6 = load %"struct.std::_Deque_iterator"** %2, align 8
  %7 = call %"struct.std::_Deque_iterator"* @_ZSt4moveIRSt15_Deque_iteratorIP8TreeNodeRS2_PS2_EEONSt16remove_referenceIT_E4typeEOS8_(%"struct.std::_Deque_iterator"* %6) #0
  %8 = bitcast %"struct.std::_Deque_iterator"* %5 to i8*
  %9 = bitcast %"struct.std::_Deque_iterator"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  %10 = load %"struct.std::_Deque_iterator"** %2, align 8
  %11 = call %"struct.std::_Deque_iterator"* @_ZSt4moveIRSt15_Deque_iteratorIP8TreeNodeRS2_PS2_EEONSt16remove_referenceIT_E4typeEOS8_(%"struct.std::_Deque_iterator"* %__tmp) #0
  %12 = bitcast %"struct.std::_Deque_iterator"* %10 to i8*
  %13 = bitcast %"struct.std::_Deque_iterator"* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt4swapIPPP8TreeNodeEvRT_S5_(%struct.TreeNode**** %__a, %struct.TreeNode**** %__b) #5 {
  %1 = alloca %struct.TreeNode****, align 8
  %2 = alloca %struct.TreeNode****, align 8
  %__tmp = alloca %struct.TreeNode***, align 8
  store %struct.TreeNode**** %__a, %struct.TreeNode***** %1, align 8
  store %struct.TreeNode**** %__b, %struct.TreeNode***** %2, align 8
  %3 = load %struct.TreeNode***** %1, align 8
  %4 = call %struct.TreeNode**** @_ZSt4moveIRPPP8TreeNodeEONSt16remove_referenceIT_E4typeEOS6_(%struct.TreeNode**** %3) #0
  %5 = load %struct.TreeNode**** %4
  store %struct.TreeNode*** %5, %struct.TreeNode**** %__tmp, align 8
  %6 = load %struct.TreeNode***** %2, align 8
  %7 = call %struct.TreeNode**** @_ZSt4moveIRPPP8TreeNodeEONSt16remove_referenceIT_E4typeEOS6_(%struct.TreeNode**** %6) #0
  %8 = load %struct.TreeNode**** %7
  %9 = load %struct.TreeNode***** %1, align 8
  store %struct.TreeNode*** %8, %struct.TreeNode**** %9, align 8
  %10 = call %struct.TreeNode**** @_ZSt4moveIRPPP8TreeNodeEONSt16remove_referenceIT_E4typeEOS6_(%struct.TreeNode**** %__tmp) #0
  %11 = load %struct.TreeNode**** %10
  %12 = load %struct.TreeNode***** %2, align 8
  store %struct.TreeNode*** %11, %struct.TreeNode**** %12, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt4swapImEvRT_S1_(i64* %__a, i64* %__b) #5 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %__tmp = alloca i64, align 8
  store i64* %__a, i64** %1, align 8
  store i64* %__b, i64** %2, align 8
  %3 = load i64** %1, align 8
  %4 = call i64* @_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_(i64* %3) #0
  %5 = load i64* %4
  store i64 %5, i64* %__tmp, align 8
  %6 = load i64** %2, align 8
  %7 = call i64* @_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_(i64* %6) #0
  %8 = load i64* %7
  %9 = load i64** %1, align 8
  store i64 %8, i64* %9, align 8
  %10 = call i64* @_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_(i64* %__tmp) #0
  %11 = load i64* %10
  %12 = load i64** %2, align 8
  store i64 %11, i64* %12, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_(i64* %__t) #3 {
  %1 = alloca i64*, align 8
  store i64* %__t, i64** %1, align 8
  %2 = load i64** %1, align 8
  ret i64* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.TreeNode**** @_ZSt4moveIRPPP8TreeNodeEONSt16remove_referenceIT_E4typeEOS6_(%struct.TreeNode**** %__t) #3 {
  %1 = alloca %struct.TreeNode****, align 8
  store %struct.TreeNode**** %__t, %struct.TreeNode***** %1, align 8
  %2 = load %struct.TreeNode***** %1, align 8
  ret %struct.TreeNode**** %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Deque_iterator"* @_ZSt4moveIRSt15_Deque_iteratorIP8TreeNodeRS2_PS2_EEONSt16remove_referenceIT_E4typeEOS8_(%"struct.std::_Deque_iterator"* %__t) #3 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %__t, %"struct.std::_Deque_iterator"** %1, align 8
  %2 = load %"struct.std::_Deque_iterator"** %1, align 8
  ret %"struct.std::_Deque_iterator"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP8TreeNodeEC2ERKS1_(%"class.std::allocator.4"* %this, %"class.std::allocator.4"* %__a) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.4"*, align 8
  %2 = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.4"* %this, %"class.std::allocator.4"** %1, align 8
  store %"class.std::allocator.4"* %__a, %"class.std::allocator.4"** %2, align 8
  %3 = load %"class.std::allocator.4"** %1
  %4 = bitcast %"class.std::allocator.4"* %3 to %"class.__gnu_cxx::new_allocator.5"*
  %5 = load %"class.std::allocator.4"** %2, align 8
  %6 = bitcast %"class.std::allocator.4"* %5 to %"class.__gnu_cxx::new_allocator.5"*
  call void @_ZN9__gnu_cxx13new_allocatorIP8TreeNodeEC2ERKS3_(%"class.__gnu_cxx::new_allocator.5"* %4, %"class.__gnu_cxx::new_allocator.5"* %6) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP8TreeNodeEC2ERKS3_(%"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"*) unnamed_addr #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  %3 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %2, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %0, %"class.__gnu_cxx::new_allocator.5"** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.5"** %2
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
