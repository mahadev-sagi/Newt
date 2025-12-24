; ModuleID = 'InorderTraversals/in_28_random_walk.cpp'
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
%struct.Node = type { i32, %struct.Node*, %struct.Node*, %struct.Node* }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" = type { i32*, i32*, i32* }
%"class.std::set" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl" }
%"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl" = type { %"struct.std::less", %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Rb_tree_const_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"struct.std::pair" = type { %"struct.std::_Rb_tree_const_iterator", i8 }
%"struct.std::_Rb_tree_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"class.std::allocator" = type { i8 }
%"struct.std::pair.7" = type { %"struct.std::_Rb_tree_iterator", i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.3" = type { i8 }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, i8*, i64, i8, i8, i8, i8, i8*, i8*, i8, %"class.std::codecvt"*, i8*, i64, i8*, i8* }
%union.pthread_mutex_t = type { %"struct.<anonymous union>::__pthread_mutex_s" }
%"struct.<anonymous union>::__pthread_mutex_s" = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%"class.std::__basic_file" = type { %struct._IO_FILE*, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__mbstate_t = type { i32, %union.anon.6 }
%union.anon.6 = type { i32 }
%"class.std::codecvt" = type { %"class.std::__codecvt_abstract_base", %struct.__locale_struct* }
%"class.std::__codecvt_abstract_base" = type { %"class.std::locale::facet" }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"struct.std::pair.8" = type { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Identity" = type { i8 }
%"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node" = type { %"class.std::_Rb_tree"* }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [8 x i8] }
%"class.std::allocator.0" = type { i8 }
%"class.__gnu_cxx::new_allocator.1" = type { i8 }
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
define void @_Z18in_order_traversalP4NodeRSt6vectorIiSaIiEE(%struct.Node* %root, %"class.std::vector"* %result) #3 {
  %1 = alloca %struct.Node*, align 8
  %2 = alloca %"class.std::vector"*, align 8
  %visited = alloca %"class.std::set", align 8
  %left_done = alloca %"class.std::set", align 8
  %curr = alloca %struct.Node*, align 8
  %steps = alloca i32, align 4
  %max_steps = alloca i32, align 4
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %5 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %6 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %7 = alloca %"struct.std::pair", align 8
  %8 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %9 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %10 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %11 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %12 = alloca %"struct.std::pair", align 8
  %13 = alloca %"struct.std::pair", align 8
  %14 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %15 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %16 = alloca %"struct.std::pair", align 8
  store %struct.Node* %root, %struct.Node** %1, align 8
  store %"class.std::vector"* %result, %"class.std::vector"** %2, align 8
  %17 = load %struct.Node** %1, align 8
  %18 = icmp ne %struct.Node* %17, null
  br i1 %18, label %20, label %19

; <label>:19                                      ; preds = %0
  br label %148

; <label>:20                                      ; preds = %0
  call void @_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EEC2Ev(%"class.std::set"* %visited) #0
  call void @_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EEC2Ev(%"class.std::set"* %left_done) #0
  %21 = load %struct.Node** %1, align 8
  store %struct.Node* %21, %struct.Node** %curr, align 8
  store i32 0, i32* %steps, align 4
  store i32 1000000, i32* %max_steps, align 4
  br label %22

; <label>:22                                      ; preds = %146, %43, %20
  %23 = load %struct.Node** %curr, align 8
  %24 = icmp ne %struct.Node* %23, null
  br i1 %24, label %25, label %30

; <label>:25                                      ; preds = %22
  %26 = load i32* %steps, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %steps, align 4
  %28 = load i32* %max_steps, align 4
  %29 = icmp slt i32 %26, %28
  br label %30

; <label>:30                                      ; preds = %25, %22
  %31 = phi i1 [ false, %22 ], [ %29, %25 ]
  br i1 %31, label %32, label %147

; <label>:32                                      ; preds = %30
  %33 = load %struct.Node** %curr, align 8
  %34 = getelementptr inbounds %struct.Node* %33, i32 0, i32 1
  %35 = load %struct.Node** %34, align 8
  %36 = icmp ne %struct.Node* %35, null
  br i1 %36, label %37, label %47

; <label>:37                                      ; preds = %32
  %38 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE4findERKS1_(%"class.std::set"* %left_done, %struct.Node** %curr)
  %39 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %38, %"struct.std::_Rb_tree_node_base"** %39
  %40 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIP4NodeSt4lessIS1_ESaIS1_EE3endEv(%"class.std::set"* %left_done) #0
  %41 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %4, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %40, %"struct.std::_Rb_tree_node_base"** %41
  %42 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIP4NodeEeqERKS2_(%"struct.std::_Rb_tree_const_iterator"* %3, %"struct.std::_Rb_tree_const_iterator"* %4) #0
  br i1 %42, label %43, label %47

; <label>:43                                      ; preds = %37
  %44 = load %struct.Node** %curr, align 8
  %45 = getelementptr inbounds %struct.Node* %44, i32 0, i32 1
  %46 = load %struct.Node** %45, align 8
  store %struct.Node* %46, %struct.Node** %curr, align 8
  br label %22

; <label>:47                                      ; preds = %37, %32
  %48 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE4findERKS1_(%"class.std::set"* %visited, %struct.Node** %curr)
  %49 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %5, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %48, %"struct.std::_Rb_tree_node_base"** %49
  %50 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIP4NodeSt4lessIS1_ESaIS1_EE3endEv(%"class.std::set"* %visited) #0
  %51 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %6, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %50, %"struct.std::_Rb_tree_node_base"** %51
  %52 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIP4NodeEeqERKS2_(%"struct.std::_Rb_tree_const_iterator"* %5, %"struct.std::_Rb_tree_const_iterator"* %6) #0
  br i1 %52, label %53, label %63

; <label>:53                                      ; preds = %47
  %54 = load %"class.std::vector"** %2, align 8
  %55 = load %struct.Node** %curr, align 8
  %56 = getelementptr inbounds %struct.Node* %55, i32 0, i32 0
  call void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"* %54, i32* %56)
  %57 = call { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertERKS1_(%"class.std::set"* %visited, %struct.Node** %curr)
  %58 = bitcast %"struct.std::pair"* %7 to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %59 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %58, i32 0, i32 0
  %60 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %57, 0
  store %"struct.std::_Rb_tree_node_base"* %60, %"struct.std::_Rb_tree_node_base"** %59, align 1
  %61 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %58, i32 0, i32 1
  %62 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %57, 1
  store i8 %62, i8* %61, align 1
  br label %63

; <label>:63                                      ; preds = %53, %47
  %64 = load %struct.Node** %curr, align 8
  %65 = getelementptr inbounds %struct.Node* %64, i32 0, i32 1
  %66 = load %struct.Node** %65, align 8
  %67 = icmp ne %struct.Node* %66, null
  br i1 %67, label %68, label %78

; <label>:68                                      ; preds = %63
  %69 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE4findERKS1_(%"class.std::set"* %left_done, %struct.Node** %curr)
  %70 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %8, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %69, %"struct.std::_Rb_tree_node_base"** %70
  %71 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIP4NodeSt4lessIS1_ESaIS1_EE3endEv(%"class.std::set"* %left_done) #0
  %72 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %9, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %71, %"struct.std::_Rb_tree_node_base"** %72
  %73 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIP4NodeEeqERKS2_(%"struct.std::_Rb_tree_const_iterator"* %8, %"struct.std::_Rb_tree_const_iterator"* %9) #0
  br i1 %73, label %74, label %78

; <label>:74                                      ; preds = %68
  %75 = load %struct.Node** %curr, align 8
  %76 = getelementptr inbounds %struct.Node* %75, i32 0, i32 1
  %77 = load %struct.Node** %76, align 8
  store %struct.Node* %77, %struct.Node** %curr, align 8
  br label %146

; <label>:78                                      ; preds = %68, %63
  %79 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE4findERKS1_(%"class.std::set"* %visited, %struct.Node** %curr)
  %80 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %10, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %79, %"struct.std::_Rb_tree_node_base"** %80
  %81 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIP4NodeSt4lessIS1_ESaIS1_EE3endEv(%"class.std::set"* %visited) #0
  %82 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %11, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %81, %"struct.std::_Rb_tree_node_base"** %82
  %83 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIP4NodeEeqERKS2_(%"struct.std::_Rb_tree_const_iterator"* %10, %"struct.std::_Rb_tree_const_iterator"* %11) #0
  br i1 %83, label %84, label %100

; <label>:84                                      ; preds = %78
  %85 = load %"class.std::vector"** %2, align 8
  %86 = load %struct.Node** %curr, align 8
  %87 = getelementptr inbounds %struct.Node* %86, i32 0, i32 0
  call void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"* %85, i32* %87)
  %88 = call { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertERKS1_(%"class.std::set"* %visited, %struct.Node** %curr)
  %89 = bitcast %"struct.std::pair"* %12 to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %90 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %89, i32 0, i32 0
  %91 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %88, 0
  store %"struct.std::_Rb_tree_node_base"* %91, %"struct.std::_Rb_tree_node_base"** %90, align 1
  %92 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %89, i32 0, i32 1
  %93 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %88, 1
  store i8 %93, i8* %92, align 1
  %94 = call { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertERKS1_(%"class.std::set"* %left_done, %struct.Node** %curr)
  %95 = bitcast %"struct.std::pair"* %13 to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %96 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %95, i32 0, i32 0
  %97 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %94, 0
  store %"struct.std::_Rb_tree_node_base"* %97, %"struct.std::_Rb_tree_node_base"** %96, align 1
  %98 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %95, i32 0, i32 1
  %99 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %94, 1
  store i8 %99, i8* %98, align 1
  br label %145

; <label>:100                                     ; preds = %78
  %101 = load %struct.Node** %curr, align 8
  %102 = getelementptr inbounds %struct.Node* %101, i32 0, i32 2
  %103 = load %struct.Node** %102, align 8
  %104 = icmp ne %struct.Node* %103, null
  br i1 %104, label %105, label %117

; <label>:105                                     ; preds = %100
  %106 = load %struct.Node** %curr, align 8
  %107 = getelementptr inbounds %struct.Node* %106, i32 0, i32 2
  %108 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE4findERKS1_(%"class.std::set"* %visited, %struct.Node** %107)
  %109 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %14, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %108, %"struct.std::_Rb_tree_node_base"** %109
  %110 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIP4NodeSt4lessIS1_ESaIS1_EE3endEv(%"class.std::set"* %visited) #0
  %111 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %15, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %110, %"struct.std::_Rb_tree_node_base"** %111
  %112 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIP4NodeEeqERKS2_(%"struct.std::_Rb_tree_const_iterator"* %14, %"struct.std::_Rb_tree_const_iterator"* %15) #0
  br i1 %112, label %113, label %117

; <label>:113                                     ; preds = %105
  %114 = load %struct.Node** %curr, align 8
  %115 = getelementptr inbounds %struct.Node* %114, i32 0, i32 2
  %116 = load %struct.Node** %115, align 8
  store %struct.Node* %116, %struct.Node** %curr, align 8
  br label %144

; <label>:117                                     ; preds = %105, %100
  %118 = load %struct.Node** %curr, align 8
  %119 = getelementptr inbounds %struct.Node* %118, i32 0, i32 3
  %120 = load %struct.Node** %119, align 8
  %121 = icmp ne %struct.Node* %120, null
  br i1 %121, label %123, label %122

; <label>:122                                     ; preds = %117
  br label %147

; <label>:123                                     ; preds = %117
  %124 = load %struct.Node** %curr, align 8
  %125 = getelementptr inbounds %struct.Node* %124, i32 0, i32 3
  %126 = load %struct.Node** %125, align 8
  %127 = getelementptr inbounds %struct.Node* %126, i32 0, i32 1
  %128 = load %struct.Node** %127, align 8
  %129 = load %struct.Node** %curr, align 8
  %130 = icmp eq %struct.Node* %128, %129
  br i1 %130, label %131, label %140

; <label>:131                                     ; preds = %123
  %132 = load %struct.Node** %curr, align 8
  %133 = getelementptr inbounds %struct.Node* %132, i32 0, i32 3
  %134 = call { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertERKS1_(%"class.std::set"* %left_done, %struct.Node** %133)
  %135 = bitcast %"struct.std::pair"* %16 to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %136 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %135, i32 0, i32 0
  %137 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %134, 0
  store %"struct.std::_Rb_tree_node_base"* %137, %"struct.std::_Rb_tree_node_base"** %136, align 1
  %138 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %135, i32 0, i32 1
  %139 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %134, 1
  store i8 %139, i8* %138, align 1
  br label %140

; <label>:140                                     ; preds = %131, %123
  %141 = load %struct.Node** %curr, align 8
  %142 = getelementptr inbounds %struct.Node* %141, i32 0, i32 3
  %143 = load %struct.Node** %142, align 8
  store %struct.Node* %143, %struct.Node** %curr, align 8
  br label %144

; <label>:144                                     ; preds = %140, %113
  br label %145

; <label>:145                                     ; preds = %144, %84
  br label %146

; <label>:146                                     ; preds = %145, %74
  br label %22

; <label>:147                                     ; preds = %122, %30
  call void @_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EED2Ev(%"class.std::set"* %left_done) #0
  call void @_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EED2Ev(%"class.std::set"* %visited) #0
  br label %148

; <label>:148                                     ; preds = %147, %19
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EEC2Ev(%"class.std::set"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %this, %"class.std::set"** %1, align 8
  %2 = load %"class.std::set"** %1
  %3 = getelementptr inbounds %"class.std::set"* %2, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EEC2Ev(%"class.std::_Rb_tree"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE4findERKS1_(%"class.std::set"* %this, %struct.Node** %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %2 = alloca %"class.std::set"*, align 8
  %3 = alloca %struct.Node**, align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  store %"class.std::set"* %this, %"class.std::set"** %2, align 8
  store %struct.Node** %__x, %struct.Node*** %3, align 8
  %5 = load %"class.std::set"** %2
  %6 = getelementptr inbounds %"class.std::set"* %5, i32 0, i32 0
  %7 = load %struct.Node*** %3, align 8
  %8 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE4findERKS1_(%"class.std::_Rb_tree"* %6, %struct.Node** %7)
  %9 = getelementptr %"struct.std::_Rb_tree_iterator"* %4, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %8, %"struct.std::_Rb_tree_node_base"** %9
  call void @_ZNSt23_Rb_tree_const_iteratorIP4NodeEC2ERKSt17_Rb_tree_iteratorIS1_E(%"struct.std::_Rb_tree_const_iterator"* %1, %"struct.std::_Rb_tree_iterator"* %4) #0
  %10 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %1, i32 0, i32 0
  %11 = load %"struct.std::_Rb_tree_node_base"** %10
  ret %"struct.std::_Rb_tree_node_base"* %11
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIP4NodeEeqERKS2_(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"* %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %1, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %__x, %"struct.std::_Rb_tree_const_iterator"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_const_iterator"** %1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = load %"struct.std::_Rb_tree_const_iterator"** %2, align 8
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %6, i32 0, i32 0
  %8 = load %"struct.std::_Rb_tree_node_base"** %7, align 8
  %9 = icmp eq %"struct.std::_Rb_tree_node_base"* %5, %8
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIP4NodeSt4lessIS1_ESaIS1_EE3endEv(%"class.std::set"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %2 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %this, %"class.std::set"** %2, align 8
  %3 = load %"class.std::set"** %2
  %4 = getelementptr inbounds %"class.std::set"* %3, i32 0, i32 0
  %5 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE3endEv(%"class.std::_Rb_tree"* %4) #0
  %6 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"** %6
  %7 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %1, i32 0, i32 0
  %8 = load %"struct.std::_Rb_tree_node_base"** %7
  ret %"struct.std::_Rb_tree_node_base"* %8
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
  %16 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %15 to %"class.std::allocator"*
  %17 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %18 = getelementptr inbounds %"struct.std::_Vector_base"* %17, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %18, i32 0, i32 1
  %20 = load i32** %19, align 8
  %21 = load i32** %2, align 8
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator"* %16, i32* %20, i32* %21)
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

; Function Attrs: nounwind uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertERKS1_(%"class.std::set"* %this, %struct.Node** %__x) #3 align 2 {
  %1 = alloca %"struct.std::pair", align 8
  %2 = alloca %"class.std::set"*, align 8
  %3 = alloca %struct.Node**, align 8
  %__p = alloca %"struct.std::pair.7", align 8
  store %"class.std::set"* %this, %"class.std::set"** %2, align 8
  store %struct.Node** %__x, %struct.Node*** %3, align 8
  %4 = load %"class.std::set"** %2
  %5 = getelementptr inbounds %"class.std::set"* %4, i32 0, i32 0
  %6 = load %struct.Node*** %3, align 8
  %7 = call { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_(%"class.std::_Rb_tree"* %5, %struct.Node** %6)
  %8 = bitcast %"struct.std::pair.7"* %__p to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %9 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %8, i32 0, i32 0
  %10 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %7, 0
  store %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"** %9, align 1
  %11 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %8, i32 0, i32 1
  %12 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %7, 1
  store i8 %12, i8* %11, align 1
  %13 = getelementptr inbounds %"struct.std::pair.7"* %__p, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::pair.7"* %__p, i32 0, i32 1
  call void @_ZNSt4pairISt23_Rb_tree_const_iteratorIP4NodeEbEC2IRSt17_Rb_tree_iteratorIS2_ERbvEEOT_OT0_(%"struct.std::pair"* %1, %"struct.std::_Rb_tree_iterator"* %13, i8* %14)
  %15 = bitcast %"struct.std::pair"* %1 to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %16 = load { %"struct.std::_Rb_tree_node_base"*, i8 }* %15, align 1
  ret { %"struct.std::_Rb_tree_node_base"*, i8 } %16
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EED2Ev(%"class.std::set"* %this) unnamed_addr #4 align 2 {
  %1 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %this, %"class.std::set"** %1, align 8
  %2 = load %"class.std::set"** %1
  %3 = getelementptr inbounds %"class.std::set"* %2, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EED2Ev(%"class.std::_Rb_tree"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.Node* @_Z6insertP4Nodei(%struct.Node* %root, i32 %val) #3 {
  %1 = alloca %struct.Node*, align 8
  %2 = alloca %struct.Node*, align 8
  %3 = alloca i32, align 4
  %l = alloca %struct.Node*, align 8
  %r = alloca %struct.Node*, align 8
  store %struct.Node* %root, %struct.Node** %2, align 8
  store i32 %val, i32* %3, align 4
  %4 = load %struct.Node** %2, align 8
  %5 = icmp ne %struct.Node* %4, null
  br i1 %5, label %10, label %6

; <label>:6                                       ; preds = %0
  %7 = call noalias i8* @_Znwm(i64 32) #9
  %8 = bitcast i8* %7 to %struct.Node*
  %9 = load i32* %3, align 4
  call void @_ZN4NodeC2Ei(%struct.Node* %8, i32 %9)
  store %struct.Node* %8, %struct.Node** %1
  br label %42

; <label>:10                                      ; preds = %0
  %11 = load i32* %3, align 4
  %12 = load %struct.Node** %2, align 8
  %13 = getelementptr inbounds %struct.Node* %12, i32 0, i32 0
  %14 = load i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %28

; <label>:16                                      ; preds = %10
  %17 = load %struct.Node** %2, align 8
  %18 = getelementptr inbounds %struct.Node* %17, i32 0, i32 1
  %19 = load %struct.Node** %18, align 8
  %20 = load i32* %3, align 4
  %21 = call %struct.Node* @_Z6insertP4Nodei(%struct.Node* %19, i32 %20)
  store %struct.Node* %21, %struct.Node** %l, align 8
  %22 = load %struct.Node** %l, align 8
  %23 = load %struct.Node** %2, align 8
  %24 = getelementptr inbounds %struct.Node* %23, i32 0, i32 1
  store %struct.Node* %22, %struct.Node** %24, align 8
  %25 = load %struct.Node** %2, align 8
  %26 = load %struct.Node** %l, align 8
  %27 = getelementptr inbounds %struct.Node* %26, i32 0, i32 3
  store %struct.Node* %25, %struct.Node** %27, align 8
  br label %40

; <label>:28                                      ; preds = %10
  %29 = load %struct.Node** %2, align 8
  %30 = getelementptr inbounds %struct.Node* %29, i32 0, i32 2
  %31 = load %struct.Node** %30, align 8
  %32 = load i32* %3, align 4
  %33 = call %struct.Node* @_Z6insertP4Nodei(%struct.Node* %31, i32 %32)
  store %struct.Node* %33, %struct.Node** %r, align 8
  %34 = load %struct.Node** %r, align 8
  %35 = load %struct.Node** %2, align 8
  %36 = getelementptr inbounds %struct.Node* %35, i32 0, i32 2
  store %struct.Node* %34, %struct.Node** %36, align 8
  %37 = load %struct.Node** %2, align 8
  %38 = load %struct.Node** %r, align 8
  %39 = getelementptr inbounds %struct.Node* %38, i32 0, i32 3
  store %struct.Node* %37, %struct.Node** %39, align 8
  br label %40

; <label>:40                                      ; preds = %28, %16
  %41 = load %struct.Node** %2, align 8
  store %struct.Node* %41, %struct.Node** %1
  br label %42

; <label>:42                                      ; preds = %40, %6
  %43 = load %struct.Node** %1
  ret %struct.Node* %43
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #5

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4NodeC2Ei(%struct.Node* %this, i32 %v) unnamed_addr #3 align 2 {
  %1 = alloca %struct.Node*, align 8
  %2 = alloca i32, align 4
  store %struct.Node* %this, %struct.Node** %1, align 8
  store i32 %v, i32* %2, align 4
  %3 = load %struct.Node** %1
  %4 = getelementptr inbounds %struct.Node* %3, i32 0, i32 0
  %5 = load i32* %2, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds %struct.Node* %3, i32 0, i32 1
  store %struct.Node* null, %struct.Node** %6, align 8
  %7 = getelementptr inbounds %struct.Node* %3, i32 0, i32 2
  store %struct.Node* null, %struct.Node** %7, align 8
  %8 = getelementptr inbounds %struct.Node* %3, i32 0, i32 3
  store %struct.Node* null, %struct.Node** %8, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #3 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %filename = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::allocator.3", align 1
  %file = alloca %"class.std::basic_ifstream", align 8
  %num = alloca i32, align 4
  %root = alloca %struct.Node*, align 8
  %result = alloca %"class.std::vector", align 8
  %i = alloca i64, align 8
  %5 = alloca i32
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.3"* %4) #0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %filename, i8* getelementptr inbounds ([18 x i8]* @.str, i32 0, i32 0), %"class.std::allocator.3"* %4)
  call void @_ZNSaIcED1Ev(%"class.std::allocator.3"* %4) #0
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
  store %struct.Node* null, %struct.Node** %root, align 8
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
  %28 = load %struct.Node** %root, align 8
  %29 = load i32* %num, align 4
  %30 = call %struct.Node* @_Z6insertP4Nodei(%struct.Node* %28, i32 %29)
  store %struct.Node* %30, %struct.Node** %root, align 8
  br label %15

; <label>:31                                      ; preds = %15
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv(%"class.std::basic_ifstream"* %file)
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector"* %result) #0
  %32 = load %struct.Node** %root, align 8
  call void @_Z18in_order_traversalP4NodeRSt6vectorIiSaIiEE(%struct.Node* %32, %"class.std::vector"* %result)
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

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"*, i8*, %"class.std::allocator.3"*) #1

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator.3"*) #2

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator.3"*) #2

declare %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(%"class.std::__cxx11::basic_string"*, i8*) #1

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ifstream"*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"*) #2

declare %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"*, i32*) #1

declare zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(%"class.std::basic_ios"*) #1

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv(%"class.std::basic_ifstream"*) #1

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
  %12 = call %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %11) #0
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %6, i32* %10, %"class.std::allocator"* %12)
  %13 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* %13) #0
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"*) #2

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"*) #2

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %__first, i32* %__last, %"class.std::allocator"*) #4 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store i32* %__first, i32** %2, align 8
  store i32* %__last, i32** %3, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  %5 = load i32** %2, align 8
  %6 = load i32** %3, align 8
  call void @_ZSt8_DestroyIPiEvT_S1_(i32* %5, i32* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3 to %"class.std::allocator"*
  ret %"class.std::allocator"* %4
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
  %9 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %8 to %"class.std::allocator"*
  %10 = load i32** %2, align 8
  %11 = load i64* %3, align 8
  call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator"* %9, i32* %10, i64 %11)
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this) unnamed_addr #4 align 2 {
  %1 = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2 to %"class.std::allocator"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIiED2Ev(%"class.std::allocator"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"** %1
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator"* %__a, i32* %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator"** %1, align 8
  %5 = bitcast %"class.std::allocator"* %4 to %"class.__gnu_cxx::new_allocator"*
  %6 = load i32** %2, align 8
  %7 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator"* %5, i32* %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator"* %this, i32* %__p, i64) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %2, align 8
  store i32* %__p, i32** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"** %2
  %6 = load i32** %3, align 8
  %7 = bitcast i32* %6 to i8*
  call void @_ZdlPv(i8* %7) #0
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #6

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyIPiEvT_S1_(i32* %__first, i32* %__last) #4 {
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
  %3 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2 to %"class.std::allocator"*
  call void @_ZNSaIiEC2Ev(%"class.std::allocator"* %3) #0
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2, i32 0, i32 0
  store i32* null, i32** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2, i32 0, i32 1
  store i32* null, i32** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2, i32 0, i32 2
  store i32* null, i32** %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIiEC2Ev(%"class.std::allocator"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"** %1
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_(%"class.std::_Rb_tree"* %this, %struct.Node** %__v) #3 align 2 {
  %1 = alloca %"struct.std::pair.7", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca %struct.Node**, align 8
  %__res = alloca %"struct.std::pair.8", align 8
  %4 = alloca %"struct.std::_Identity", align 1
  %__an = alloca %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node", align 8
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = alloca i8, align 1
  %7 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %8 = alloca i8, align 1
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  store %struct.Node** %__v, %struct.Node*** %3, align 8
  %9 = load %"class.std::_Rb_tree"** %2
  %10 = load %struct.Node*** %3, align 8
  %11 = call %struct.Node** @_ZNKSt9_IdentityIP4NodeEclERKS1_(%"struct.std::_Identity"* %4, %struct.Node** %10)
  %12 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_(%"class.std::_Rb_tree"* %9, %struct.Node** %11)
  %13 = bitcast %"struct.std::pair.8"* %__res to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %14 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %13, i32 0, i32 0
  %15 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %12, 0
  store %"struct.std::_Rb_tree_node_base"* %15, %"struct.std::_Rb_tree_node_base"** %14, align 1
  %16 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %13, i32 0, i32 1
  %17 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %12, 1
  store %"struct.std::_Rb_tree_node_base"* %17, %"struct.std::_Rb_tree_node_base"** %16, align 1
  %18 = getelementptr inbounds %"struct.std::pair.8"* %__res, i32 0, i32 1
  %19 = load %"struct.std::_Rb_tree_node_base"** %18, align 8
  %20 = icmp ne %"struct.std::_Rb_tree_node_base"* %19, null
  br i1 %20, label %21, label %30

; <label>:21                                      ; preds = %0
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_Alloc_nodeC2ERS7_(%"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node"* %__an, %"class.std::_Rb_tree"* %9)
  %22 = getelementptr inbounds %"struct.std::pair.8"* %__res, i32 0, i32 0
  %23 = load %"struct.std::_Rb_tree_node_base"** %22, align 8
  %24 = getelementptr inbounds %"struct.std::pair.8"* %__res, i32 0, i32 1
  %25 = load %"struct.std::_Rb_tree_node_base"** %24, align 8
  %26 = load %struct.Node*** %3, align 8
  %27 = call %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %26) #0
  %28 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_(%"class.std::_Rb_tree"* %9, %"struct.std::_Rb_tree_node_base"* %23, %"struct.std::_Rb_tree_node_base"* %25, %struct.Node** %27, %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node"* %__an)
  %29 = getelementptr %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %28, %"struct.std::_Rb_tree_node_base"** %29
  store i8 1, i8* %6
  call void @_ZNSt4pairISt17_Rb_tree_iteratorIP4NodeEbEC2IS3_bvEEOT_OT0_(%"struct.std::pair.7"* %1, %"struct.std::_Rb_tree_iterator"* %5, i8* %6)
  br label %35

; <label>:30                                      ; preds = %0
  %31 = getelementptr inbounds %"struct.std::pair.8"* %__res, i32 0, i32 0
  %32 = load %"struct.std::_Rb_tree_node_base"** %31, align 8
  %33 = bitcast %"struct.std::_Rb_tree_node_base"* %32 to %"struct.std::_Rb_tree_node"*
  %34 = bitcast %"struct.std::_Rb_tree_node"* %33 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorIP4NodeEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %7, %"struct.std::_Rb_tree_node_base"* %34) #0
  store i8 0, i8* %8
  call void @_ZNSt4pairISt17_Rb_tree_iteratorIP4NodeEbEC2IS3_bvEEOT_OT0_(%"struct.std::pair.7"* %1, %"struct.std::_Rb_tree_iterator"* %7, i8* %8)
  br label %35

; <label>:35                                      ; preds = %30, %21
  %36 = bitcast %"struct.std::pair.7"* %1 to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %37 = load { %"struct.std::_Rb_tree_node_base"*, i8 }* %36, align 1
  ret { %"struct.std::_Rb_tree_node_base"*, i8 } %37
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt4pairISt23_Rb_tree_const_iteratorIP4NodeEbEC2IRSt17_Rb_tree_iteratorIS2_ERbvEEOT_OT0_(%"struct.std::pair"* %this, %"struct.std::_Rb_tree_iterator"* %__x, i8* %__y) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::pair"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %3 = alloca i8*, align 8
  store %"struct.std::pair"* %this, %"struct.std::pair"** %1, align 8
  store %"struct.std::_Rb_tree_iterator"* %__x, %"struct.std::_Rb_tree_iterator"** %2, align 8
  store i8* %__y, i8** %3, align 8
  %4 = load %"struct.std::pair"** %1
  %5 = getelementptr inbounds %"struct.std::pair"* %4, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_iterator"** %2, align 8
  %7 = call %"struct.std::_Rb_tree_iterator"* @_ZSt7forwardIRSt17_Rb_tree_iteratorIP4NodeEEOT_RNSt16remove_referenceIS5_E4typeE(%"struct.std::_Rb_tree_iterator"* %6) #0
  call void @_ZNSt23_Rb_tree_const_iteratorIP4NodeEC2ERKSt17_Rb_tree_iteratorIS1_E(%"struct.std::_Rb_tree_const_iterator"* %5, %"struct.std::_Rb_tree_iterator"* %7) #0
  %8 = getelementptr inbounds %"struct.std::pair"* %4, i32 0, i32 1
  %9 = load i8** %3, align 8
  %10 = call i8* @_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE(i8* %9) #0
  %11 = load i8* %10
  %12 = trunc i8 %11 to i1
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %8, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt23_Rb_tree_const_iteratorIP4NodeEC2ERKSt17_Rb_tree_iteratorIS1_E(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_iterator"* %__it) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %1, align 8
  store %"struct.std::_Rb_tree_iterator"* %__it, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_const_iterator"** %1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_iterator"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_node_base"** %6, align 8
  store %"struct.std::_Rb_tree_node_base"* %7, %"struct.std::_Rb_tree_node_base"** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_iterator"* @_ZSt7forwardIRSt17_Rb_tree_iteratorIP4NodeEEOT_RNSt16remove_referenceIS5_E4typeE(%"struct.std::_Rb_tree_iterator"* %__t) #3 {
  %1 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %__t, %"struct.std::_Rb_tree_iterator"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_iterator"** %1, align 8
  ret %"struct.std::_Rb_tree_iterator"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr i8* @_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE(i8* %__t) #3 {
  %1 = alloca i8*, align 8
  store i8* %__t, i8** %1, align 8
  %2 = load i8** %1, align 8
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_(%"class.std::_Rb_tree"* %this, %struct.Node** %__k) #3 align 2 {
  %1 = alloca %"struct.std::pair.8", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca %struct.Node**, align 8
  %__x = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__comp = alloca i8, align 1
  %__j = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %5 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  store %struct.Node** %__k, %struct.Node*** %3, align 8
  %6 = load %"class.std::_Rb_tree"** %2
  %7 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_beginEv(%"class.std::_Rb_tree"* %6) #0
  store %"struct.std::_Rb_tree_node"* %7, %"struct.std::_Rb_tree_node"** %__x, align 8
  %8 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_M_endEv(%"class.std::_Rb_tree"* %6) #0
  store %"struct.std::_Rb_tree_node"* %8, %"struct.std::_Rb_tree_node"** %__y, align 8
  store i8 1, i8* %__comp, align 1
  br label %9

; <label>:9                                       ; preds = %31, %0
  %10 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %11 = icmp ne %"struct.std::_Rb_tree_node"* %10, null
  br i1 %11, label %12, label %33

; <label>:12                                      ; preds = %9
  %13 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  store %"struct.std::_Rb_tree_node"* %13, %"struct.std::_Rb_tree_node"** %__y, align 8
  %14 = getelementptr inbounds %"class.std::_Rb_tree"* %6, i32 0, i32 0
  %15 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %14, i32 0, i32 0
  %16 = load %struct.Node*** %3, align 8
  %17 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %18 = call %struct.Node** @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt13_Rb_tree_nodeIS1_E(%"struct.std::_Rb_tree_node"* %17)
  %19 = call zeroext i1 @_ZNKSt4lessIP4NodeEclERKS1_S4_(%"struct.std::less"* %15, %struct.Node** %16, %struct.Node** %18)
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %__comp, align 1
  %21 = load i8* %__comp, align 1
  %22 = trunc i8 %21 to i1
  br i1 %22, label %23, label %27

; <label>:23                                      ; preds = %12
  %24 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %25 = bitcast %"struct.std::_Rb_tree_node"* %24 to %"struct.std::_Rb_tree_node_base"*
  %26 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %25) #0
  br label %31

; <label>:27                                      ; preds = %12
  %28 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %29 = bitcast %"struct.std::_Rb_tree_node"* %28 to %"struct.std::_Rb_tree_node_base"*
  %30 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %29) #0
  br label %31

; <label>:31                                      ; preds = %27, %23
  %32 = phi %"struct.std::_Rb_tree_node"* [ %26, %23 ], [ %30, %27 ]
  store %"struct.std::_Rb_tree_node"* %32, %"struct.std::_Rb_tree_node"** %__x, align 8
  br label %9

; <label>:33                                      ; preds = %9
  %34 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  %35 = bitcast %"struct.std::_Rb_tree_node"* %34 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorIP4NodeEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %__j, %"struct.std::_Rb_tree_node_base"* %35) #0
  %36 = load i8* %__comp, align 1
  %37 = trunc i8 %36 to i1
  br i1 %37, label %38, label %46

; <label>:38                                      ; preds = %33
  %39 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5beginEv(%"class.std::_Rb_tree"* %6) #0
  %40 = getelementptr %"struct.std::_Rb_tree_iterator"* %4, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %39, %"struct.std::_Rb_tree_node_base"** %40
  %41 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorIP4NodeEeqERKS2_(%"struct.std::_Rb_tree_iterator"* %__j, %"struct.std::_Rb_tree_iterator"* %4) #0
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %38
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIP4NodeES9_vEEOT_OT0_(%"struct.std::pair.8"* %1, %"struct.std::_Rb_tree_node"** %__x, %"struct.std::_Rb_tree_node"** %__y)
  br label %57

; <label>:43                                      ; preds = %38
  %44 = call %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorIP4NodeEmmEv(%"struct.std::_Rb_tree_iterator"* %__j) #0
  br label %45

; <label>:45                                      ; preds = %43
  br label %46

; <label>:46                                      ; preds = %45, %33
  %47 = getelementptr inbounds %"class.std::_Rb_tree"* %6, i32 0, i32 0
  %48 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %47, i32 0, i32 0
  %49 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  %50 = load %"struct.std::_Rb_tree_node_base"** %49, align 8
  %51 = call %struct.Node** @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %50)
  %52 = load %struct.Node*** %3, align 8
  %53 = call zeroext i1 @_ZNKSt4lessIP4NodeEclERKS1_S4_(%"struct.std::less"* %48, %struct.Node** %51, %struct.Node** %52)
  br i1 %53, label %54, label %55

; <label>:54                                      ; preds = %46
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIP4NodeES9_vEEOT_OT0_(%"struct.std::pair.8"* %1, %"struct.std::_Rb_tree_node"** %__x, %"struct.std::_Rb_tree_node"** %__y)
  br label %57

; <label>:55                                      ; preds = %46
  %56 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %5
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEEOT_RKS1_(%"struct.std::pair.8"* %1, %"struct.std::_Rb_tree_node_base"** %56, %"struct.std::_Rb_tree_node_base"** %5)
  br label %57

; <label>:57                                      ; preds = %55, %54, %42
  %58 = bitcast %"struct.std::pair.8"* %1 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %59 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %58, align 1
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %59
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNKSt9_IdentityIP4NodeEclERKS1_(%"struct.std::_Identity"* %this, %struct.Node** %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Identity"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"struct.std::_Identity"* %this, %"struct.std::_Identity"** %1, align 8
  store %struct.Node** %__x, %struct.Node*** %2, align 8
  %3 = load %"struct.std::_Identity"** %1
  %4 = load %struct.Node*** %2, align 8
  ret %struct.Node** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_Alloc_nodeC2ERS7_(%"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node"* %this, %"class.std::_Rb_tree"* %__t) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node"*, align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node"* %this, %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node"** %1, align 8
  store %"class.std::_Rb_tree"* %__t, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node"** %1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node"* %3, i32 0, i32 0
  %5 = load %"class.std::_Rb_tree"** %2, align 8
  store %"class.std::_Rb_tree"* %5, %"class.std::_Rb_tree"** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt4pairISt17_Rb_tree_iteratorIP4NodeEbEC2IS3_bvEEOT_OT0_(%"struct.std::pair.7"* %this, %"struct.std::_Rb_tree_iterator"* %__x, i8* %__y) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::pair.7"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %3 = alloca i8*, align 8
  store %"struct.std::pair.7"* %this, %"struct.std::pair.7"** %1, align 8
  store %"struct.std::_Rb_tree_iterator"* %__x, %"struct.std::_Rb_tree_iterator"** %2, align 8
  store i8* %__y, i8** %3, align 8
  %4 = load %"struct.std::pair.7"** %1
  %5 = getelementptr inbounds %"struct.std::pair.7"* %4, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_iterator"** %2, align 8
  %7 = call %"struct.std::_Rb_tree_iterator"* @_ZSt7forwardISt17_Rb_tree_iteratorIP4NodeEEOT_RNSt16remove_referenceIS4_E4typeE(%"struct.std::_Rb_tree_iterator"* %6) #0
  %8 = bitcast %"struct.std::_Rb_tree_iterator"* %5 to i8*
  %9 = bitcast %"struct.std::_Rb_tree_iterator"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = getelementptr inbounds %"struct.std::pair.7"* %4, i32 0, i32 1
  %11 = load i8** %3, align 8
  %12 = call i8* @_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE(i8* %11) #0
  %13 = load i8* %12
  %14 = trunc i8 %13 to i1
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %10, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"* %__p, %struct.Node** %__v, %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node"* %__node_gen) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %5 = alloca %struct.Node**, align 8
  %6 = alloca %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node"*, align 8
  %__insert_left = alloca i8, align 1
  %7 = alloca %"struct.std::_Identity", align 1
  %__z = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %3, align 8
  store %"struct.std::_Rb_tree_node_base"* %__p, %"struct.std::_Rb_tree_node_base"** %4, align 8
  store %struct.Node** %__v, %struct.Node*** %5, align 8
  store %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node"* %__node_gen, %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node"** %6, align 8
  %8 = load %"class.std::_Rb_tree"** %2
  %9 = load %"struct.std::_Rb_tree_node_base"** %3, align 8
  %10 = icmp ne %"struct.std::_Rb_tree_node_base"* %9, null
  br i1 %10, label %24, label %11

; <label>:11                                      ; preds = %0
  %12 = load %"struct.std::_Rb_tree_node_base"** %4, align 8
  %13 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_M_endEv(%"class.std::_Rb_tree"* %8) #0
  %14 = bitcast %"struct.std::_Rb_tree_node"* %13 to %"struct.std::_Rb_tree_node_base"*
  %15 = icmp eq %"struct.std::_Rb_tree_node_base"* %12, %14
  br i1 %15, label %24, label %16

; <label>:16                                      ; preds = %11
  %17 = getelementptr inbounds %"class.std::_Rb_tree"* %8, i32 0, i32 0
  %18 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %17, i32 0, i32 0
  %19 = load %struct.Node*** %5, align 8
  %20 = call %struct.Node** @_ZNKSt9_IdentityIP4NodeEclERKS1_(%"struct.std::_Identity"* %7, %struct.Node** %19)
  %21 = load %"struct.std::_Rb_tree_node_base"** %4, align 8
  %22 = call %struct.Node** @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %21)
  %23 = call zeroext i1 @_ZNKSt4lessIP4NodeEclERKS1_S4_(%"struct.std::less"* %18, %struct.Node** %20, %struct.Node** %22)
  br label %24

; <label>:24                                      ; preds = %16, %11, %0
  %25 = phi i1 [ true, %11 ], [ true, %0 ], [ %23, %16 ]
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %__insert_left, align 1
  %27 = load %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node"** %6, align 8
  %28 = load %struct.Node*** %5, align 8
  %29 = call %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %28) #0
  %30 = call %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_Alloc_nodeclIRKS1_EEPSt13_Rb_tree_nodeIS1_EOT_(%"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node"* %27, %struct.Node** %29)
  store %"struct.std::_Rb_tree_node"* %30, %"struct.std::_Rb_tree_node"** %__z, align 8
  %31 = load i8* %__insert_left, align 1
  %32 = trunc i8 %31 to i1
  %33 = load %"struct.std::_Rb_tree_node"** %__z, align 8
  %34 = bitcast %"struct.std::_Rb_tree_node"* %33 to %"struct.std::_Rb_tree_node_base"*
  %35 = load %"struct.std::_Rb_tree_node_base"** %4, align 8
  %36 = getelementptr inbounds %"class.std::_Rb_tree"* %8, i32 0, i32 0
  %37 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %36, i32 0, i32 1
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext %32, %"struct.std::_Rb_tree_node_base"* %34, %"struct.std::_Rb_tree_node_base"* %35, %"struct.std::_Rb_tree_node_base"* %37) #0
  %38 = getelementptr inbounds %"class.std::_Rb_tree"* %8, i32 0, i32 0
  %39 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %38, i32 0, i32 2
  %40 = load i64* %39, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load %"struct.std::_Rb_tree_node"** %__z, align 8
  %43 = bitcast %"struct.std::_Rb_tree_node"* %42 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorIP4NodeEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_node_base"* %43) #0
  %44 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %45 = load %"struct.std::_Rb_tree_node_base"** %44
  ret %"struct.std::_Rb_tree_node_base"* %45
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %__t) #3 {
  %1 = alloca %struct.Node**, align 8
  store %struct.Node** %__t, %struct.Node*** %1, align 8
  %2 = load %struct.Node*** %1, align 8
  ret %struct.Node** %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt17_Rb_tree_iteratorIP4NodeEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_node_base"* %__x) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %1, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_iterator"** %1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"** %2, align 8
  store %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_M_endEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %3, i32 0, i32 1
  %5 = bitcast %"struct.std::_Rb_tree_node_base"* %4 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt4lessIP4NodeEclERKS1_S4_(%"struct.std::less"* %this, %struct.Node** %__x, %struct.Node** %__y) #3 align 2 {
  %1 = alloca %"struct.std::less"*, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %struct.Node**, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %1, align 8
  store %struct.Node** %__x, %struct.Node*** %2, align 8
  store %struct.Node** %__y, %struct.Node*** %3, align 8
  %4 = load %"struct.std::less"** %1
  %5 = load %struct.Node*** %2, align 8
  %6 = load %struct.Node** %5, align 8
  %7 = load %struct.Node*** %3, align 8
  %8 = load %struct.Node** %7, align 8
  %9 = icmp ult %struct.Node* %6, %8
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %2 = alloca %"struct.std::_Identity", align 1
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %1, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %4 = call %struct.Node** @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %3)
  %5 = call %struct.Node** @_ZNKSt9_IdentityIP4NodeEclERKS1_(%"struct.std::_Identity"* %2, %struct.Node** %4)
  ret %struct.Node** %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_Alloc_nodeclIRKS1_EEPSt13_Rb_tree_nodeIS1_EOT_(%"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node"* %this, %struct.Node** %__arg) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node"* %this, %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node"** %1, align 8
  store %struct.Node** %__arg, %struct.Node*** %2, align 8
  %3 = load %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node"** %1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Alloc_node"* %3, i32 0, i32 0
  %5 = load %"class.std::_Rb_tree"** %4, align 8
  %6 = load %struct.Node*** %2, align 8
  %7 = call %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %6) #0
  %8 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_create_nodeIJRKS1_EEEPSt13_Rb_tree_nodeIS1_EDpOT_(%"class.std::_Rb_tree"* %5, %struct.Node** %7)
  ret %"struct.std::_Rb_tree_node"* %8
}

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*) #2

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_create_nodeIJRKS1_EEEPSt13_Rb_tree_nodeIS1_EDpOT_(%"class.std::_Rb_tree"* %this, %struct.Node** %__args) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %struct.Node**, align 8
  %__tmp = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store %struct.Node** %__args, %struct.Node*** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %1
  %4 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* %3)
  store %"struct.std::_Rb_tree_node"* %4, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %5 = load %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %6 = load %struct.Node*** %2, align 8
  %7 = call %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %6) #0
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_construct_nodeIJRKS1_EEEvPSt13_Rb_tree_nodeIS1_EDpOT_(%"class.std::_Rb_tree"* %3, %"struct.std::_Rb_tree_node"* %5, %struct.Node** %7)
  %8 = load %"struct.std::_Rb_tree_node"** %__tmp, align 8
  ret %"struct.std::_Rb_tree_node"* %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = call %"class.std::allocator.0"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %2) #0
  %4 = call %"struct.std::_Rb_tree_node"* @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIP4NodeEEE8allocateERS4_m(%"class.std::allocator.0"* %3, i64 1)
  ret %"struct.std::_Rb_tree_node"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_construct_nodeIJRKS1_EEEvPSt13_Rb_tree_nodeIS1_EDpOT_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__node, %struct.Node** %__args) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %3 = alloca %struct.Node**, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store %"struct.std::_Rb_tree_node"* %__node, %"struct.std::_Rb_tree_node"** %2, align 8
  store %struct.Node** %__args, %struct.Node*** %3, align 8
  %4 = load %"class.std::_Rb_tree"** %1
  %5 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node"* %5 to i8*
  %7 = icmp eq i8* %6, null
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %6 to %"struct.std::_Rb_tree_node"*
  br label %10

; <label>:10                                      ; preds = %8, %0
  %11 = phi %"struct.std::_Rb_tree_node"* [ %9, %8 ], [ null, %0 ]
  %12 = call %"class.std::allocator.0"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %4) #0
  %13 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %14 = call %struct.Node** @_ZNSt13_Rb_tree_nodeIP4NodeE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %13)
  %15 = load %struct.Node*** %3, align 8
  %16 = call %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %15) #0
  call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIP4NodeEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_(%"class.std::allocator.0"* %12, %struct.Node** %14, %struct.Node** %16)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIP4NodeEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_(%"class.std::allocator.0"* %__a, %struct.Node** %__p, %struct.Node** %__args) #3 align 2 {
  %1 = alloca %"class.std::allocator.0"*, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %struct.Node**, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %1, align 8
  store %struct.Node** %__p, %struct.Node*** %2, align 8
  store %struct.Node** %__args, %struct.Node*** %3, align 8
  %4 = load %"class.std::allocator.0"** %1, align 8
  %5 = bitcast %"class.std::allocator.0"* %4 to %"class.__gnu_cxx::new_allocator.1"*
  %6 = load %struct.Node*** %2, align 8
  %7 = load %struct.Node*** %3, align 8
  %8 = call %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %7) #0
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIP4NodeEE9constructIS3_JRKS3_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.1"* %5, %struct.Node** %6, %struct.Node** %8)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.0"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %3 to %"class.std::allocator.0"*
  ret %"class.std::allocator.0"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt13_Rb_tree_nodeIP4NodeE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %this, %"struct.std::_Rb_tree_node"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node"** %1
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node"* %2, i32 0, i32 1
  %4 = call %struct.Node** @_ZN9__gnu_cxx16__aligned_membufIP4NodeE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %3) #0
  ret %struct.Node** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZN9__gnu_cxx16__aligned_membufIP4NodeE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %this) #3 align 2 {
  %1 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %this, %"struct.__gnu_cxx::__aligned_membuf"** %1, align 8
  %2 = load %"struct.__gnu_cxx::__aligned_membuf"** %1
  %3 = call i8* @_ZN9__gnu_cxx16__aligned_membufIP4NodeE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %2) #0
  %4 = bitcast i8* %3 to %struct.Node**
  ret %struct.Node** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i8* @_ZN9__gnu_cxx16__aligned_membufIP4NodeE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %this) #3 align 2 {
  %1 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %this, %"struct.__gnu_cxx::__aligned_membuf"** %1, align 8
  %2 = load %"struct.__gnu_cxx::__aligned_membuf"** %1
  %3 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf"* %2, i32 0, i32 0
  %4 = bitcast [8 x i8]* %3 to i8*
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIP4NodeEE9constructIS3_JRKS3_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.1"* %this, %struct.Node** %__p, %struct.Node** %__args) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %struct.Node**, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %1, align 8
  store %struct.Node** %__p, %struct.Node*** %2, align 8
  store %struct.Node** %__args, %struct.Node*** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.1"** %1
  %5 = load %struct.Node*** %2, align 8
  %6 = bitcast %struct.Node** %5 to i8*
  %7 = icmp eq i8* %6, null
  br i1 %7, label %13, label %8

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %6 to %struct.Node**
  %10 = load %struct.Node*** %3, align 8
  %11 = call %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %10) #0
  %12 = load %struct.Node** %11
  store %struct.Node* %12, %struct.Node** %9, align 8
  br label %13

; <label>:13                                      ; preds = %8, %0
  %14 = phi %struct.Node** [ %9, %8 ], [ null, %0 ]
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIP4NodeEEE8allocateERS4_m(%"class.std::allocator.0"* %__a, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.0"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.0"** %1, align 8
  %4 = bitcast %"class.std::allocator.0"* %3 to %"class.__gnu_cxx::new_allocator.1"*
  %5 = load i64* %2, align 8
  %6 = call %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIP4NodeEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.1"* %4, i64 %5, i8* null)
  ret %"struct.std::_Rb_tree_node"* %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIP4NodeEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.1"* %this, i64 %__n, i8*) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.1"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIP4NodeEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* %5) #0
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #10
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 40
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIP4NodeEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.1"** %1
  ret i64 461168601842738790
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #7

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %3 = bitcast %"struct.std::_Rb_tree_node_base"* %2 to %"struct.std::_Rb_tree_node"*
  %4 = call %struct.Node** @_ZNKSt13_Rb_tree_nodeIP4NodeE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %3)
  ret %struct.Node** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNKSt13_Rb_tree_nodeIP4NodeE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %this, %"struct.std::_Rb_tree_node"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node"** %1
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node"* %2, i32 0, i32 1
  %4 = call %struct.Node** @_ZNK9__gnu_cxx16__aligned_membufIP4NodeE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %3) #0
  ret %struct.Node** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNK9__gnu_cxx16__aligned_membufIP4NodeE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %this) #3 align 2 {
  %1 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %this, %"struct.__gnu_cxx::__aligned_membuf"** %1, align 8
  %2 = load %"struct.__gnu_cxx::__aligned_membuf"** %1
  %3 = call i8* @_ZNK9__gnu_cxx16__aligned_membufIP4NodeE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %2) #0
  %4 = bitcast i8* %3 to %struct.Node**
  ret %struct.Node** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i8* @_ZNK9__gnu_cxx16__aligned_membufIP4NodeE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %this) #3 align 2 {
  %1 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %this, %"struct.__gnu_cxx::__aligned_membuf"** %1, align 8
  %2 = load %"struct.__gnu_cxx::__aligned_membuf"** %1
  %3 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf"* %2, i32 0, i32 0
  %4 = bitcast [8 x i8]* %3 to i8*
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_iterator"* @_ZSt7forwardISt17_Rb_tree_iteratorIP4NodeEEOT_RNSt16remove_referenceIS4_E4typeE(%"struct.std::_Rb_tree_iterator"* %__t) #3 {
  %1 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %__t, %"struct.std::_Rb_tree_iterator"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_iterator"** %1, align 8
  ret %"struct.std::_Rb_tree_iterator"* %2
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #0

; Function Attrs: nounwind uwtable
define linkonce_odr i8* @_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE(i8* %__t) #3 {
  %1 = alloca i8*, align 8
  store i8* %__t, i8** %1, align 8
  %2 = load i8** %1, align 8
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_beginEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %3, i32 0, i32 1
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %4, i32 0, i32 1
  %6 = load %"struct.std::_Rb_tree_node_base"** %5, align 8
  %7 = bitcast %"struct.std::_Rb_tree_node_base"* %6 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt13_Rb_tree_nodeIS1_E(%"struct.std::_Rb_tree_node"* %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %2 = alloca %"struct.std::_Identity", align 1
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %1, align 8
  %3 = load %"struct.std::_Rb_tree_node"** %1, align 8
  %4 = call %struct.Node** @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_S_valueEPKSt13_Rb_tree_nodeIS1_E(%"struct.std::_Rb_tree_node"* %3)
  %5 = call %struct.Node** @_ZNKSt9_IdentityIP4NodeEclERKS1_(%"struct.std::_Identity"* %2, %struct.Node** %4)
  ret %struct.Node** %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %2, i32 0, i32 2
  %4 = load %"struct.std::_Rb_tree_node_base"** %3, align 8
  %5 = bitcast %"struct.std::_Rb_tree_node_base"* %4 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %2, i32 0, i32 3
  %4 = load %"struct.std::_Rb_tree_node_base"** %3, align 8
  %5 = bitcast %"struct.std::_Rb_tree_node_base"* %4 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt17_Rb_tree_iteratorIP4NodeEeqERKS2_(%"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"* %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %1, align 8
  store %"struct.std::_Rb_tree_iterator"* %__x, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_iterator"** %1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = load %"struct.std::_Rb_tree_iterator"** %2, align 8
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %6, i32 0, i32 0
  %8 = load %"struct.std::_Rb_tree_node_base"** %7, align 8
  %9 = icmp eq %"struct.std::_Rb_tree_node_base"* %5, %8
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5beginEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %2
  %4 = getelementptr inbounds %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %4, i32 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %5, i32 0, i32 2
  %7 = load %"struct.std::_Rb_tree_node_base"** %6, align 8
  call void @_ZNSt17_Rb_tree_iteratorIP4NodeEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_node_base"* %7) #0
  %8 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %9 = load %"struct.std::_Rb_tree_node_base"** %8
  ret %"struct.std::_Rb_tree_node_base"* %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIP4NodeES9_vEEOT_OT0_(%"struct.std::pair.8"* %this, %"struct.std::_Rb_tree_node"** %__x, %"struct.std::_Rb_tree_node"** %__y) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::pair.8"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"**, align 8
  %3 = alloca %"struct.std::_Rb_tree_node"**, align 8
  store %"struct.std::pair.8"* %this, %"struct.std::pair.8"** %1, align 8
  store %"struct.std::_Rb_tree_node"** %__x, %"struct.std::_Rb_tree_node"*** %2, align 8
  store %"struct.std::_Rb_tree_node"** %__y, %"struct.std::_Rb_tree_node"*** %3, align 8
  %4 = load %"struct.std::pair.8"** %1
  %5 = getelementptr inbounds %"struct.std::pair.8"* %4, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_node"*** %2, align 8
  %7 = call %"struct.std::_Rb_tree_node"** @_ZSt7forwardIRPSt13_Rb_tree_nodeIP4NodeEEOT_RNSt16remove_referenceIS6_E4typeE(%"struct.std::_Rb_tree_node"** %6) #0
  %8 = load %"struct.std::_Rb_tree_node"** %7
  %9 = bitcast %"struct.std::_Rb_tree_node"* %8 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %5, align 8
  %10 = getelementptr inbounds %"struct.std::pair.8"* %4, i32 0, i32 1
  %11 = load %"struct.std::_Rb_tree_node"*** %3, align 8
  %12 = call %"struct.std::_Rb_tree_node"** @_ZSt7forwardIRPSt13_Rb_tree_nodeIP4NodeEEOT_RNSt16remove_referenceIS6_E4typeE(%"struct.std::_Rb_tree_node"** %11) #0
  %13 = load %"struct.std::_Rb_tree_node"** %12
  %14 = bitcast %"struct.std::_Rb_tree_node"* %13 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %14, %"struct.std::_Rb_tree_node_base"** %10, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorIP4NodeEmmEv(%"struct.std::_Rb_tree_iterator"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  %4 = load %"struct.std::_Rb_tree_node_base"** %3, align 8
  %5 = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4) #11
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"** %6, align 8
  ret %"struct.std::_Rb_tree_iterator"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEEOT_RKS1_(%"struct.std::pair.8"* %this, %"struct.std::_Rb_tree_node_base"** %__x, %"struct.std::_Rb_tree_node_base"** %__y) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::pair.8"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %3 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.8"* %this, %"struct.std::pair.8"** %1, align 8
  store %"struct.std::_Rb_tree_node_base"** %__x, %"struct.std::_Rb_tree_node_base"*** %2, align 8
  store %"struct.std::_Rb_tree_node_base"** %__y, %"struct.std::_Rb_tree_node_base"*** %3, align 8
  %4 = load %"struct.std::pair.8"** %1
  %5 = getelementptr inbounds %"struct.std::pair.8"* %4, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_node_base"*** %2, align 8
  %7 = call %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** %6) #0
  %8 = load %"struct.std::_Rb_tree_node_base"** %7
  store %"struct.std::_Rb_tree_node_base"* %8, %"struct.std::_Rb_tree_node_base"** %5, align 8
  %9 = getelementptr inbounds %"struct.std::pair.8"* %4, i32 0, i32 1
  %10 = load %"struct.std::_Rb_tree_node_base"*** %3, align 8
  %11 = load %"struct.std::_Rb_tree_node_base"** %10, align 8
  store %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"** %9, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** %__t) #3 {
  %1 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::_Rb_tree_node_base"** %__t, %"struct.std::_Rb_tree_node_base"*** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node_base"*** %1, align 8
  ret %"struct.std::_Rb_tree_node_base"** %2
}

; Function Attrs: nounwind readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #8

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"** @_ZSt7forwardIRPSt13_Rb_tree_nodeIP4NodeEEOT_RNSt16remove_referenceIS6_E4typeE(%"struct.std::_Rb_tree_node"** %__t) #3 {
  %1 = alloca %"struct.std::_Rb_tree_node"**, align 8
  store %"struct.std::_Rb_tree_node"** %__t, %"struct.std::_Rb_tree_node"*** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node"*** %1, align 8
  ret %"struct.std::_Rb_tree_node"** %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_S_valueEPKSt13_Rb_tree_nodeIS1_E(%"struct.std::_Rb_tree_node"* %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node"** %1, align 8
  %3 = call %struct.Node** @_ZNKSt13_Rb_tree_nodeIP4NodeE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %2)
  ret %struct.Node** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator"* %__a, i32* %__p, i32* %__args) #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i32* %__args, i32** %3, align 8
  %4 = load %"class.std::allocator"** %1, align 8
  %5 = bitcast %"class.std::allocator"* %4 to %"class.__gnu_cxx::new_allocator"*
  %6 = load i32** %2, align 8
  %7 = load i32** %3, align 8
  %8 = call i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* %7) #0
  call void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %5, i32* %6, i32* %8)
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
  %11 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %10 to %"class.std::allocator"*
  %12 = load i32** %__new_start, align 8
  %13 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %3) #0
  %14 = getelementptr inbounds i32* %12, i64 %13
  %15 = load i32** %2, align 8
  %16 = call i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* %15) #0
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator"* %11, i32* %14, i32* %16)
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
  %27 = call %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %26) #0
  %28 = call i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %20, i32* %24, i32* %25, %"class.std::allocator"* %27)
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
  %40 = call %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %39) #0
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %34, i32* %38, %"class.std::allocator"* %40)
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
  call void @_ZSt20__throw_length_errorPKc(i8* %12) #10
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
  %8 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %7 to %"class.std::allocator"*
  %9 = load i64* %2, align 8
  %10 = call i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator"* %8, i64 %9)
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
define linkonce_odr i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %__first, i32* %__last, i32* %__result, %"class.std::allocator"* %__alloc) #4 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %"class.std::move_iterator", align 8
  %6 = alloca %"class.std::move_iterator", align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %4, align 8
  %7 = load i32** %1, align 8
  %8 = call i32* @_ZSt32__make_move_if_noexcept_iteratorIPiSt13move_iteratorIS0_EET0_T_(i32* %7)
  %9 = getelementptr %"class.std::move_iterator"* %5, i32 0, i32 0
  store i32* %8, i32** %9
  %10 = load i32** %2, align 8
  %11 = call i32* @_ZSt32__make_move_if_noexcept_iteratorIPiSt13move_iteratorIS0_EET0_T_(i32* %10)
  %12 = getelementptr %"class.std::move_iterator"* %6, i32 0, i32 0
  store i32* %11, i32** %12
  %13 = load i32** %3, align 8
  %14 = load %"class.std::allocator"** %4, align 8
  %15 = getelementptr %"class.std::move_iterator"* %5, i32 0, i32 0
  %16 = load i32** %15
  %17 = getelementptr %"class.std::move_iterator"* %6, i32 0, i32 0
  %18 = load i32** %17
  %19 = call i32* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i32* %16, i32* %18, i32* %13, %"class.std::allocator"* %14)
  ret i32* %19
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i32* %__first.coerce, i32* %__last.coerce, i32* %__result, %"class.std::allocator"*) #4 {
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %2 = alloca i32*, align 8
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %"class.std::move_iterator", align 8
  %5 = alloca %"class.std::move_iterator", align 8
  %6 = getelementptr %"class.std::move_iterator"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %6
  %7 = getelementptr %"class.std::move_iterator"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %7
  store i32* %__result, i32** %2, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
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
define linkonce_odr i32* @_ZSt32__make_move_if_noexcept_iteratorIPiSt13move_iteratorIS0_EET0_T_(i32* %__i) #4 {
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
define linkonce_odr i32* @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #4 {
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
define linkonce_odr i32* @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #4 {
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
define linkonce_odr i32* @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #4 {
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
define linkonce_odr i32* @_ZSt12__miter_baseISt13move_iteratorIPiEENSt11_Miter_baseIT_E13iterator_typeES4_(i32* %__it.coerce) #4 {
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
define linkonce_odr i32* @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #4 {
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
define linkonce_odr i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %__it) #4 {
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
define linkonce_odr i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator"* %__a, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator"** %1, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  %5 = load i64* %2, align 8
  %6 = call i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %4, i64 %5, i8* null)
  ret i32* %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8*) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %5) #0
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #10
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 4
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to i32*
  ret i32* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret i64 4611686018427387903
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* %this) #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %4 = call %"class.std::allocator"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %3) #0
  %5 = call i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator"* %4) #0
  ret i64 %5
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #7

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt3maxImERKT_S2_S2_(i64* %__a, i64* %__b) #4 {
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
define linkonce_odr i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator"* %__a) #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"** %1, align 8
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  %4 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %3) #0
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3 to %"class.std::allocator"*
  ret %"class.std::allocator"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %this, i32* %__p, i32* %__args) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i32* %__args, i32** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator"** %1
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
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE3endEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %2
  %4 = getelementptr inbounds %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %4, i32 0, i32 1
  call void @_ZNSt23_Rb_tree_const_iteratorIP4NodeEC2EPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_const_iterator"* %1, %"struct.std::_Rb_tree_node_base"* %5) #0
  %6 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %1, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_node_base"** %6
  ret %"struct.std::_Rb_tree_node_base"* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt23_Rb_tree_const_iteratorIP4NodeEC2EPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_node_base"* %__x) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %1, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_const_iterator"** %1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"** %2, align 8
  store %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE4findERKS1_(%"class.std::_Rb_tree"* %this, %struct.Node** %__k) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca %struct.Node**, align 8
  %__j = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  store %struct.Node** %__k, %struct.Node*** %3, align 8
  %5 = load %"class.std::_Rb_tree"** %2
  %6 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_beginEv(%"class.std::_Rb_tree"* %5) #0
  %7 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_M_endEv(%"class.std::_Rb_tree"* %5) #0
  %8 = load %struct.Node*** %3, align 8
  %9 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_ESA_RKS1_(%"class.std::_Rb_tree"* %5, %"struct.std::_Rb_tree_node"* %6, %"struct.std::_Rb_tree_node"* %7, %struct.Node** %8)
  %10 = getelementptr %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %10
  %11 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE3endEv(%"class.std::_Rb_tree"* %5) #0
  %12 = getelementptr %"struct.std::_Rb_tree_iterator"* %4, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"** %12
  %13 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorIP4NodeEeqERKS2_(%"struct.std::_Rb_tree_iterator"* %__j, %"struct.std::_Rb_tree_iterator"* %4) #0
  br i1 %13, label %22, label %14

; <label>:14                                      ; preds = %0
  %15 = getelementptr inbounds %"class.std::_Rb_tree"* %5, i32 0, i32 0
  %16 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %15, i32 0, i32 0
  %17 = load %struct.Node*** %3, align 8
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  %19 = load %"struct.std::_Rb_tree_node_base"** %18, align 8
  %20 = call %struct.Node** @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %19)
  %21 = call zeroext i1 @_ZNKSt4lessIP4NodeEclERKS1_S4_(%"struct.std::less"* %16, %struct.Node** %17, %struct.Node** %20)
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %14, %0
  %23 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE3endEv(%"class.std::_Rb_tree"* %5) #0
  %24 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %23, %"struct.std::_Rb_tree_node_base"** %24
  br label %28

; <label>:25                                      ; preds = %14
  %26 = bitcast %"struct.std::_Rb_tree_iterator"* %1 to i8*
  %27 = bitcast %"struct.std::_Rb_tree_iterator"* %__j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 8, i32 8, i1 false)
  br label %28

; <label>:28                                      ; preds = %25, %22
  %29 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %30 = load %"struct.std::_Rb_tree_node_base"** %29
  ret %"struct.std::_Rb_tree_node_base"* %30
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_ESA_RKS1_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"* %__y, %struct.Node** %__k) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %5 = alloca %struct.Node**, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %__y, %"struct.std::_Rb_tree_node"** %4, align 8
  store %struct.Node** %__k, %struct.Node*** %5, align 8
  %6 = load %"class.std::_Rb_tree"** %2
  br label %7

; <label>:7                                       ; preds = %26, %0
  %8 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %9 = icmp ne %"struct.std::_Rb_tree_node"* %8, null
  br i1 %9, label %10, label %27

; <label>:10                                      ; preds = %7
  %11 = getelementptr inbounds %"class.std::_Rb_tree"* %6, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %11, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %14 = call %struct.Node** @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt13_Rb_tree_nodeIS1_E(%"struct.std::_Rb_tree_node"* %13)
  %15 = load %struct.Node*** %5, align 8
  %16 = call zeroext i1 @_ZNKSt4lessIP4NodeEclERKS1_S4_(%"struct.std::less"* %12, %struct.Node** %14, %struct.Node** %15)
  br i1 %16, label %22, label %17

; <label>:17                                      ; preds = %10
  %18 = load %"struct.std::_Rb_tree_node"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %18, %"struct.std::_Rb_tree_node"** %4, align 8
  %19 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %20 = bitcast %"struct.std::_Rb_tree_node"* %19 to %"struct.std::_Rb_tree_node_base"*
  %21 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %20) #0
  store %"struct.std::_Rb_tree_node"* %21, %"struct.std::_Rb_tree_node"** %3, align 8
  br label %26

; <label>:22                                      ; preds = %10
  %23 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %24 = bitcast %"struct.std::_Rb_tree_node"* %23 to %"struct.std::_Rb_tree_node_base"*
  %25 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %24) #0
  store %"struct.std::_Rb_tree_node"* %25, %"struct.std::_Rb_tree_node"** %3, align 8
  br label %26

; <label>:26                                      ; preds = %22, %17
  br label %7

; <label>:27                                      ; preds = %7
  %28 = load %"struct.std::_Rb_tree_node"** %4, align 8
  %29 = bitcast %"struct.std::_Rb_tree_node"* %28 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorIP4NodeEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_node_base"* %29) #0
  %30 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %31 = load %"struct.std::_Rb_tree_node_base"** %30
  ret %"struct.std::_Rb_tree_node_base"* %31
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE3endEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %2
  %4 = getelementptr inbounds %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %4, i32 0, i32 1
  call void @_ZNSt17_Rb_tree_iteratorIP4NodeEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_node_base"* %5) #0
  %6 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_node_base"** %6
  ret %"struct.std::_Rb_tree_node_base"* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EEC2Ev(%"class.std::_Rb_tree"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EEC2Ev(%"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EEC2Ev(%"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"** %1, align 8
  %2 = load %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"** %1
  %3 = bitcast %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %2 to %"class.std::allocator.0"*
  call void @_ZNSaISt13_Rb_tree_nodeIP4NodeEEC2Ev(%"class.std::allocator.0"* %3) #0
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %2, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %2, i32 0, i32 1
  %6 = bitcast %"struct.std::_Rb_tree_node_base"* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 32, i32 8, i1 false)
  %7 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %2, i32 0, i32 2
  store i64 0, i64* %7, align 8
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EE13_M_initializeEv(%"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeIP4NodeEEC2Ev(%"class.std::allocator.0"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %1, align 8
  %2 = load %"class.std::allocator.0"** %1
  %3 = bitcast %"class.std::allocator.0"* %2 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIP4NodeEEC2Ev(%"class.__gnu_cxx::new_allocator.1"* %3) #0
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #0

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EE13_M_initializeEv(%"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"** %1, align 8
  %2 = load %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"** %1
  %3 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %2, i32 0, i32 1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %3, i32 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %2, i32 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %5, i32 0, i32 1
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %6, align 8
  %7 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %2, i32 0, i32 1
  %8 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %2, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %8, i32 0, i32 2
  store %"struct.std::_Rb_tree_node_base"* %7, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %10 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %2, i32 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %2, i32 0, i32 1
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %11, i32 0, i32 3
  store %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"** %12, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIP4NodeEEC2Ev(%"class.__gnu_cxx::new_allocator.1"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.1"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EED2Ev(%"class.std::_Rb_tree"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_beginEv(%"class.std::_Rb_tree"* %2) #0
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(%"class.std::_Rb_tree"* %2, %"struct.std::_Rb_tree_node"* %3)
  %4 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EED2Ev(%"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %4) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %1
  br label %4

; <label>:4                                       ; preds = %7, %0
  %5 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %6 = icmp ne %"struct.std::_Rb_tree_node"* %5, null
  br i1 %6, label %7, label %16

; <label>:7                                       ; preds = %4
  %8 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %9 = bitcast %"struct.std::_Rb_tree_node"* %8 to %"struct.std::_Rb_tree_node_base"*
  %10 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %9) #0
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(%"class.std::_Rb_tree"* %3, %"struct.std::_Rb_tree_node"* %10)
  %11 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %12 = bitcast %"struct.std::_Rb_tree_node"* %11 to %"struct.std::_Rb_tree_node_base"*
  %13 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %12) #0
  store %"struct.std::_Rb_tree_node"* %13, %"struct.std::_Rb_tree_node"** %__y, align 8
  %14 = load %"struct.std::_Rb_tree_node"** %2, align 8
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS1_E(%"class.std::_Rb_tree"* %3, %"struct.std::_Rb_tree_node"* %14) #0
  %15 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  store %"struct.std::_Rb_tree_node"* %15, %"struct.std::_Rb_tree_node"** %2, align 8
  br label %4

; <label>:16                                      ; preds = %4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EED2Ev(%"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %this) unnamed_addr #4 align 2 {
  %1 = alloca %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"** %1, align 8
  %2 = load %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"** %1
  %3 = bitcast %"struct.std::_Rb_tree<Node *, Node *, std::_Identity<Node *>, std::less<Node *>, std::allocator<Node *> >::_Rb_tree_impl"* %2 to %"class.std::allocator.0"*
  call void @_ZNSaISt13_Rb_tree_nodeIP4NodeEED2Ev(%"class.std::allocator.0"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeIP4NodeEED2Ev(%"class.std::allocator.0"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %1, align 8
  %2 = load %"class.std::allocator.0"** %1
  %3 = bitcast %"class.std::allocator.0"* %2 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIP4NodeEED2Ev(%"class.__gnu_cxx::new_allocator.1"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIP4NodeEED2Ev(%"class.__gnu_cxx::new_allocator.1"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.1"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS1_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %1
  %4 = load %"struct.std::_Rb_tree_node"** %2, align 8
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS1_E(%"class.std::_Rb_tree"* %3, %"struct.std::_Rb_tree_node"* %4) #0
  %5 = load %"struct.std::_Rb_tree_node"** %2, align 8
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS1_E(%"class.std::_Rb_tree"* %3, %"struct.std::_Rb_tree_node"* %5) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS1_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %1
  %4 = call %"class.std::allocator.0"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %3) #0
  %5 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %6 = call %struct.Node** @_ZNSt13_Rb_tree_nodeIP4NodeE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %5)
  call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIP4NodeEEE7destroyIS2_EEvRS4_PT_(%"class.std::allocator.0"* %4, %struct.Node** %6)
  %7 = load %"struct.std::_Rb_tree_node"** %2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS1_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %1
  %4 = call %"class.std::allocator.0"* @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %3) #0
  %5 = load %"struct.std::_Rb_tree_node"** %2, align 8
  call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIP4NodeEEE10deallocateERS4_PS3_m(%"class.std::allocator.0"* %4, %"struct.std::_Rb_tree_node"* %5, i64 1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIP4NodeEEE10deallocateERS4_PS3_m(%"class.std::allocator.0"* %__a, %"struct.std::_Rb_tree_node"* %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.0"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %1, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.0"** %1, align 8
  %5 = bitcast %"class.std::allocator.0"* %4 to %"class.__gnu_cxx::new_allocator.1"*
  %6 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %7 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIP4NodeEE10deallocateEPS4_m(%"class.__gnu_cxx::new_allocator.1"* %5, %"struct.std::_Rb_tree_node"* %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIP4NodeEE10deallocateEPS4_m(%"class.__gnu_cxx::new_allocator.1"* %this, %"struct.std::_Rb_tree_node"* %__p, i64) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %3 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.1"** %2
  %6 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %7 = bitcast %"struct.std::_Rb_tree_node"* %6 to i8*
  call void @_ZdlPv(i8* %7) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIP4NodeEEE7destroyIS2_EEvRS4_PT_(%"class.std::allocator.0"* %__a, %struct.Node** %__p) #3 align 2 {
  %1 = alloca %"class.std::allocator.0"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %1, align 8
  store %struct.Node** %__p, %struct.Node*** %2, align 8
  %3 = load %"class.std::allocator.0"** %1, align 8
  %4 = bitcast %"class.std::allocator.0"* %3 to %"class.__gnu_cxx::new_allocator.1"*
  %5 = load %struct.Node*** %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIP4NodeEE7destroyIS3_EEvPT_(%"class.__gnu_cxx::new_allocator.1"* %4, %struct.Node** %5)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIP4NodeEE7destroyIS3_EEvPT_(%"class.__gnu_cxx::new_allocator.1"* %this, %struct.Node** %__p) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %1, align 8
  store %struct.Node** %__p, %struct.Node*** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.1"** %1
  %4 = load %struct.Node*** %2, align 8
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
attributes #4 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { builtin }
attributes #10 = { noreturn }
attributes #11 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
