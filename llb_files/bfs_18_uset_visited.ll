; ModuleID = 'BFS/bfs_18_uset_visited.cpp'
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
%"class.std::unordered_set" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { %"struct.std::__detail::_Hash_node_base"**, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", %"struct.std::__detail::_Hash_node_base"* }
%"struct.std::__detail::_Hash_node_base" = type { %"struct.std::__detail::_Hash_node_base"* }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.std::queue" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl" }
%"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl" = type { %struct.Node***, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { %struct.Node**, %struct.Node**, %struct.Node**, %struct.Node*** }
%"struct.std::pair" = type { %"struct.std::__detail::_Node_iterator", i8 }
%"struct.std::__detail::_Node_iterator" = type { %"struct.std::__detail::_Node_iterator_base" }
%"struct.std::__detail::_Node_iterator_base" = type { %"struct.std::__detail::_Hash_node"* }
%"struct.std::__detail::_Hash_node" = type { %"struct.std::__detail::_Hash_node_value_base" }
%"struct.std::__detail::_Hash_node_value_base" = type { %"struct.std::__detail::_Hash_node_base", %"struct.__gnu_cxx::__aligned_buffer" }
%"struct.__gnu_cxx::__aligned_buffer" = type { %"union.std::aligned_storage<8, 8>::type" }
%"union.std::aligned_storage<8, 8>::type" = type { [8 x i8] }
%"class.std::allocator.7" = type { i8 }
%"struct.std::__detail::_Insert" = type { i8 }
%"struct.std::__detail::_Insert_base" = type { i8 }
%"class.std::allocator" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.10" = type { i8 }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, i8*, i64, i8, i8, i8, i8, i8*, i8*, i8, %"class.std::codecvt"*, i8*, i64, i8*, i8* }
%union.pthread_mutex_t = type { %"struct.<anonymous union>::__pthread_mutex_s" }
%"struct.<anonymous union>::__pthread_mutex_s" = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%"class.std::__basic_file" = type { %struct._IO_FILE*, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__mbstate_t = type { i32, %union.anon.13 }
%union.anon.13 = type { i32 }
%"class.std::codecvt" = type { %"class.std::__codecvt_abstract_base", %struct.__locale_struct* }
%"class.std::__codecvt_abstract_base" = type { %"class.std::locale::facet" }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"struct.std::__detail::_Hash_code_base" = type { i8 }
%"struct.std::hash" = type { i8 }
%"struct.std::__detail::_Hashtable_base" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"struct.std::__detail::_Identity" = type { i8 }
%"struct.std::__detail::_Mod_range_hashing" = type { i8 }
%"struct.std::__detail::_Hashtable_ebo_helper.1" = type { i8 }
%"struct.std::__detail::_Hashtable_ebo_helper.0" = type { i8 }
%"struct.std::__detail::_Hashtable_ebo_helper" = type { i8 }
%"struct.std::__detail::_Hashtable_ebo_helper.2" = type { i8 }
%"class.std::move_iterator" = type { i32* }
%"class.__gnu_cxx::new_allocator.8" = type { i8 }
%"struct.std::__detail::_AllocNode" = type { %"struct.std::__detail::_Hashtable_alloc"* }
%"struct.std::__detail::_Hashtable_alloc" = type { i8 }
%"struct.std::integral_constant" = type { i8 }
%"struct.std::pair.14" = type { i8, i64 }
%"class.std::allocator.15" = type { i8 }
%"class.std::allocator.4" = type { i8 }
%"class.__gnu_cxx::new_allocator.16" = type { i8 }
%"struct.std::__detail::_Hashtable_ebo_helper.3" = type { i8 }
%"class.__gnu_cxx::new_allocator.5" = type { i8 }
%"class.std::allocator.18" = type { i8 }
%"class.__gnu_cxx::new_allocator.19" = type { i8 }
%"struct.__gnu_cxx::__allocator_always_compares_equal" = type { i8 }
%"struct.std::__detail::_Map_base" = type { i8 }
%"struct.std::__detail::_Rehash_base" = type { i8 }
%"struct.std::__detail::_Equality" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@.str = private unnamed_addr constant [12 x i8] c"numbers.txt\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream"
@.str1 = private unnamed_addr constant [23 x i8] c"Error: Could not open \00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream"
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str4 = private unnamed_addr constant [28 x i8] c"vector::_M_emplace_back_aux\00", align 1
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
define void @_Z8bfs_usetP4NodeRSt6vectorIiSaIiEE(%struct.Node* %root, %"class.std::vector"* %result) #3 {
  %1 = alloca %struct.Node*, align 8
  %2 = alloca %"class.std::vector"*, align 8
  %visited = alloca %"class.std::unordered_set", align 8
  %q = alloca %"class.std::queue", align 8
  %3 = alloca %"class.std::deque", align 8
  %4 = alloca %"struct.std::pair", align 8
  %u = alloca %struct.Node*, align 8
  %neighbors = alloca [2 x %struct.Node*], align 16
  %i = alloca i32, align 4
  %v = alloca %struct.Node*, align 8
  %5 = alloca %"struct.std::__detail::_Node_iterator", align 8
  %6 = alloca %"struct.std::__detail::_Node_iterator", align 8
  %7 = alloca %"struct.std::pair", align 8
  store %struct.Node* %root, %struct.Node** %1, align 8
  store %"class.std::vector"* %result, %"class.std::vector"** %2, align 8
  %8 = load %struct.Node** %1, align 8
  %9 = icmp ne %struct.Node* %8, null
  br i1 %9, label %11, label %10

; <label>:10                                      ; preds = %0
  br label %69

; <label>:11                                      ; preds = %0
  call void @_ZNSt13unordered_setIP4NodeSt4hashIS1_ESt8equal_toIS1_ESaIS1_EEC2Ev(%"class.std::unordered_set"* %visited) #0
  call void @_ZNSt5dequeIP4NodeSaIS1_EEC2Ev(%"class.std::deque"* %3)
  call void @_ZNSt5queueIP4NodeSt5dequeIS1_SaIS1_EEEC2EOS4_(%"class.std::queue"* %q, %"class.std::deque"* %3)
  call void @_ZNSt5dequeIP4NodeSaIS1_EED2Ev(%"class.std::deque"* %3) #0
  call void @_ZNSt5queueIP4NodeSt5dequeIS1_SaIS1_EEE4pushERKS1_(%"class.std::queue"* %q, %struct.Node** %1)
  %12 = call { %"struct.std::__detail::_Hash_node"*, i8 } @_ZNSt13unordered_setIP4NodeSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE6insertERKS1_(%"class.std::unordered_set"* %visited, %struct.Node** %1)
  %13 = bitcast %"struct.std::pair"* %4 to { %"struct.std::__detail::_Hash_node"*, i8 }*
  %14 = getelementptr { %"struct.std::__detail::_Hash_node"*, i8 }* %13, i32 0, i32 0
  %15 = extractvalue { %"struct.std::__detail::_Hash_node"*, i8 } %12, 0
  store %"struct.std::__detail::_Hash_node"* %15, %"struct.std::__detail::_Hash_node"** %14, align 1
  %16 = getelementptr { %"struct.std::__detail::_Hash_node"*, i8 }* %13, i32 0, i32 1
  %17 = extractvalue { %"struct.std::__detail::_Hash_node"*, i8 } %12, 1
  store i8 %17, i8* %16, align 1
  br label %18

; <label>:18                                      ; preds = %67, %11
  %19 = call zeroext i1 @_ZNKSt5queueIP4NodeSt5dequeIS1_SaIS1_EEE5emptyEv(%"class.std::queue"* %q)
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %68

; <label>:21                                      ; preds = %18
  %22 = call %struct.Node** @_ZNSt5queueIP4NodeSt5dequeIS1_SaIS1_EEE5frontEv(%"class.std::queue"* %q)
  %23 = load %struct.Node** %22
  store %struct.Node* %23, %struct.Node** %u, align 8
  call void @_ZNSt5queueIP4NodeSt5dequeIS1_SaIS1_EEE3popEv(%"class.std::queue"* %q)
  %24 = load %"class.std::vector"** %2, align 8
  %25 = load %struct.Node** %u, align 8
  %26 = getelementptr inbounds %struct.Node* %25, i32 0, i32 0
  call void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"* %24, i32* %26)
  %27 = getelementptr inbounds [2 x %struct.Node*]* %neighbors, i64 0, i64 0
  %28 = load %struct.Node** %u, align 8
  %29 = getelementptr inbounds %struct.Node* %28, i32 0, i32 1
  %30 = load %struct.Node** %29, align 8
  store %struct.Node* %30, %struct.Node** %27
  %31 = getelementptr inbounds %struct.Node** %27, i64 1
  %32 = load %struct.Node** %u, align 8
  %33 = getelementptr inbounds %struct.Node* %32, i32 0, i32 2
  %34 = load %struct.Node** %33, align 8
  store %struct.Node* %34, %struct.Node** %31
  store i32 0, i32* %i, align 4
  br label %35

; <label>:35                                      ; preds = %64, %21
  %36 = load i32* %i, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %67

; <label>:38                                      ; preds = %35
  %39 = load i32* %i, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x %struct.Node*]* %neighbors, i32 0, i64 %40
  %42 = load %struct.Node** %41, align 8
  store %struct.Node* %42, %struct.Node** %v, align 8
  %43 = load %struct.Node** %v, align 8
  %44 = icmp ne %struct.Node* %43, null
  br i1 %44, label %45, label %63

; <label>:45                                      ; preds = %38
  %46 = call %"struct.std::__detail::_Hash_node"* @_ZNSt13unordered_setIP4NodeSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_(%"class.std::unordered_set"* %visited, %struct.Node** %v)
  %47 = getelementptr %"struct.std::__detail::_Node_iterator"* %5, i32 0, i32 0
  %48 = getelementptr %"struct.std::__detail::_Node_iterator_base"* %47, i32 0, i32 0
  store %"struct.std::__detail::_Hash_node"* %46, %"struct.std::__detail::_Hash_node"** %48
  %49 = bitcast %"struct.std::__detail::_Node_iterator"* %5 to %"struct.std::__detail::_Node_iterator_base"*
  %50 = call %"struct.std::__detail::_Hash_node"* @_ZNSt13unordered_setIP4NodeSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE3endEv(%"class.std::unordered_set"* %visited) #0
  %51 = getelementptr %"struct.std::__detail::_Node_iterator"* %6, i32 0, i32 0
  %52 = getelementptr %"struct.std::__detail::_Node_iterator_base"* %51, i32 0, i32 0
  store %"struct.std::__detail::_Hash_node"* %50, %"struct.std::__detail::_Hash_node"** %52
  %53 = bitcast %"struct.std::__detail::_Node_iterator"* %6 to %"struct.std::__detail::_Node_iterator_base"*
  %54 = call zeroext i1 @_ZNSt8__detaileqIP4NodeLb0EEEbRKNS_19_Node_iterator_baseIT_XT0_EEES7_(%"struct.std::__detail::_Node_iterator_base"* %49, %"struct.std::__detail::_Node_iterator_base"* %53) #0
  br i1 %54, label %55, label %62

; <label>:55                                      ; preds = %45
  %56 = call { %"struct.std::__detail::_Hash_node"*, i8 } @_ZNSt13unordered_setIP4NodeSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE6insertERKS1_(%"class.std::unordered_set"* %visited, %struct.Node** %v)
  %57 = bitcast %"struct.std::pair"* %7 to { %"struct.std::__detail::_Hash_node"*, i8 }*
  %58 = getelementptr { %"struct.std::__detail::_Hash_node"*, i8 }* %57, i32 0, i32 0
  %59 = extractvalue { %"struct.std::__detail::_Hash_node"*, i8 } %56, 0
  store %"struct.std::__detail::_Hash_node"* %59, %"struct.std::__detail::_Hash_node"** %58, align 1
  %60 = getelementptr { %"struct.std::__detail::_Hash_node"*, i8 }* %57, i32 0, i32 1
  %61 = extractvalue { %"struct.std::__detail::_Hash_node"*, i8 } %56, 1
  store i8 %61, i8* %60, align 1
  call void @_ZNSt5queueIP4NodeSt5dequeIS1_SaIS1_EEE4pushERKS1_(%"class.std::queue"* %q, %struct.Node** %v)
  br label %62

; <label>:62                                      ; preds = %55, %45
  br label %63

; <label>:63                                      ; preds = %62, %38
  br label %64

; <label>:64                                      ; preds = %63
  %65 = load i32* %i, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %i, align 4
  br label %35

; <label>:67                                      ; preds = %35
  br label %18

; <label>:68                                      ; preds = %18
  call void @_ZNSt5queueIP4NodeSt5dequeIS1_SaIS1_EEED2Ev(%"class.std::queue"* %q) #0
  call void @_ZNSt13unordered_setIP4NodeSt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev(%"class.std::unordered_set"* %visited) #0
  br label %69

; <label>:69                                      ; preds = %68, %10
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setIP4NodeSt4hashIS1_ESt8equal_toIS1_ESaIS1_EEC2Ev(%"class.std::unordered_set"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::unordered_set"*, align 8
  store %"class.std::unordered_set"* %this, %"class.std::unordered_set"** %1, align 8
  %2 = load %"class.std::unordered_set"** %1
  %3 = getelementptr inbounds %"class.std::unordered_set"* %2, i32 0, i32 0
  call void @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEEC2Ev(%"class.std::_Hashtable"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5queueIP4NodeSt5dequeIS1_SaIS1_EEEC2EOS4_(%"class.std::queue"* %this, %"class.std::deque"* %__c) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::queue"*, align 8
  %2 = alloca %"class.std::deque"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 8
  store %"class.std::deque"* %__c, %"class.std::deque"** %2, align 8
  %3 = load %"class.std::queue"** %1
  %4 = getelementptr inbounds %"class.std::queue"* %3, i32 0, i32 0
  %5 = load %"class.std::deque"** %2, align 8
  %6 = call %"class.std::deque"* @_ZSt4moveIRSt5dequeIP4NodeSaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::deque"* %5) #0
  call void @_ZNSt5dequeIP4NodeSaIS1_EEC2EOS3_(%"class.std::deque"* %4, %"class.std::deque"* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP4NodeSaIS1_EEC2Ev(%"class.std::deque"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIP4NodeSaIS1_EEC2Ev(%"class.std::_Deque_base"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP4NodeSaIS1_EED2Ev(%"class.std::deque"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator", align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %4 = load %"class.std::deque"** %1
  call void @_ZNSt5dequeIP4NodeSaIS1_EE5beginEv(%"struct.std::_Deque_iterator"* sret %2, %"class.std::deque"* %4) #0
  call void @_ZNSt5dequeIP4NodeSaIS1_EE3endEv(%"struct.std::_Deque_iterator"* sret %3, %"class.std::deque"* %4) #0
  %5 = bitcast %"class.std::deque"* %4 to %"class.std::_Deque_base"*
  %6 = call %"class.std::allocator.7"* @_ZNSt11_Deque_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %5) #0
  call void @_ZNSt5dequeIP4NodeSaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_(%"class.std::deque"* %4, %"struct.std::_Deque_iterator"* %2, %"struct.std::_Deque_iterator"* %3, %"class.std::allocator.7"* %6)
  %7 = bitcast %"class.std::deque"* %4 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIP4NodeSaIS1_EED2Ev(%"class.std::_Deque_base"* %7) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5queueIP4NodeSt5dequeIS1_SaIS1_EEE4pushERKS1_(%"class.std::queue"* %this, %struct.Node** %__x) #3 align 2 {
  %1 = alloca %"class.std::queue"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 8
  store %struct.Node** %__x, %struct.Node*** %2, align 8
  %3 = load %"class.std::queue"** %1
  %4 = getelementptr inbounds %"class.std::queue"* %3, i32 0, i32 0
  %5 = load %struct.Node*** %2, align 8
  call void @_ZNSt5dequeIP4NodeSaIS1_EE9push_backERKS1_(%"class.std::deque"* %4, %struct.Node** %5)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr { %"struct.std::__detail::_Hash_node"*, i8 } @_ZNSt13unordered_setIP4NodeSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE6insertERKS1_(%"class.std::unordered_set"* %this, %struct.Node** %__x) #3 align 2 {
  %1 = alloca %"struct.std::pair", align 8
  %2 = alloca %"class.std::unordered_set"*, align 8
  %3 = alloca %struct.Node**, align 8
  store %"class.std::unordered_set"* %this, %"class.std::unordered_set"** %2, align 8
  store %struct.Node** %__x, %struct.Node*** %3, align 8
  %4 = load %"class.std::unordered_set"** %2
  %5 = getelementptr inbounds %"class.std::unordered_set"* %4, i32 0, i32 0
  %6 = bitcast %"class.std::_Hashtable"* %5 to %"struct.std::__detail::_Insert"*
  %7 = bitcast %"struct.std::__detail::_Insert"* %6 to %"struct.std::__detail::_Insert_base"*
  %8 = load %struct.Node*** %3, align 8
  %9 = call { %"struct.std::__detail::_Hash_node"*, i8 } @_ZNSt8__detail12_Insert_baseIP4NodeS2_SaIS2_ENS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb1ELb1EEEE6insertERKS2_(%"struct.std::__detail::_Insert_base"* %7, %struct.Node** %8)
  %10 = bitcast %"struct.std::pair"* %1 to { %"struct.std::__detail::_Hash_node"*, i8 }*
  %11 = getelementptr { %"struct.std::__detail::_Hash_node"*, i8 }* %10, i32 0, i32 0
  %12 = extractvalue { %"struct.std::__detail::_Hash_node"*, i8 } %9, 0
  store %"struct.std::__detail::_Hash_node"* %12, %"struct.std::__detail::_Hash_node"** %11, align 1
  %13 = getelementptr { %"struct.std::__detail::_Hash_node"*, i8 }* %10, i32 0, i32 1
  %14 = extractvalue { %"struct.std::__detail::_Hash_node"*, i8 } %9, 1
  store i8 %14, i8* %13, align 1
  %15 = bitcast %"struct.std::pair"* %1 to { %"struct.std::__detail::_Hash_node"*, i8 }*
  %16 = load { %"struct.std::__detail::_Hash_node"*, i8 }* %15, align 1
  ret { %"struct.std::__detail::_Hash_node"*, i8 } %16
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt5queueIP4NodeSt5dequeIS1_SaIS1_EEE5emptyEv(%"class.std::queue"* %this) #3 align 2 {
  %1 = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 8
  %2 = load %"class.std::queue"** %1
  %3 = getelementptr inbounds %"class.std::queue"* %2, i32 0, i32 0
  %4 = call zeroext i1 @_ZNKSt5dequeIP4NodeSaIS1_EE5emptyEv(%"class.std::deque"* %3) #0
  ret i1 %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt5queueIP4NodeSt5dequeIS1_SaIS1_EEE5frontEv(%"class.std::queue"* %this) #3 align 2 {
  %1 = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 8
  %2 = load %"class.std::queue"** %1
  %3 = getelementptr inbounds %"class.std::queue"* %2, i32 0, i32 0
  %4 = call %struct.Node** @_ZNSt5dequeIP4NodeSaIS1_EE5frontEv(%"class.std::deque"* %3) #0
  ret %struct.Node** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5queueIP4NodeSt5dequeIS1_SaIS1_EEE3popEv(%"class.std::queue"* %this) #3 align 2 {
  %1 = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 8
  %2 = load %"class.std::queue"** %1
  %3 = getelementptr inbounds %"class.std::queue"* %2, i32 0, i32 0
  call void @_ZNSt5dequeIP4NodeSaIS1_EE9pop_frontEv(%"class.std::deque"* %3) #0
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

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr zeroext i1 @_ZNSt8__detaileqIP4NodeLb0EEEbRKNS_19_Node_iterator_baseIT_XT0_EEES7_(%"struct.std::__detail::_Node_iterator_base"* %__x, %"struct.std::__detail::_Node_iterator_base"* %__y) #4 {
  %1 = alloca %"struct.std::__detail::_Node_iterator_base"*, align 8
  %2 = alloca %"struct.std::__detail::_Node_iterator_base"*, align 8
  store %"struct.std::__detail::_Node_iterator_base"* %__x, %"struct.std::__detail::_Node_iterator_base"** %1, align 8
  store %"struct.std::__detail::_Node_iterator_base"* %__y, %"struct.std::__detail::_Node_iterator_base"** %2, align 8
  %3 = load %"struct.std::__detail::_Node_iterator_base"** %1, align 8
  %4 = getelementptr inbounds %"struct.std::__detail::_Node_iterator_base"* %3, i32 0, i32 0
  %5 = load %"struct.std::__detail::_Hash_node"** %4, align 8
  %6 = load %"struct.std::__detail::_Node_iterator_base"** %2, align 8
  %7 = getelementptr inbounds %"struct.std::__detail::_Node_iterator_base"* %6, i32 0, i32 0
  %8 = load %"struct.std::__detail::_Hash_node"** %7, align 8
  %9 = icmp eq %"struct.std::__detail::_Hash_node"* %5, %8
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node"* @_ZNSt13unordered_setIP4NodeSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_(%"class.std::unordered_set"* %this, %struct.Node** %__x) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Node_iterator", align 8
  %2 = alloca %"class.std::unordered_set"*, align 8
  %3 = alloca %struct.Node**, align 8
  store %"class.std::unordered_set"* %this, %"class.std::unordered_set"** %2, align 8
  store %struct.Node** %__x, %struct.Node*** %3, align 8
  %4 = load %"class.std::unordered_set"** %2
  %5 = getelementptr inbounds %"class.std::unordered_set"* %4, i32 0, i32 0
  %6 = load %struct.Node*** %3, align 8
  %7 = call %"struct.std::__detail::_Hash_node"* @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE4findERKS1_(%"class.std::_Hashtable"* %5, %struct.Node** %6)
  %8 = getelementptr %"struct.std::__detail::_Node_iterator"* %1, i32 0, i32 0
  %9 = getelementptr %"struct.std::__detail::_Node_iterator_base"* %8, i32 0, i32 0
  store %"struct.std::__detail::_Hash_node"* %7, %"struct.std::__detail::_Hash_node"** %9
  %10 = getelementptr %"struct.std::__detail::_Node_iterator"* %1, i32 0, i32 0
  %11 = getelementptr %"struct.std::__detail::_Node_iterator_base"* %10, i32 0, i32 0
  %12 = load %"struct.std::__detail::_Hash_node"** %11
  ret %"struct.std::__detail::_Hash_node"* %12
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node"* @_ZNSt13unordered_setIP4NodeSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE3endEv(%"class.std::unordered_set"* %this) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Node_iterator", align 8
  %2 = alloca %"class.std::unordered_set"*, align 8
  store %"class.std::unordered_set"* %this, %"class.std::unordered_set"** %2, align 8
  %3 = load %"class.std::unordered_set"** %2
  %4 = getelementptr inbounds %"class.std::unordered_set"* %3, i32 0, i32 0
  %5 = call %"struct.std::__detail::_Hash_node"* @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE3endEv(%"class.std::_Hashtable"* %4) #0
  %6 = getelementptr %"struct.std::__detail::_Node_iterator"* %1, i32 0, i32 0
  %7 = getelementptr %"struct.std::__detail::_Node_iterator_base"* %6, i32 0, i32 0
  store %"struct.std::__detail::_Hash_node"* %5, %"struct.std::__detail::_Hash_node"** %7
  %8 = getelementptr %"struct.std::__detail::_Node_iterator"* %1, i32 0, i32 0
  %9 = getelementptr %"struct.std::__detail::_Node_iterator_base"* %8, i32 0, i32 0
  %10 = load %"struct.std::__detail::_Hash_node"** %9
  ret %"struct.std::__detail::_Hash_node"* %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt5queueIP4NodeSt5dequeIS1_SaIS1_EEED2Ev(%"class.std::queue"* %this) unnamed_addr #4 align 2 {
  %1 = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 8
  %2 = load %"class.std::queue"** %1
  %3 = getelementptr inbounds %"class.std::queue"* %2, i32 0, i32 0
  call void @_ZNSt5dequeIP4NodeSaIS1_EED2Ev(%"class.std::deque"* %3) #0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setIP4NodeSt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev(%"class.std::unordered_set"* %this) unnamed_addr #4 align 2 {
  %1 = alloca %"class.std::unordered_set"*, align 8
  store %"class.std::unordered_set"* %this, %"class.std::unordered_set"** %1, align 8
  %2 = load %"class.std::unordered_set"** %1
  %3 = getelementptr inbounds %"class.std::unordered_set"* %2, i32 0, i32 0
  call void @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev(%"class.std::_Hashtable"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.Node* @_Z6insertP4Nodei(%struct.Node* %root, i32 %val) #3 {
  %1 = alloca %struct.Node*, align 8
  %2 = alloca %struct.Node*, align 8
  %3 = alloca i32, align 4
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
  br label %44

; <label>:10                                      ; preds = %0
  %11 = load i32* %3, align 4
  %12 = load %struct.Node** %2, align 8
  %13 = getelementptr inbounds %struct.Node* %12, i32 0, i32 0
  %14 = load i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %29

; <label>:16                                      ; preds = %10
  %17 = load %struct.Node** %2, align 8
  %18 = getelementptr inbounds %struct.Node* %17, i32 0, i32 1
  %19 = load %struct.Node** %18, align 8
  %20 = load i32* %3, align 4
  %21 = call %struct.Node* @_Z6insertP4Nodei(%struct.Node* %19, i32 %20)
  %22 = load %struct.Node** %2, align 8
  %23 = getelementptr inbounds %struct.Node* %22, i32 0, i32 1
  store %struct.Node* %21, %struct.Node** %23, align 8
  %24 = load %struct.Node** %2, align 8
  %25 = load %struct.Node** %2, align 8
  %26 = getelementptr inbounds %struct.Node* %25, i32 0, i32 1
  %27 = load %struct.Node** %26, align 8
  %28 = getelementptr inbounds %struct.Node* %27, i32 0, i32 3
  store %struct.Node* %24, %struct.Node** %28, align 8
  br label %42

; <label>:29                                      ; preds = %10
  %30 = load %struct.Node** %2, align 8
  %31 = getelementptr inbounds %struct.Node* %30, i32 0, i32 2
  %32 = load %struct.Node** %31, align 8
  %33 = load i32* %3, align 4
  %34 = call %struct.Node* @_Z6insertP4Nodei(%struct.Node* %32, i32 %33)
  %35 = load %struct.Node** %2, align 8
  %36 = getelementptr inbounds %struct.Node* %35, i32 0, i32 2
  store %struct.Node* %34, %struct.Node** %36, align 8
  %37 = load %struct.Node** %2, align 8
  %38 = load %struct.Node** %2, align 8
  %39 = getelementptr inbounds %struct.Node* %38, i32 0, i32 2
  %40 = load %struct.Node** %39, align 8
  %41 = getelementptr inbounds %struct.Node* %40, i32 0, i32 3
  store %struct.Node* %37, %struct.Node** %41, align 8
  br label %42

; <label>:42                                      ; preds = %29, %16
  %43 = load %struct.Node** %2, align 8
  store %struct.Node* %43, %struct.Node** %1
  br label %44

; <label>:44                                      ; preds = %42, %6
  %45 = load %struct.Node** %1
  ret %struct.Node* %45
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
  %4 = alloca %"class.std::allocator.10", align 1
  %file = alloca %"class.std::basic_ifstream", align 8
  %5 = alloca i32
  %num = alloca i32, align 4
  %root = alloca %struct.Node*, align 8
  %result = alloca %"class.std::vector", align 8
  %i = alloca i64, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.10"* %4) #0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %filename, i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0), %"class.std::allocator.10"* %4)
  call void @_ZNSaIcED1Ev(%"class.std::allocator.10"* %4) #0
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
  %15 = call zeroext i1 @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv(%"class.std::basic_ifstream"* %file)
  br i1 %15, label %20, label %16

; <label>:16                                      ; preds = %13
  %17 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cerr, i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0))
  %18 = call %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* %17, %"class.std::__cxx11::basic_string"* %filename)
  %19 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 1, i32* %1
  store i32 1, i32* %5
  br label %59

; <label>:20                                      ; preds = %13
  store %struct.Node* null, %struct.Node** %root, align 8
  br label %21

; <label>:21                                      ; preds = %33, %20
  %22 = bitcast %"class.std::basic_ifstream"* %file to %"class.std::basic_istream"*
  %23 = call %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* %22, i32* %num)
  %24 = bitcast %"class.std::basic_istream"* %23 to i8**
  %25 = load i8** %24
  %26 = getelementptr i8* %25, i64 -24
  %27 = bitcast i8* %26 to i64*
  %28 = load i64* %27
  %29 = bitcast %"class.std::basic_istream"* %23 to i8*
  %30 = getelementptr inbounds i8* %29, i64 %28
  %31 = bitcast i8* %30 to %"class.std::basic_ios"*
  %32 = call zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(%"class.std::basic_ios"* %31)
  br i1 %32, label %33, label %37

; <label>:33                                      ; preds = %21
  %34 = load %struct.Node** %root, align 8
  %35 = load i32* %num, align 4
  %36 = call %struct.Node* @_Z6insertP4Nodei(%struct.Node* %34, i32 %35)
  store %struct.Node* %36, %struct.Node** %root, align 8
  br label %21

; <label>:37                                      ; preds = %21
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv(%"class.std::basic_ifstream"* %file)
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector"* %result) #0
  %38 = load %struct.Node** %root, align 8
  call void @_Z8bfs_usetP4NodeRSt6vectorIiSaIiEE(%struct.Node* %38, %"class.std::vector"* %result)
  store i64 0, i64* %i, align 8
  br label %39

; <label>:39                                      ; preds = %54, %37
  %40 = load i64* %i, align 8
  %41 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %result) #0
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %57

; <label>:43                                      ; preds = %39
  %44 = load i64* %i, align 8
  %45 = call i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %result, i64 %44) #0
  %46 = load i32* %45
  %47 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %46)
  %48 = load i64* %i, align 8
  %49 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %result) #0
  %50 = sub i64 %49, 1
  %51 = icmp eq i64 %48, %50
  %52 = select i1 %51, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)
  %53 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %47, i8* %52)
  br label %54

; <label>:54                                      ; preds = %43
  %55 = load i64* %i, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %i, align 8
  br label %39

; <label>:57                                      ; preds = %39
  %58 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, i32* %1
  store i32 1, i32* %5
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %result) #0
  br label %59

; <label>:59                                      ; preds = %57, %16
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"* %file) #0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %filename) #0
  %60 = load i32* %1
  ret i32 %60
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"*, i8*, %"class.std::allocator.10"*) #1

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator.10"*) #2

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator.10"*) #2

declare %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(%"class.std::__cxx11::basic_string"*, i8*) #1

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ifstream"*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"*) #2

declare zeroext i1 @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv(%"class.std::basic_ifstream"*) #1

declare %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"*, %"class.std::__cxx11::basic_string"*) #1

declare %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"*, i8*) #1

declare %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"*) #1

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
define linkonce_odr %"struct.std::__detail::_Hash_node"* @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE3endEv(%"class.std::_Hashtable"* %this) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Node_iterator", align 8
  %2 = alloca %"class.std::_Hashtable"*, align 8
  store %"class.std::_Hashtable"* %this, %"class.std::_Hashtable"** %2, align 8
  %3 = load %"class.std::_Hashtable"** %2
  call void @_ZNSt8__detail14_Node_iteratorIP4NodeLb1ELb0EEC2EPNS_10_Hash_nodeIS2_Lb0EEE(%"struct.std::__detail::_Node_iterator"* %1, %"struct.std::__detail::_Hash_node"* null) #0
  %4 = getelementptr %"struct.std::__detail::_Node_iterator"* %1, i32 0, i32 0
  %5 = getelementptr %"struct.std::__detail::_Node_iterator_base"* %4, i32 0, i32 0
  %6 = load %"struct.std::__detail::_Hash_node"** %5
  ret %"struct.std::__detail::_Hash_node"* %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8__detail14_Node_iteratorIP4NodeLb1ELb0EEC2EPNS_10_Hash_nodeIS2_Lb0EEE(%"struct.std::__detail::_Node_iterator"* %this, %"struct.std::__detail::_Hash_node"* %__p) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Node_iterator"*, align 8
  %2 = alloca %"struct.std::__detail::_Hash_node"*, align 8
  store %"struct.std::__detail::_Node_iterator"* %this, %"struct.std::__detail::_Node_iterator"** %1, align 8
  store %"struct.std::__detail::_Hash_node"* %__p, %"struct.std::__detail::_Hash_node"** %2, align 8
  %3 = load %"struct.std::__detail::_Node_iterator"** %1
  %4 = bitcast %"struct.std::__detail::_Node_iterator"* %3 to %"struct.std::__detail::_Node_iterator_base"*
  %5 = load %"struct.std::__detail::_Hash_node"** %2, align 8
  call void @_ZNSt8__detail19_Node_iterator_baseIP4NodeLb0EEC2EPNS_10_Hash_nodeIS2_Lb0EEE(%"struct.std::__detail::_Node_iterator_base"* %4, %"struct.std::__detail::_Hash_node"* %5) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8__detail19_Node_iterator_baseIP4NodeLb0EEC2EPNS_10_Hash_nodeIS2_Lb0EEE(%"struct.std::__detail::_Node_iterator_base"* %this, %"struct.std::__detail::_Hash_node"* %__p) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Node_iterator_base"*, align 8
  %2 = alloca %"struct.std::__detail::_Hash_node"*, align 8
  store %"struct.std::__detail::_Node_iterator_base"* %this, %"struct.std::__detail::_Node_iterator_base"** %1, align 8
  store %"struct.std::__detail::_Hash_node"* %__p, %"struct.std::__detail::_Hash_node"** %2, align 8
  %3 = load %"struct.std::__detail::_Node_iterator_base"** %1
  %4 = getelementptr inbounds %"struct.std::__detail::_Node_iterator_base"* %3, i32 0, i32 0
  %5 = load %"struct.std::__detail::_Hash_node"** %2, align 8
  store %"struct.std::__detail::_Hash_node"* %5, %"struct.std::__detail::_Hash_node"** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node"* @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE4findERKS1_(%"class.std::_Hashtable"* %this, %struct.Node** %__k) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Node_iterator", align 8
  %2 = alloca %"class.std::_Hashtable"*, align 8
  %3 = alloca %struct.Node**, align 8
  %__code = alloca i64, align 8
  %__n = alloca i64, align 8
  %__p = alloca %"struct.std::__detail::_Hash_node"*, align 8
  store %"class.std::_Hashtable"* %this, %"class.std::_Hashtable"** %2, align 8
  store %struct.Node** %__k, %struct.Node*** %3, align 8
  %4 = load %"class.std::_Hashtable"** %2
  %5 = bitcast %"class.std::_Hashtable"* %4 to %"struct.std::__detail::_Hash_code_base"*
  %6 = load %struct.Node*** %3, align 8
  %7 = call i64 @_ZNKSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE12_M_hash_codeERKS2_(%"struct.std::__detail::_Hash_code_base"* %5, %struct.Node** %6)
  store i64 %7, i64* %__code, align 8
  %8 = load %struct.Node*** %3, align 8
  %9 = load i64* %__code, align 8
  %10 = call i64 @_ZNKSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_bucket_indexERKS1_m(%"class.std::_Hashtable"* %4, %struct.Node** %8, i64 %9)
  store i64 %10, i64* %__n, align 8
  %11 = load i64* %__n, align 8
  %12 = load %struct.Node*** %3, align 8
  %13 = load i64* %__code, align 8
  %14 = call %"struct.std::__detail::_Hash_node"* @_ZNKSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKS1_m(%"class.std::_Hashtable"* %4, i64 %11, %struct.Node** %12, i64 %13)
  store %"struct.std::__detail::_Hash_node"* %14, %"struct.std::__detail::_Hash_node"** %__p, align 8
  %15 = load %"struct.std::__detail::_Hash_node"** %__p, align 8
  %16 = icmp ne %"struct.std::__detail::_Hash_node"* %15, null
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %0
  %18 = load %"struct.std::__detail::_Hash_node"** %__p, align 8
  call void @_ZNSt8__detail14_Node_iteratorIP4NodeLb1ELb0EEC2EPNS_10_Hash_nodeIS2_Lb0EEE(%"struct.std::__detail::_Node_iterator"* %1, %"struct.std::__detail::_Hash_node"* %18) #0
  br label %23

; <label>:19                                      ; preds = %0
  %20 = call %"struct.std::__detail::_Hash_node"* @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE3endEv(%"class.std::_Hashtable"* %4) #0
  %21 = getelementptr %"struct.std::__detail::_Node_iterator"* %1, i32 0, i32 0
  %22 = getelementptr %"struct.std::__detail::_Node_iterator_base"* %21, i32 0, i32 0
  store %"struct.std::__detail::_Hash_node"* %20, %"struct.std::__detail::_Hash_node"** %22
  br label %23

; <label>:23                                      ; preds = %19, %17
  %24 = getelementptr %"struct.std::__detail::_Node_iterator"* %1, i32 0, i32 0
  %25 = getelementptr %"struct.std::__detail::_Node_iterator_base"* %24, i32 0, i32 0
  %26 = load %"struct.std::__detail::_Hash_node"** %25
  ret %"struct.std::__detail::_Hash_node"* %26
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE12_M_hash_codeERKS2_(%"struct.std::__detail::_Hash_code_base"* %this, %struct.Node** %__k) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hash_code_base"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"struct.std::__detail::_Hash_code_base"* %this, %"struct.std::__detail::_Hash_code_base"** %1, align 8
  store %struct.Node** %__k, %struct.Node*** %2, align 8
  %3 = load %"struct.std::__detail::_Hash_code_base"** %1
  %4 = call %"struct.std::hash"* @_ZNKSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE5_M_h1Ev(%"struct.std::__detail::_Hash_code_base"* %3)
  %5 = load %struct.Node*** %2, align 8
  %6 = load %struct.Node** %5, align 8
  %7 = call i64 @_ZNKSt4hashIP4NodeEclES1_(%"struct.std::hash"* %4, %struct.Node* %6) #0
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_bucket_indexERKS1_m(%"class.std::_Hashtable"* %this, %struct.Node** %__k, i64 %__c) #3 align 2 {
  %1 = alloca %"class.std::_Hashtable"*, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca i64, align 8
  store %"class.std::_Hashtable"* %this, %"class.std::_Hashtable"** %1, align 8
  store %struct.Node** %__k, %struct.Node*** %2, align 8
  store i64 %__c, i64* %3, align 8
  %4 = load %"class.std::_Hashtable"** %1
  %5 = bitcast %"class.std::_Hashtable"* %4 to %"struct.std::__detail::_Hash_code_base"*
  %6 = load %struct.Node*** %2, align 8
  %7 = load i64* %3, align 8
  %8 = getelementptr inbounds %"class.std::_Hashtable"* %4, i32 0, i32 1
  %9 = load i64* %8, align 8
  %10 = call i64 @_ZNKSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE15_M_bucket_indexERKS2_mm(%"struct.std::__detail::_Hash_code_base"* %5, %struct.Node** %6, i64 %7, i64 %9)
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node"* @_ZNKSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKS1_m(%"class.std::_Hashtable"* %this, i64 %__bkt, %struct.Node** %__key, i64 %__c) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hash_node"*, align 8
  %2 = alloca %"class.std::_Hashtable"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.Node**, align 8
  %5 = alloca i64, align 8
  %__before_n = alloca %"struct.std::__detail::_Hash_node_base"*, align 8
  store %"class.std::_Hashtable"* %this, %"class.std::_Hashtable"** %2, align 8
  store i64 %__bkt, i64* %3, align 8
  store %struct.Node** %__key, %struct.Node*** %4, align 8
  store i64 %__c, i64* %5, align 8
  %6 = load %"class.std::_Hashtable"** %2
  %7 = load i64* %3, align 8
  %8 = load %struct.Node*** %4, align 8
  %9 = load i64* %5, align 8
  %10 = call %"struct.std::__detail::_Hash_node_base"* @_ZNKSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS1_m(%"class.std::_Hashtable"* %6, i64 %7, %struct.Node** %8, i64 %9)
  store %"struct.std::__detail::_Hash_node_base"* %10, %"struct.std::__detail::_Hash_node_base"** %__before_n, align 8
  %11 = load %"struct.std::__detail::_Hash_node_base"** %__before_n, align 8
  %12 = icmp ne %"struct.std::__detail::_Hash_node_base"* %11, null
  br i1 %12, label %13, label %18

; <label>:13                                      ; preds = %0
  %14 = load %"struct.std::__detail::_Hash_node_base"** %__before_n, align 8
  %15 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %14, i32 0, i32 0
  %16 = load %"struct.std::__detail::_Hash_node_base"** %15, align 8
  %17 = bitcast %"struct.std::__detail::_Hash_node_base"* %16 to %"struct.std::__detail::_Hash_node"*
  store %"struct.std::__detail::_Hash_node"* %17, %"struct.std::__detail::_Hash_node"** %1
  br label %19

; <label>:18                                      ; preds = %0
  store %"struct.std::__detail::_Hash_node"* null, %"struct.std::__detail::_Hash_node"** %1
  br label %19

; <label>:19                                      ; preds = %18, %13
  %20 = load %"struct.std::__detail::_Hash_node"** %1
  ret %"struct.std::__detail::_Hash_node"* %20
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node_base"* @_ZNKSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS1_m(%"class.std::_Hashtable"* %this, i64 %__n, %struct.Node** %__k, i64 %__code) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hash_node_base"*, align 8
  %2 = alloca %"class.std::_Hashtable"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.Node**, align 8
  %5 = alloca i64, align 8
  %__prev_p = alloca %"struct.std::__detail::_Hash_node_base"*, align 8
  %__p = alloca %"struct.std::__detail::_Hash_node"*, align 8
  store %"class.std::_Hashtable"* %this, %"class.std::_Hashtable"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store %struct.Node** %__k, %struct.Node*** %4, align 8
  store i64 %__code, i64* %5, align 8
  %6 = load %"class.std::_Hashtable"** %2
  %7 = load i64* %3, align 8
  %8 = getelementptr inbounds %"class.std::_Hashtable"* %6, i32 0, i32 0
  %9 = load %"struct.std::__detail::_Hash_node_base"*** %8, align 8
  %10 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"** %9, i64 %7
  %11 = load %"struct.std::__detail::_Hash_node_base"** %10, align 8
  store %"struct.std::__detail::_Hash_node_base"* %11, %"struct.std::__detail::_Hash_node_base"** %__prev_p, align 8
  %12 = load %"struct.std::__detail::_Hash_node_base"** %__prev_p, align 8
  %13 = icmp ne %"struct.std::__detail::_Hash_node_base"* %12, null
  br i1 %13, label %15, label %14

; <label>:14                                      ; preds = %0
  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %1
  br label %48

; <label>:15                                      ; preds = %0
  %16 = load %"struct.std::__detail::_Hash_node_base"** %__prev_p, align 8
  %17 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %16, i32 0, i32 0
  %18 = load %"struct.std::__detail::_Hash_node_base"** %17, align 8
  %19 = bitcast %"struct.std::__detail::_Hash_node_base"* %18 to %"struct.std::__detail::_Hash_node"*
  store %"struct.std::__detail::_Hash_node"* %19, %"struct.std::__detail::_Hash_node"** %__p, align 8
  br label %20

; <label>:20                                      ; preds = %44, %15
  %21 = bitcast %"class.std::_Hashtable"* %6 to %"struct.std::__detail::_Hashtable_base"*
  %22 = load %struct.Node*** %4, align 8
  %23 = load i64* %5, align 8
  %24 = load %"struct.std::__detail::_Hash_node"** %__p, align 8
  %25 = call zeroext i1 @_ZNKSt8__detail15_Hashtable_baseIP4NodeS2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_equalsERKS2_mPNS_10_Hash_nodeIS2_Lb0EEE(%"struct.std::__detail::_Hashtable_base"* %21, %struct.Node** %22, i64 %23, %"struct.std::__detail::_Hash_node"* %24)
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %20
  %27 = load %"struct.std::__detail::_Hash_node_base"** %__prev_p, align 8
  store %"struct.std::__detail::_Hash_node_base"* %27, %"struct.std::__detail::_Hash_node_base"** %1
  br label %48

; <label>:28                                      ; preds = %20
  %29 = load %"struct.std::__detail::_Hash_node"** %__p, align 8
  %30 = bitcast %"struct.std::__detail::_Hash_node"* %29 to %"struct.std::__detail::_Hash_node_base"*
  %31 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %30, i32 0, i32 0
  %32 = load %"struct.std::__detail::_Hash_node_base"** %31, align 8
  %33 = icmp ne %"struct.std::__detail::_Hash_node_base"* %32, null
  br i1 %33, label %34, label %40

; <label>:34                                      ; preds = %28
  %35 = load %"struct.std::__detail::_Hash_node"** %__p, align 8
  %36 = call %"struct.std::__detail::_Hash_node"* @_ZNKSt8__detail10_Hash_nodeIP4NodeLb0EE7_M_nextEv(%"struct.std::__detail::_Hash_node"* %35) #0
  %37 = call i64 @_ZNKSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_bucket_indexEPNS3_10_Hash_nodeIS1_Lb0EEE(%"class.std::_Hashtable"* %6, %"struct.std::__detail::_Hash_node"* %36) #0
  %38 = load i64* %3, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %34, %28
  br label %47

; <label>:41                                      ; preds = %34
  %42 = load %"struct.std::__detail::_Hash_node"** %__p, align 8
  %43 = bitcast %"struct.std::__detail::_Hash_node"* %42 to %"struct.std::__detail::_Hash_node_base"*
  store %"struct.std::__detail::_Hash_node_base"* %43, %"struct.std::__detail::_Hash_node_base"** %__prev_p, align 8
  br label %44

; <label>:44                                      ; preds = %41
  %45 = load %"struct.std::__detail::_Hash_node"** %__p, align 8
  %46 = call %"struct.std::__detail::_Hash_node"* @_ZNKSt8__detail10_Hash_nodeIP4NodeLb0EE7_M_nextEv(%"struct.std::__detail::_Hash_node"* %45) #0
  store %"struct.std::__detail::_Hash_node"* %46, %"struct.std::__detail::_Hash_node"** %__p, align 8
  br label %20

; <label>:47                                      ; preds = %40
  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %1
  br label %48

; <label>:48                                      ; preds = %47, %26, %14
  %49 = load %"struct.std::__detail::_Hash_node_base"** %1
  ret %"struct.std::__detail::_Hash_node_base"* %49
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt8__detail15_Hashtable_baseIP4NodeS2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_equalsERKS2_mPNS_10_Hash_nodeIS2_Lb0EEE(%"struct.std::__detail::_Hashtable_base"* %this, %struct.Node** %__k, i64 %__c, %"struct.std::__detail::_Hash_node"* %__n) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hashtable_base"*, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca i64, align 8
  %4 = alloca %"struct.std::__detail::_Hash_node"*, align 8
  store %"struct.std::__detail::_Hashtable_base"* %this, %"struct.std::__detail::_Hashtable_base"** %1, align 8
  store %struct.Node** %__k, %struct.Node*** %2, align 8
  store i64 %__c, i64* %3, align 8
  store %"struct.std::__detail::_Hash_node"* %__n, %"struct.std::__detail::_Hash_node"** %4, align 8
  %5 = load %"struct.std::__detail::_Hashtable_base"** %1
  %6 = call %"struct.std::equal_to"* @_ZNKSt8__detail15_Hashtable_baseIP4NodeS2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb1ELb1EEEE5_M_eqEv(%"struct.std::__detail::_Hashtable_base"* %5)
  %7 = bitcast %"struct.std::__detail::_Hashtable_base"* %5 to %"struct.std::__detail::_Hash_code_base"*
  %8 = call %"struct.std::__detail::_Identity"* @_ZNKSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE10_M_extractEv(%"struct.std::__detail::_Hash_code_base"* %7)
  %9 = load %struct.Node*** %2, align 8
  %10 = load i64* %3, align 8
  %11 = load %"struct.std::__detail::_Hash_node"** %4, align 8
  %12 = call zeroext i1 @_ZNSt8__detail13_Equal_helperIP4NodeS2_NS_9_IdentityESt8equal_toIS2_EmLb0EE9_S_equalsERKS5_RKS3_RKS2_mPNS_10_Hash_nodeIS2_Lb0EEE(%"struct.std::equal_to"* %6, %"struct.std::__detail::_Identity"* %8, %struct.Node** %9, i64 %10, %"struct.std::__detail::_Hash_node"* %11)
  ret i1 %12
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_bucket_indexEPNS3_10_Hash_nodeIS1_Lb0EEE(%"class.std::_Hashtable"* %this, %"struct.std::__detail::_Hash_node"* %__n) #3 align 2 {
  %1 = alloca %"class.std::_Hashtable"*, align 8
  %2 = alloca %"struct.std::__detail::_Hash_node"*, align 8
  store %"class.std::_Hashtable"* %this, %"class.std::_Hashtable"** %1, align 8
  store %"struct.std::__detail::_Hash_node"* %__n, %"struct.std::__detail::_Hash_node"** %2, align 8
  %3 = load %"class.std::_Hashtable"** %1
  %4 = bitcast %"class.std::_Hashtable"* %3 to %"struct.std::__detail::_Hash_code_base"*
  %5 = load %"struct.std::__detail::_Hash_node"** %2, align 8
  %6 = getelementptr inbounds %"class.std::_Hashtable"* %3, i32 0, i32 1
  %7 = load i64* %6, align 8
  %8 = call i64 @_ZNKSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE15_M_bucket_indexEPKNS_10_Hash_nodeIS2_Lb0EEEm(%"struct.std::__detail::_Hash_code_base"* %4, %"struct.std::__detail::_Hash_node"* %5, i64 %7) #0
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node"* @_ZNKSt8__detail10_Hash_nodeIP4NodeLb0EE7_M_nextEv(%"struct.std::__detail::_Hash_node"* %this) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hash_node"*, align 8
  store %"struct.std::__detail::_Hash_node"* %this, %"struct.std::__detail::_Hash_node"** %1, align 8
  %2 = load %"struct.std::__detail::_Hash_node"** %1
  %3 = bitcast %"struct.std::__detail::_Hash_node"* %2 to %"struct.std::__detail::_Hash_node_base"*
  %4 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %3, i32 0, i32 0
  %5 = load %"struct.std::__detail::_Hash_node_base"** %4, align 8
  %6 = bitcast %"struct.std::__detail::_Hash_node_base"* %5 to %"struct.std::__detail::_Hash_node"*
  ret %"struct.std::__detail::_Hash_node"* %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE15_M_bucket_indexEPKNS_10_Hash_nodeIS2_Lb0EEEm(%"struct.std::__detail::_Hash_code_base"* %this, %"struct.std::__detail::_Hash_node"* %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hash_code_base"*, align 8
  %2 = alloca %"struct.std::__detail::_Hash_node"*, align 8
  %3 = alloca i64, align 8
  store %"struct.std::__detail::_Hash_code_base"* %this, %"struct.std::__detail::_Hash_code_base"** %1, align 8
  store %"struct.std::__detail::_Hash_node"* %__p, %"struct.std::__detail::_Hash_node"** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"struct.std::__detail::_Hash_code_base"** %1
  %5 = call %"struct.std::__detail::_Mod_range_hashing"* @_ZNKSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE5_M_h2Ev(%"struct.std::__detail::_Hash_code_base"* %4)
  %6 = call %"struct.std::hash"* @_ZNKSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE5_M_h1Ev(%"struct.std::__detail::_Hash_code_base"* %4)
  %7 = call %"struct.std::__detail::_Identity"* @_ZNKSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE10_M_extractEv(%"struct.std::__detail::_Hash_code_base"* %4)
  %8 = load %"struct.std::__detail::_Hash_node"** %2, align 8
  %9 = bitcast %"struct.std::__detail::_Hash_node"* %8 to %"struct.std::__detail::_Hash_node_value_base"*
  %10 = call %struct.Node** @_ZNKSt8__detail21_Hash_node_value_baseIP4NodeE4_M_vEv(%"struct.std::__detail::_Hash_node_value_base"* %9) #0
  %11 = call %struct.Node** @_ZNKSt8__detail9_IdentityclIRKP4NodeEEOT_S7_(%"struct.std::__detail::_Identity"* %7, %struct.Node** %10)
  %12 = load %struct.Node** %11
  %13 = call i64 @_ZNKSt4hashIP4NodeEclES1_(%"struct.std::hash"* %6, %struct.Node* %12) #0
  %14 = load i64* %3, align 8
  %15 = call i64 @_ZNKSt8__detail18_Mod_range_hashingclEmm(%"struct.std::__detail::_Mod_range_hashing"* %5, i64 %13, i64 %14) #0
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Mod_range_hashing"* @_ZNKSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE5_M_h2Ev(%"struct.std::__detail::_Hash_code_base"* %this) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hash_code_base"*, align 8
  store %"struct.std::__detail::_Hash_code_base"* %this, %"struct.std::__detail::_Hash_code_base"** %1, align 8
  %2 = load %"struct.std::__detail::_Hash_code_base"** %1
  %3 = bitcast %"struct.std::__detail::_Hash_code_base"* %2 to %"struct.std::__detail::_Hashtable_ebo_helper.1"*
  %4 = call %"struct.std::__detail::_Mod_range_hashing"* @_ZNSt8__detail21_Hashtable_ebo_helperILi2ENS_18_Mod_range_hashingELb1EE7_S_cgetERKS2_(%"struct.std::__detail::_Hashtable_ebo_helper.1"* %3)
  ret %"struct.std::__detail::_Mod_range_hashing"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt8__detail18_Mod_range_hashingclEmm(%"struct.std::__detail::_Mod_range_hashing"* %this, i64 %__num, i64 %__den) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Mod_range_hashing"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store %"struct.std::__detail::_Mod_range_hashing"* %this, %"struct.std::__detail::_Mod_range_hashing"** %1, align 8
  store i64 %__num, i64* %2, align 8
  store i64 %__den, i64* %3, align 8
  %4 = load %"struct.std::__detail::_Mod_range_hashing"** %1
  %5 = load i64* %2, align 8
  %6 = load i64* %3, align 8
  %7 = urem i64 %5, %6
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::hash"* @_ZNKSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE5_M_h1Ev(%"struct.std::__detail::_Hash_code_base"* %this) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hash_code_base"*, align 8
  store %"struct.std::__detail::_Hash_code_base"* %this, %"struct.std::__detail::_Hash_code_base"** %1, align 8
  %2 = load %"struct.std::__detail::_Hash_code_base"** %1
  %3 = bitcast %"struct.std::__detail::_Hash_code_base"* %2 to %"struct.std::__detail::_Hashtable_ebo_helper.0"*
  %4 = call %"struct.std::hash"* @_ZNSt8__detail21_Hashtable_ebo_helperILi1ESt4hashIP4NodeELb1EE7_S_cgetERKS5_(%"struct.std::__detail::_Hashtable_ebo_helper.0"* %3)
  ret %"struct.std::hash"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt4hashIP4NodeEclES1_(%"struct.std::hash"* %this, %struct.Node* %__p) #3 align 2 {
  %1 = alloca %"struct.std::hash"*, align 8
  %2 = alloca %struct.Node*, align 8
  store %"struct.std::hash"* %this, %"struct.std::hash"** %1, align 8
  store %struct.Node* %__p, %struct.Node** %2, align 8
  %3 = load %"struct.std::hash"** %1
  %4 = load %struct.Node** %2, align 8
  %5 = ptrtoint %struct.Node* %4 to i64
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Identity"* @_ZNKSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE10_M_extractEv(%"struct.std::__detail::_Hash_code_base"* %this) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hash_code_base"*, align 8
  store %"struct.std::__detail::_Hash_code_base"* %this, %"struct.std::__detail::_Hash_code_base"** %1, align 8
  %2 = load %"struct.std::__detail::_Hash_code_base"** %1
  %3 = bitcast %"struct.std::__detail::_Hash_code_base"* %2 to %"struct.std::__detail::_Hashtable_ebo_helper"*
  %4 = call %"struct.std::__detail::_Identity"* @_ZNSt8__detail21_Hashtable_ebo_helperILi0ENS_9_IdentityELb1EE7_S_cgetERKS2_(%"struct.std::__detail::_Hashtable_ebo_helper"* %3)
  ret %"struct.std::__detail::_Identity"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNKSt8__detail9_IdentityclIRKP4NodeEEOT_S7_(%"struct.std::__detail::_Identity"* %this, %struct.Node** %__x) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Identity"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"struct.std::__detail::_Identity"* %this, %"struct.std::__detail::_Identity"** %1, align 8
  store %struct.Node** %__x, %struct.Node*** %2, align 8
  %3 = load %"struct.std::__detail::_Identity"** %1
  %4 = load %struct.Node*** %2, align 8
  %5 = call %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %4) #0
  ret %struct.Node** %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNKSt8__detail21_Hash_node_value_baseIP4NodeE4_M_vEv(%"struct.std::__detail::_Hash_node_value_base"* %this) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hash_node_value_base"*, align 8
  store %"struct.std::__detail::_Hash_node_value_base"* %this, %"struct.std::__detail::_Hash_node_value_base"** %1, align 8
  %2 = load %"struct.std::__detail::_Hash_node_value_base"** %1
  %3 = call %struct.Node** @_ZNKSt8__detail21_Hash_node_value_baseIP4NodeE9_M_valptrEv(%"struct.std::__detail::_Hash_node_value_base"* %2) #0
  ret %struct.Node** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNKSt8__detail21_Hash_node_value_baseIP4NodeE9_M_valptrEv(%"struct.std::__detail::_Hash_node_value_base"* %this) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hash_node_value_base"*, align 8
  store %"struct.std::__detail::_Hash_node_value_base"* %this, %"struct.std::__detail::_Hash_node_value_base"** %1, align 8
  %2 = load %"struct.std::__detail::_Hash_node_value_base"** %1
  %3 = getelementptr inbounds %"struct.std::__detail::_Hash_node_value_base"* %2, i32 0, i32 1
  %4 = call %struct.Node** @_ZNK9__gnu_cxx16__aligned_bufferIP4NodeE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_buffer"* %3) #0
  ret %struct.Node** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNK9__gnu_cxx16__aligned_bufferIP4NodeE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_buffer"* %this) #3 align 2 {
  %1 = alloca %"struct.__gnu_cxx::__aligned_buffer"*, align 8
  store %"struct.__gnu_cxx::__aligned_buffer"* %this, %"struct.__gnu_cxx::__aligned_buffer"** %1, align 8
  %2 = load %"struct.__gnu_cxx::__aligned_buffer"** %1
  %3 = call i8* @_ZNK9__gnu_cxx16__aligned_bufferIP4NodeE7_M_addrEv(%"struct.__gnu_cxx::__aligned_buffer"* %2) #0
  %4 = bitcast i8* %3 to %struct.Node**
  ret %struct.Node** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i8* @_ZNK9__gnu_cxx16__aligned_bufferIP4NodeE7_M_addrEv(%"struct.__gnu_cxx::__aligned_buffer"* %this) #3 align 2 {
  %1 = alloca %"struct.__gnu_cxx::__aligned_buffer"*, align 8
  store %"struct.__gnu_cxx::__aligned_buffer"* %this, %"struct.__gnu_cxx::__aligned_buffer"** %1, align 8
  %2 = load %"struct.__gnu_cxx::__aligned_buffer"** %1
  %3 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_buffer"* %2, i32 0, i32 0
  %4 = bitcast %"union.std::aligned_storage<8, 8>::type"* %3 to i8*
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %__t) #3 {
  %1 = alloca %struct.Node**, align 8
  store %struct.Node** %__t, %struct.Node*** %1, align 8
  %2 = load %struct.Node*** %1, align 8
  ret %struct.Node** %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Identity"* @_ZNSt8__detail21_Hashtable_ebo_helperILi0ENS_9_IdentityELb1EE7_S_cgetERKS2_(%"struct.std::__detail::_Hashtable_ebo_helper"* %__eboh) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hashtable_ebo_helper"*, align 8
  store %"struct.std::__detail::_Hashtable_ebo_helper"* %__eboh, %"struct.std::__detail::_Hashtable_ebo_helper"** %1, align 8
  %2 = load %"struct.std::__detail::_Hashtable_ebo_helper"** %1, align 8
  %3 = bitcast %"struct.std::__detail::_Hashtable_ebo_helper"* %2 to %"struct.std::__detail::_Identity"*
  ret %"struct.std::__detail::_Identity"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::hash"* @_ZNSt8__detail21_Hashtable_ebo_helperILi1ESt4hashIP4NodeELb1EE7_S_cgetERKS5_(%"struct.std::__detail::_Hashtable_ebo_helper.0"* %__eboh) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hashtable_ebo_helper.0"*, align 8
  store %"struct.std::__detail::_Hashtable_ebo_helper.0"* %__eboh, %"struct.std::__detail::_Hashtable_ebo_helper.0"** %1, align 8
  %2 = load %"struct.std::__detail::_Hashtable_ebo_helper.0"** %1, align 8
  %3 = bitcast %"struct.std::__detail::_Hashtable_ebo_helper.0"* %2 to %"struct.std::hash"*
  ret %"struct.std::hash"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Mod_range_hashing"* @_ZNSt8__detail21_Hashtable_ebo_helperILi2ENS_18_Mod_range_hashingELb1EE7_S_cgetERKS2_(%"struct.std::__detail::_Hashtable_ebo_helper.1"* %__eboh) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hashtable_ebo_helper.1"*, align 8
  store %"struct.std::__detail::_Hashtable_ebo_helper.1"* %__eboh, %"struct.std::__detail::_Hashtable_ebo_helper.1"** %1, align 8
  %2 = load %"struct.std::__detail::_Hashtable_ebo_helper.1"** %1, align 8
  %3 = bitcast %"struct.std::__detail::_Hashtable_ebo_helper.1"* %2 to %"struct.std::__detail::_Mod_range_hashing"*
  ret %"struct.std::__detail::_Mod_range_hashing"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNSt8__detail13_Equal_helperIP4NodeS2_NS_9_IdentityESt8equal_toIS2_EmLb0EE9_S_equalsERKS5_RKS3_RKS2_mPNS_10_Hash_nodeIS2_Lb0EEE(%"struct.std::equal_to"* %__eq, %"struct.std::__detail::_Identity"* %__extract, %struct.Node** %__k, i64, %"struct.std::__detail::_Hash_node"* %__n) #3 align 2 {
  %2 = alloca %"struct.std::equal_to"*, align 8
  %3 = alloca %"struct.std::__detail::_Identity"*, align 8
  %4 = alloca %struct.Node**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"struct.std::__detail::_Hash_node"*, align 8
  store %"struct.std::equal_to"* %__eq, %"struct.std::equal_to"** %2, align 8
  store %"struct.std::__detail::_Identity"* %__extract, %"struct.std::__detail::_Identity"** %3, align 8
  store %struct.Node** %__k, %struct.Node*** %4, align 8
  store i64 %0, i64* %5, align 8
  store %"struct.std::__detail::_Hash_node"* %__n, %"struct.std::__detail::_Hash_node"** %6, align 8
  %7 = load %"struct.std::equal_to"** %2, align 8
  %8 = load %struct.Node*** %4, align 8
  %9 = load %"struct.std::__detail::_Identity"** %3, align 8
  %10 = load %"struct.std::__detail::_Hash_node"** %6, align 8
  %11 = bitcast %"struct.std::__detail::_Hash_node"* %10 to %"struct.std::__detail::_Hash_node_value_base"*
  %12 = call %struct.Node** @_ZNSt8__detail21_Hash_node_value_baseIP4NodeE4_M_vEv(%"struct.std::__detail::_Hash_node_value_base"* %11) #0
  %13 = call %struct.Node** @_ZNKSt8__detail9_IdentityclIRP4NodeEEOT_S6_(%"struct.std::__detail::_Identity"* %9, %struct.Node** %12)
  %14 = call zeroext i1 @_ZNKSt8equal_toIP4NodeEclERKS1_S4_(%"struct.std::equal_to"* %7, %struct.Node** %8, %struct.Node** %13)
  ret i1 %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::equal_to"* @_ZNKSt8__detail15_Hashtable_baseIP4NodeS2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb1ELb1EEEE5_M_eqEv(%"struct.std::__detail::_Hashtable_base"* %this) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hashtable_base"*, align 8
  store %"struct.std::__detail::_Hashtable_base"* %this, %"struct.std::__detail::_Hashtable_base"** %1, align 8
  %2 = load %"struct.std::__detail::_Hashtable_base"** %1
  %3 = bitcast %"struct.std::__detail::_Hashtable_base"* %2 to %"struct.std::__detail::_Hashtable_ebo_helper.2"*
  %4 = call %"struct.std::equal_to"* @_ZNSt8__detail21_Hashtable_ebo_helperILi0ESt8equal_toIP4NodeELb1EE7_S_cgetERKS5_(%"struct.std::__detail::_Hashtable_ebo_helper.2"* %3)
  ret %"struct.std::equal_to"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::equal_to"* @_ZNSt8__detail21_Hashtable_ebo_helperILi0ESt8equal_toIP4NodeELb1EE7_S_cgetERKS5_(%"struct.std::__detail::_Hashtable_ebo_helper.2"* %__eboh) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hashtable_ebo_helper.2"*, align 8
  store %"struct.std::__detail::_Hashtable_ebo_helper.2"* %__eboh, %"struct.std::__detail::_Hashtable_ebo_helper.2"** %1, align 8
  %2 = load %"struct.std::__detail::_Hashtable_ebo_helper.2"** %1, align 8
  %3 = bitcast %"struct.std::__detail::_Hashtable_ebo_helper.2"* %2 to %"struct.std::equal_to"*
  ret %"struct.std::equal_to"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt8equal_toIP4NodeEclERKS1_S4_(%"struct.std::equal_to"* %this, %struct.Node** %__x, %struct.Node** %__y) #3 align 2 {
  %1 = alloca %"struct.std::equal_to"*, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %struct.Node**, align 8
  store %"struct.std::equal_to"* %this, %"struct.std::equal_to"** %1, align 8
  store %struct.Node** %__x, %struct.Node*** %2, align 8
  store %struct.Node** %__y, %struct.Node*** %3, align 8
  %4 = load %"struct.std::equal_to"** %1
  %5 = load %struct.Node*** %2, align 8
  %6 = load %struct.Node** %5, align 8
  %7 = load %struct.Node*** %3, align 8
  %8 = load %struct.Node** %7, align 8
  %9 = icmp eq %struct.Node* %6, %8
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNKSt8__detail9_IdentityclIRP4NodeEEOT_S6_(%"struct.std::__detail::_Identity"* %this, %struct.Node** %__x) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Identity"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"struct.std::__detail::_Identity"* %this, %"struct.std::__detail::_Identity"** %1, align 8
  store %struct.Node** %__x, %struct.Node*** %2, align 8
  %3 = load %"struct.std::__detail::_Identity"** %1
  %4 = load %struct.Node*** %2, align 8
  %5 = call %struct.Node** @_ZSt7forwardIRP4NodeEOT_RNSt16remove_referenceIS3_E4typeE(%struct.Node** %4) #0
  ret %struct.Node** %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt8__detail21_Hash_node_value_baseIP4NodeE4_M_vEv(%"struct.std::__detail::_Hash_node_value_base"* %this) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hash_node_value_base"*, align 8
  store %"struct.std::__detail::_Hash_node_value_base"* %this, %"struct.std::__detail::_Hash_node_value_base"** %1, align 8
  %2 = load %"struct.std::__detail::_Hash_node_value_base"** %1
  %3 = call %struct.Node** @_ZNSt8__detail21_Hash_node_value_baseIP4NodeE9_M_valptrEv(%"struct.std::__detail::_Hash_node_value_base"* %2) #0
  ret %struct.Node** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt8__detail21_Hash_node_value_baseIP4NodeE9_M_valptrEv(%"struct.std::__detail::_Hash_node_value_base"* %this) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hash_node_value_base"*, align 8
  store %"struct.std::__detail::_Hash_node_value_base"* %this, %"struct.std::__detail::_Hash_node_value_base"** %1, align 8
  %2 = load %"struct.std::__detail::_Hash_node_value_base"** %1
  %3 = getelementptr inbounds %"struct.std::__detail::_Hash_node_value_base"* %2, i32 0, i32 1
  %4 = call %struct.Node** @_ZN9__gnu_cxx16__aligned_bufferIP4NodeE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_buffer"* %3) #0
  ret %struct.Node** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZN9__gnu_cxx16__aligned_bufferIP4NodeE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_buffer"* %this) #3 align 2 {
  %1 = alloca %"struct.__gnu_cxx::__aligned_buffer"*, align 8
  store %"struct.__gnu_cxx::__aligned_buffer"* %this, %"struct.__gnu_cxx::__aligned_buffer"** %1, align 8
  %2 = load %"struct.__gnu_cxx::__aligned_buffer"** %1
  %3 = call i8* @_ZN9__gnu_cxx16__aligned_bufferIP4NodeE7_M_addrEv(%"struct.__gnu_cxx::__aligned_buffer"* %2) #0
  %4 = bitcast i8* %3 to %struct.Node**
  ret %struct.Node** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i8* @_ZN9__gnu_cxx16__aligned_bufferIP4NodeE7_M_addrEv(%"struct.__gnu_cxx::__aligned_buffer"* %this) #3 align 2 {
  %1 = alloca %"struct.__gnu_cxx::__aligned_buffer"*, align 8
  store %"struct.__gnu_cxx::__aligned_buffer"* %this, %"struct.__gnu_cxx::__aligned_buffer"** %1, align 8
  %2 = load %"struct.__gnu_cxx::__aligned_buffer"** %1
  %3 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_buffer"* %2, i32 0, i32 0
  %4 = bitcast %"union.std::aligned_storage<8, 8>::type"* %3 to i8*
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt7forwardIRP4NodeEOT_RNSt16remove_referenceIS3_E4typeE(%struct.Node** %__t) #3 {
  %1 = alloca %struct.Node**, align 8
  store %struct.Node** %__t, %struct.Node*** %1, align 8
  %2 = load %struct.Node*** %1, align 8
  ret %struct.Node** %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE15_M_bucket_indexERKS2_mm(%"struct.std::__detail::_Hash_code_base"* %this, %struct.Node**, i64 %__c, i64 %__n) #3 align 2 {
  %2 = alloca %"struct.std::__detail::_Hash_code_base"*, align 8
  %3 = alloca %struct.Node**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %"struct.std::__detail::_Hash_code_base"* %this, %"struct.std::__detail::_Hash_code_base"** %2, align 8
  store %struct.Node** %0, %struct.Node*** %3, align 8
  store i64 %__c, i64* %4, align 8
  store i64 %__n, i64* %5, align 8
  %6 = load %"struct.std::__detail::_Hash_code_base"** %2
  %7 = call %"struct.std::__detail::_Mod_range_hashing"* @_ZNKSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE5_M_h2Ev(%"struct.std::__detail::_Hash_code_base"* %6)
  %8 = load i64* %4, align 8
  %9 = load i64* %5, align 8
  %10 = call i64 @_ZNKSt8__detail18_Mod_range_hashingclEmm(%"struct.std::__detail::_Mod_range_hashing"* %7, i64 %8, i64 %9) #0
  ret i64 %10
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
  %4 = call i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector"* %3, i64 1, i8* getelementptr inbounds ([28 x i8]* @.str4, i32 0, i32 0))
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #0

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

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #7

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
define linkonce_odr void @_ZNSt5dequeIP4NodeSaIS1_EE9pop_frontEv(%"class.std::deque"* %this) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %4, i32 0, i32 2
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %5, i32 0, i32 0
  %7 = load %struct.Node*** %6, align 8
  %8 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %9 = getelementptr inbounds %"class.std::_Deque_base"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %9, i32 0, i32 2
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator"* %10, i32 0, i32 2
  %12 = load %struct.Node*** %11, align 8
  %13 = getelementptr inbounds %struct.Node** %12, i64 -1
  %14 = icmp ne %struct.Node** %7, %13
  br i1 %14, label %15, label %30

; <label>:15                                      ; preds = %0
  %16 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %17 = getelementptr inbounds %"class.std::_Deque_base"* %16, i32 0, i32 0
  %18 = bitcast %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %17 to %"class.std::allocator.7"*
  %19 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %20 = getelementptr inbounds %"class.std::_Deque_base"* %19, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %20, i32 0, i32 2
  %22 = getelementptr inbounds %"struct.std::_Deque_iterator"* %21, i32 0, i32 0
  %23 = load %struct.Node*** %22, align 8
  call void @_ZNSt16allocator_traitsISaIP4NodeEE7destroyIS1_EEvRS2_PT_(%"class.std::allocator.7"* %18, %struct.Node** %23)
  %24 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %25 = getelementptr inbounds %"class.std::_Deque_base"* %24, i32 0, i32 0
  %26 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %25, i32 0, i32 2
  %27 = getelementptr inbounds %"struct.std::_Deque_iterator"* %26, i32 0, i32 0
  %28 = load %struct.Node*** %27, align 8
  %29 = getelementptr inbounds %struct.Node** %28, i32 1
  store %struct.Node** %29, %struct.Node*** %27, align 8
  br label %31

; <label>:30                                      ; preds = %0
  call void @_ZNSt5dequeIP4NodeSaIS1_EE16_M_pop_front_auxEv(%"class.std::deque"* %2)
  br label %31

; <label>:31                                      ; preds = %30, %15
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIP4NodeEE7destroyIS1_EEvRS2_PT_(%"class.std::allocator.7"* %__a, %struct.Node** %__p) #3 align 2 {
  %1 = alloca %"class.std::allocator.7"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"class.std::allocator.7"* %__a, %"class.std::allocator.7"** %1, align 8
  store %struct.Node** %__p, %struct.Node*** %2, align 8
  %3 = load %"class.std::allocator.7"** %1, align 8
  %4 = bitcast %"class.std::allocator.7"* %3 to %"class.__gnu_cxx::new_allocator.8"*
  %5 = load %struct.Node*** %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIP4NodeE7destroyIS2_EEvPT_(%"class.__gnu_cxx::new_allocator.8"* %4, %struct.Node** %5)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP4NodeSaIS1_EE16_M_pop_front_auxEv(%"class.std::deque"* %this) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = call %"class.std::allocator.7"* @_ZNSt11_Deque_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %3) #0
  %5 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %6 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %6, i32 0, i32 2
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator"* %7, i32 0, i32 0
  %9 = load %struct.Node*** %8, align 8
  call void @_ZNSt16allocator_traitsISaIP4NodeEE7destroyIS1_EEvRS2_PT_(%"class.std::allocator.7"* %4, %struct.Node** %9)
  %10 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %11 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %12 = getelementptr inbounds %"class.std::_Deque_base"* %11, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %12, i32 0, i32 2
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator"* %13, i32 0, i32 1
  %15 = load %struct.Node*** %14, align 8
  call void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE18_M_deallocate_nodeEPS1_(%"class.std::_Deque_base"* %10, %struct.Node** %15) #0
  %16 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %17 = getelementptr inbounds %"class.std::_Deque_base"* %16, i32 0, i32 0
  %18 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %17, i32 0, i32 2
  %19 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %20 = getelementptr inbounds %"class.std::_Deque_base"* %19, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %20, i32 0, i32 2
  %22 = getelementptr inbounds %"struct.std::_Deque_iterator"* %21, i32 0, i32 3
  %23 = load %struct.Node**** %22, align 8
  %24 = getelementptr inbounds %struct.Node*** %23, i64 1
  call void @_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_E11_M_set_nodeEPS3_(%"struct.std::_Deque_iterator"* %18, %struct.Node*** %24) #0
  %25 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %26 = getelementptr inbounds %"class.std::_Deque_base"* %25, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %26, i32 0, i32 2
  %28 = getelementptr inbounds %"struct.std::_Deque_iterator"* %27, i32 0, i32 1
  %29 = load %struct.Node*** %28, align 8
  %30 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %31 = getelementptr inbounds %"class.std::_Deque_base"* %30, i32 0, i32 0
  %32 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %31, i32 0, i32 2
  %33 = getelementptr inbounds %"struct.std::_Deque_iterator"* %32, i32 0, i32 0
  store %struct.Node** %29, %struct.Node*** %33, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.7"* @_ZNSt11_Deque_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %3 to %"class.std::allocator.7"*
  ret %"class.std::allocator.7"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE18_M_deallocate_nodeEPS1_(%"class.std::_Deque_base"* %this, %struct.Node** %__p) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store %struct.Node** %__p, %struct.Node*** %2, align 8
  %3 = load %"class.std::_Deque_base"** %1
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %4 to %"class.std::allocator.7"*
  %6 = load %struct.Node*** %2, align 8
  %7 = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  call void @_ZNSt16allocator_traitsISaIP4NodeEE10deallocateERS2_PS1_m(%"class.std::allocator.7"* %5, %struct.Node** %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_E11_M_set_nodeEPS3_(%"struct.std::_Deque_iterator"* %this, %struct.Node*** %__new_node) #3 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  %2 = alloca %struct.Node***, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  store %struct.Node*** %__new_node, %struct.Node**** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"** %1
  %4 = load %struct.Node**** %2, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 3
  store %struct.Node*** %4, %struct.Node**** %5, align 8
  %6 = load %struct.Node**** %2, align 8
  %7 = load %struct.Node*** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 1
  store %struct.Node** %7, %struct.Node*** %8, align 8
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 1
  %10 = load %struct.Node*** %9, align 8
  %11 = call i64 @_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_E14_S_buffer_sizeEv() #0
  %12 = getelementptr inbounds %struct.Node** %10, i64 %11
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 2
  store %struct.Node** %12, %struct.Node*** %13, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_E14_S_buffer_sizeEv() #3 align 2 {
  %1 = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  ret i64 %1
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64 @_ZSt16__deque_buf_sizem(i64 %__size) #4 {
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
define linkonce_odr void @_ZNSt16allocator_traitsISaIP4NodeEE10deallocateERS2_PS1_m(%"class.std::allocator.7"* %__a, %struct.Node** %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.7"*, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.7"* %__a, %"class.std::allocator.7"** %1, align 8
  store %struct.Node** %__p, %struct.Node*** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.7"** %1, align 8
  %5 = bitcast %"class.std::allocator.7"* %4 to %"class.__gnu_cxx::new_allocator.8"*
  %6 = load %struct.Node*** %2, align 8
  %7 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIP4NodeE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.8"* %5, %struct.Node** %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP4NodeE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.8"* %this, %struct.Node** %__p, i64) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  %3 = alloca %struct.Node**, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %2, align 8
  store %struct.Node** %__p, %struct.Node*** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.8"** %2
  %6 = load %struct.Node*** %3, align 8
  %7 = bitcast %struct.Node** %6 to i8*
  call void @_ZdlPv(i8* %7) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP4NodeE7destroyIS2_EEvPT_(%"class.__gnu_cxx::new_allocator.8"* %this, %struct.Node** %__p) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %1, align 8
  store %struct.Node** %__p, %struct.Node*** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.8"** %1
  %4 = load %struct.Node*** %2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt5dequeIP4NodeSaIS1_EE5frontEv(%"class.std::deque"* %this) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %3 = load %"class.std::deque"** %1
  call void @_ZNSt5dequeIP4NodeSaIS1_EE5beginEv(%"struct.std::_Deque_iterator"* sret %2, %"class.std::deque"* %3) #0
  %4 = call %struct.Node** @_ZNKSt15_Deque_iteratorIP4NodeRS1_PS1_EdeEv(%"struct.std::_Deque_iterator"* %2) #0
  ret %struct.Node** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP4NodeSaIS1_EE5beginEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %4, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EC2ERKS4_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* %5) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNKSt15_Deque_iteratorIP4NodeRS1_PS1_EdeEv(%"struct.std::_Deque_iterator"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  %2 = load %"struct.std::_Deque_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  %4 = load %struct.Node*** %3, align 8
  ret %struct.Node** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EC2ERKS4_(%"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"* %__x) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"** %1
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Deque_iterator"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %5, i32 0, i32 0
  %7 = load %struct.Node*** %6, align 8
  store %struct.Node** %7, %struct.Node*** %4, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 1
  %9 = load %"struct.std::_Deque_iterator"** %2, align 8
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator"* %9, i32 0, i32 1
  %11 = load %struct.Node*** %10, align 8
  store %struct.Node** %11, %struct.Node*** %8, align 8
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 2
  %13 = load %"struct.std::_Deque_iterator"** %2, align 8
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator"* %13, i32 0, i32 2
  %15 = load %struct.Node*** %14, align 8
  store %struct.Node** %15, %struct.Node*** %12, align 8
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 3
  %17 = load %"struct.std::_Deque_iterator"** %2, align 8
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator"* %17, i32 0, i32 3
  %19 = load %struct.Node**** %18, align 8
  store %struct.Node*** %19, %struct.Node**** %16, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt5dequeIP4NodeSaIS1_EE5emptyEv(%"class.std::deque"* %this) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %4, i32 0, i32 3
  %6 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %7, i32 0, i32 2
  %9 = call zeroext i1 @_ZSteqIP4NodeRS1_PS1_EbRKSt15_Deque_iteratorIT_T0_T1_ESA_(%"struct.std::_Deque_iterator"* %5, %"struct.std::_Deque_iterator"* %8) #0
  ret i1 %9
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr zeroext i1 @_ZSteqIP4NodeRS1_PS1_EbRKSt15_Deque_iteratorIT_T0_T1_ESA_(%"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"* %__y) #4 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %1, align 8
  store %"struct.std::_Deque_iterator"* %__y, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"** %1, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 0
  %5 = load %struct.Node*** %4, align 8
  %6 = load %"struct.std::_Deque_iterator"** %2, align 8
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator"* %6, i32 0, i32 0
  %8 = load %struct.Node*** %7, align 8
  %9 = icmp eq %struct.Node** %5, %8
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr { %"struct.std::__detail::_Hash_node"*, i8 } @_ZNSt8__detail12_Insert_baseIP4NodeS2_SaIS2_ENS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb1ELb1EEEE6insertERKS2_(%"struct.std::__detail::_Insert_base"* %this, %struct.Node** %__v) #3 align 2 {
  %1 = alloca %"struct.std::pair", align 8
  %2 = alloca %"struct.std::__detail::_Insert_base"*, align 8
  %3 = alloca %struct.Node**, align 8
  %__h = alloca %"class.std::_Hashtable"*, align 8
  %__node_gen = alloca %"struct.std::__detail::_AllocNode", align 8
  %4 = alloca %"struct.std::integral_constant", align 1
  store %"struct.std::__detail::_Insert_base"* %this, %"struct.std::__detail::_Insert_base"** %2, align 8
  store %struct.Node** %__v, %struct.Node*** %3, align 8
  %5 = load %"struct.std::__detail::_Insert_base"** %2
  %6 = call %"class.std::_Hashtable"* @_ZNSt8__detail12_Insert_baseIP4NodeS2_SaIS2_ENS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb1ELb1EEEE20_M_conjure_hashtableEv(%"struct.std::__detail::_Insert_base"* %5)
  store %"class.std::_Hashtable"* %6, %"class.std::_Hashtable"** %__h, align 8
  %7 = load %"class.std::_Hashtable"** %__h, align 8
  %8 = bitcast %"class.std::_Hashtable"* %7 to %"struct.std::__detail::_Hashtable_alloc"*
  call void @_ZNSt8__detail10_AllocNodeISaINS_10_Hash_nodeIP4NodeLb0EEEEEC2ERNS_16_Hashtable_allocIS5_EE(%"struct.std::__detail::_AllocNode"* %__node_gen, %"struct.std::__detail::_Hashtable_alloc"* %8)
  %9 = load %"class.std::_Hashtable"** %__h, align 8
  %10 = load %struct.Node*** %3, align 8
  %11 = call { %"struct.std::__detail::_Hash_node"*, i8 } @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKS1_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb0EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EE(%"class.std::_Hashtable"* %9, %struct.Node** %10, %"struct.std::__detail::_AllocNode"* %__node_gen)
  %12 = bitcast %"struct.std::pair"* %1 to { %"struct.std::__detail::_Hash_node"*, i8 }*
  %13 = getelementptr { %"struct.std::__detail::_Hash_node"*, i8 }* %12, i32 0, i32 0
  %14 = extractvalue { %"struct.std::__detail::_Hash_node"*, i8 } %11, 0
  store %"struct.std::__detail::_Hash_node"* %14, %"struct.std::__detail::_Hash_node"** %13, align 1
  %15 = getelementptr { %"struct.std::__detail::_Hash_node"*, i8 }* %12, i32 0, i32 1
  %16 = extractvalue { %"struct.std::__detail::_Hash_node"*, i8 } %11, 1
  store i8 %16, i8* %15, align 1
  %17 = bitcast %"struct.std::pair"* %1 to { %"struct.std::__detail::_Hash_node"*, i8 }*
  %18 = load { %"struct.std::__detail::_Hash_node"*, i8 }* %17, align 1
  ret { %"struct.std::__detail::_Hash_node"*, i8 } %18
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::_Hashtable"* @_ZNSt8__detail12_Insert_baseIP4NodeS2_SaIS2_ENS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb1ELb1EEEE20_M_conjure_hashtableEv(%"struct.std::__detail::_Insert_base"* %this) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Insert_base"*, align 8
  store %"struct.std::__detail::_Insert_base"* %this, %"struct.std::__detail::_Insert_base"** %1, align 8
  %2 = load %"struct.std::__detail::_Insert_base"** %1
  %3 = bitcast %"struct.std::__detail::_Insert_base"* %2 to %"class.std::_Hashtable"*
  ret %"class.std::_Hashtable"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8__detail10_AllocNodeISaINS_10_Hash_nodeIP4NodeLb0EEEEEC2ERNS_16_Hashtable_allocIS5_EE(%"struct.std::__detail::_AllocNode"* %this, %"struct.std::__detail::_Hashtable_alloc"* %__h) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::__detail::_AllocNode"*, align 8
  %2 = alloca %"struct.std::__detail::_Hashtable_alloc"*, align 8
  store %"struct.std::__detail::_AllocNode"* %this, %"struct.std::__detail::_AllocNode"** %1, align 8
  store %"struct.std::__detail::_Hashtable_alloc"* %__h, %"struct.std::__detail::_Hashtable_alloc"** %2, align 8
  %3 = load %"struct.std::__detail::_AllocNode"** %1
  %4 = getelementptr inbounds %"struct.std::__detail::_AllocNode"* %3, i32 0, i32 0
  %5 = load %"struct.std::__detail::_Hashtable_alloc"** %2, align 8
  store %"struct.std::__detail::_Hashtable_alloc"* %5, %"struct.std::__detail::_Hashtable_alloc"** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr { %"struct.std::__detail::_Hash_node"*, i8 } @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKS1_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb0EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EE(%"class.std::_Hashtable"* %this, %struct.Node** %__v, %"struct.std::__detail::_AllocNode"* %__node_gen) #3 align 2 {
  %1 = alloca %"struct.std::pair", align 8
  %2 = alloca %"class.std::_Hashtable"*, align 8
  %3 = alloca %struct.Node**, align 8
  %4 = alloca %"struct.std::__detail::_AllocNode"*, align 8
  %5 = alloca %"struct.std::integral_constant", align 1
  %__k = alloca %struct.Node**, align 8
  %__code = alloca i64, align 8
  %__bkt = alloca i64, align 8
  %__n = alloca %"struct.std::__detail::_Hash_node"*, align 8
  %6 = alloca %"struct.std::__detail::_Node_iterator", align 8
  %7 = alloca i8, align 1
  %8 = alloca %"struct.std::__detail::_Node_iterator", align 8
  %9 = alloca i8, align 1
  store %"class.std::_Hashtable"* %this, %"class.std::_Hashtable"** %2, align 8
  store %struct.Node** %__v, %struct.Node*** %3, align 8
  store %"struct.std::__detail::_AllocNode"* %__node_gen, %"struct.std::__detail::_AllocNode"** %4, align 8
  %10 = load %"class.std::_Hashtable"** %2
  %11 = bitcast %"class.std::_Hashtable"* %10 to %"struct.std::__detail::_Hash_code_base"*
  %12 = call %"struct.std::__detail::_Identity"* @_ZNSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE10_M_extractEv(%"struct.std::__detail::_Hash_code_base"* %11)
  %13 = load %struct.Node*** %3, align 8
  %14 = call %struct.Node** @_ZNKSt8__detail9_IdentityclIRKP4NodeEEOT_S7_(%"struct.std::__detail::_Identity"* %12, %struct.Node** %13)
  store %struct.Node** %14, %struct.Node*** %__k, align 8
  %15 = bitcast %"class.std::_Hashtable"* %10 to %"struct.std::__detail::_Hash_code_base"*
  %16 = load %struct.Node*** %__k, align 8
  %17 = call i64 @_ZNKSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE12_M_hash_codeERKS2_(%"struct.std::__detail::_Hash_code_base"* %15, %struct.Node** %16)
  store i64 %17, i64* %__code, align 8
  %18 = load %struct.Node*** %__k, align 8
  %19 = load i64* %__code, align 8
  %20 = call i64 @_ZNKSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_bucket_indexERKS1_m(%"class.std::_Hashtable"* %10, %struct.Node** %18, i64 %19)
  store i64 %20, i64* %__bkt, align 8
  %21 = load i64* %__bkt, align 8
  %22 = load %struct.Node*** %__k, align 8
  %23 = load i64* %__code, align 8
  %24 = call %"struct.std::__detail::_Hash_node"* @_ZNKSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKS1_m(%"class.std::_Hashtable"* %10, i64 %21, %struct.Node** %22, i64 %23)
  store %"struct.std::__detail::_Hash_node"* %24, %"struct.std::__detail::_Hash_node"** %__n, align 8
  %25 = load %"struct.std::__detail::_Hash_node"** %__n, align 8
  %26 = icmp ne %"struct.std::__detail::_Hash_node"* %25, null
  br i1 %26, label %27, label %35

; <label>:27                                      ; preds = %0
  %28 = load %"struct.std::__detail::_Hash_node"** %__n, align 8
  call void @_ZNSt8__detail14_Node_iteratorIP4NodeLb1ELb0EEC2EPNS_10_Hash_nodeIS2_Lb0EEE(%"struct.std::__detail::_Node_iterator"* %6, %"struct.std::__detail::_Hash_node"* %28) #0
  store i8 0, i8* %7
  %29 = call { %"struct.std::__detail::_Hash_node"*, i8 } @_ZSt9make_pairINSt8__detail14_Node_iteratorIP4NodeLb1ELb0EEEbESt4pairINSt17__decay_and_stripIT_E6__typeENS6_IT0_E6__typeEEOS7_OSA_(%"struct.std::__detail::_Node_iterator"* %6, i8* %7)
  %30 = bitcast %"struct.std::pair"* %1 to { %"struct.std::__detail::_Hash_node"*, i8 }*
  %31 = getelementptr { %"struct.std::__detail::_Hash_node"*, i8 }* %30, i32 0, i32 0
  %32 = extractvalue { %"struct.std::__detail::_Hash_node"*, i8 } %29, 0
  store %"struct.std::__detail::_Hash_node"* %32, %"struct.std::__detail::_Hash_node"** %31, align 1
  %33 = getelementptr { %"struct.std::__detail::_Hash_node"*, i8 }* %30, i32 0, i32 1
  %34 = extractvalue { %"struct.std::__detail::_Hash_node"*, i8 } %29, 1
  store i8 %34, i8* %33, align 1
  br label %52

; <label>:35                                      ; preds = %0
  %36 = load %"struct.std::__detail::_AllocNode"** %4, align 8
  %37 = load %struct.Node*** %3, align 8
  %38 = call %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %37) #0
  %39 = call %"struct.std::__detail::_Hash_node"* @_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeIP4NodeLb0EEEEEclIRKS3_EEPS4_OT_(%"struct.std::__detail::_AllocNode"* %36, %struct.Node** %38)
  store %"struct.std::__detail::_Hash_node"* %39, %"struct.std::__detail::_Hash_node"** %__n, align 8
  %40 = load i64* %__bkt, align 8
  %41 = load i64* %__code, align 8
  %42 = load %"struct.std::__detail::_Hash_node"** %__n, align 8
  %43 = call %"struct.std::__detail::_Hash_node"* @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS3_10_Hash_nodeIS1_Lb0EEE(%"class.std::_Hashtable"* %10, i64 %40, i64 %41, %"struct.std::__detail::_Hash_node"* %42)
  %44 = getelementptr %"struct.std::__detail::_Node_iterator"* %8, i32 0, i32 0
  %45 = getelementptr %"struct.std::__detail::_Node_iterator_base"* %44, i32 0, i32 0
  store %"struct.std::__detail::_Hash_node"* %43, %"struct.std::__detail::_Hash_node"** %45
  store i8 1, i8* %9
  %46 = call { %"struct.std::__detail::_Hash_node"*, i8 } @_ZSt9make_pairINSt8__detail14_Node_iteratorIP4NodeLb1ELb0EEEbESt4pairINSt17__decay_and_stripIT_E6__typeENS6_IT0_E6__typeEEOS7_OSA_(%"struct.std::__detail::_Node_iterator"* %8, i8* %9)
  %47 = bitcast %"struct.std::pair"* %1 to { %"struct.std::__detail::_Hash_node"*, i8 }*
  %48 = getelementptr { %"struct.std::__detail::_Hash_node"*, i8 }* %47, i32 0, i32 0
  %49 = extractvalue { %"struct.std::__detail::_Hash_node"*, i8 } %46, 0
  store %"struct.std::__detail::_Hash_node"* %49, %"struct.std::__detail::_Hash_node"** %48, align 1
  %50 = getelementptr { %"struct.std::__detail::_Hash_node"*, i8 }* %47, i32 0, i32 1
  %51 = extractvalue { %"struct.std::__detail::_Hash_node"*, i8 } %46, 1
  store i8 %51, i8* %50, align 1
  br label %52

; <label>:52                                      ; preds = %35, %27
  %53 = bitcast %"struct.std::pair"* %1 to { %"struct.std::__detail::_Hash_node"*, i8 }*
  %54 = load { %"struct.std::__detail::_Hash_node"*, i8 }* %53, align 1
  ret { %"struct.std::__detail::_Hash_node"*, i8 } %54
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Identity"* @_ZNSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE10_M_extractEv(%"struct.std::__detail::_Hash_code_base"* %this) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hash_code_base"*, align 8
  store %"struct.std::__detail::_Hash_code_base"* %this, %"struct.std::__detail::_Hash_code_base"** %1, align 8
  %2 = load %"struct.std::__detail::_Hash_code_base"** %1
  %3 = bitcast %"struct.std::__detail::_Hash_code_base"* %2 to %"struct.std::__detail::_Hashtable_ebo_helper"*
  %4 = call %"struct.std::__detail::_Identity"* @_ZNSt8__detail21_Hashtable_ebo_helperILi0ENS_9_IdentityELb1EE6_S_getERS2_(%"struct.std::__detail::_Hashtable_ebo_helper"* %3)
  ret %"struct.std::__detail::_Identity"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr { %"struct.std::__detail::_Hash_node"*, i8 } @_ZSt9make_pairINSt8__detail14_Node_iteratorIP4NodeLb1ELb0EEEbESt4pairINSt17__decay_and_stripIT_E6__typeENS6_IT0_E6__typeEEOS7_OSA_(%"struct.std::__detail::_Node_iterator"* %__x, i8* %__y) #3 {
  %1 = alloca %"struct.std::pair", align 8
  %2 = alloca %"struct.std::__detail::_Node_iterator"*, align 8
  %3 = alloca i8*, align 8
  store %"struct.std::__detail::_Node_iterator"* %__x, %"struct.std::__detail::_Node_iterator"** %2, align 8
  store i8* %__y, i8** %3, align 8
  %4 = load %"struct.std::__detail::_Node_iterator"** %2, align 8
  %5 = call %"struct.std::__detail::_Node_iterator"* @_ZSt7forwardINSt8__detail14_Node_iteratorIP4NodeLb1ELb0EEEEOT_RNSt16remove_referenceIS5_E4typeE(%"struct.std::__detail::_Node_iterator"* %4) #0
  %6 = load i8** %3, align 8
  %7 = call i8* @_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE(i8* %6) #0
  call void @_ZNSt4pairINSt8__detail14_Node_iteratorIP4NodeLb1ELb0EEEbEC2IS4_bvEEOT_OT0_(%"struct.std::pair"* %1, %"struct.std::__detail::_Node_iterator"* %5, i8* %7)
  %8 = bitcast %"struct.std::pair"* %1 to { %"struct.std::__detail::_Hash_node"*, i8 }*
  %9 = load { %"struct.std::__detail::_Hash_node"*, i8 }* %8, align 1
  ret { %"struct.std::__detail::_Hash_node"*, i8 } %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node"* @_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeIP4NodeLb0EEEEEclIRKS3_EEPS4_OT_(%"struct.std::__detail::_AllocNode"* %this, %struct.Node** %__arg) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_AllocNode"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"struct.std::__detail::_AllocNode"* %this, %"struct.std::__detail::_AllocNode"** %1, align 8
  store %struct.Node** %__arg, %struct.Node*** %2, align 8
  %3 = load %"struct.std::__detail::_AllocNode"** %1
  %4 = getelementptr inbounds %"struct.std::__detail::_AllocNode"* %3, i32 0, i32 0
  %5 = load %"struct.std::__detail::_Hashtable_alloc"** %4, align 8
  %6 = load %struct.Node*** %2, align 8
  %7 = call %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %6) #0
  %8 = call %"struct.std::__detail::_Hash_node"* @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEE16_M_allocate_nodeIJRKS3_EEEPS4_DpOT_(%"struct.std::__detail::_Hashtable_alloc"* %5, %struct.Node** %7)
  ret %"struct.std::__detail::_Hash_node"* %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node"* @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS3_10_Hash_nodeIS1_Lb0EEE(%"class.std::_Hashtable"* %this, i64 %__bkt, i64 %__code, %"struct.std::__detail::_Hash_node"* %__node) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Node_iterator", align 8
  %2 = alloca %"class.std::_Hashtable"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %"struct.std::__detail::_Hash_node"*, align 8
  %__saved_state = alloca i64*, align 8
  %6 = alloca i64, align 8
  %__do_rehash = alloca %"struct.std::pair.14", align 8
  store %"class.std::_Hashtable"* %this, %"class.std::_Hashtable"** %2, align 8
  store i64 %__bkt, i64* %3, align 8
  store i64 %__code, i64* %4, align 8
  store %"struct.std::__detail::_Hash_node"* %__node, %"struct.std::__detail::_Hash_node"** %5, align 8
  %7 = load %"class.std::_Hashtable"** %2
  %8 = getelementptr inbounds %"class.std::_Hashtable"* %7, i32 0, i32 4
  %9 = call i64 @_ZNKSt8__detail20_Prime_rehash_policy8_M_stateEv(%"struct.std::__detail::_Prime_rehash_policy"* %8)
  store i64 %9, i64* %6
  store i64* %6, i64** %__saved_state, align 8
  %10 = getelementptr inbounds %"class.std::_Hashtable"* %7, i32 0, i32 4
  %11 = getelementptr inbounds %"class.std::_Hashtable"* %7, i32 0, i32 1
  %12 = load i64* %11, align 8
  %13 = getelementptr inbounds %"class.std::_Hashtable"* %7, i32 0, i32 3
  %14 = load i64* %13, align 8
  %15 = call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* %10, i64 %12, i64 %14, i64 1)
  %16 = bitcast %"struct.std::pair.14"* %__do_rehash to { i8, i64 }*
  %17 = getelementptr { i8, i64 }* %16, i32 0, i32 0
  %18 = extractvalue { i8, i64 } %15, 0
  store i8 %18, i8* %17, align 1
  %19 = getelementptr { i8, i64 }* %16, i32 0, i32 1
  %20 = extractvalue { i8, i64 } %15, 1
  store i64 %20, i64* %19, align 1
  %21 = getelementptr inbounds %"struct.std::pair.14"* %__do_rehash, i32 0, i32 0
  %22 = load i8* %21, align 1
  %23 = trunc i8 %22 to i1
  br i1 %23, label %24, label %36

; <label>:24                                      ; preds = %0
  %25 = getelementptr inbounds %"struct.std::pair.14"* %__do_rehash, i32 0, i32 1
  %26 = load i64* %25, align 8
  %27 = load i64** %__saved_state, align 8
  call void @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm(%"class.std::_Hashtable"* %7, i64 %26, i64* %27)
  %28 = bitcast %"class.std::_Hashtable"* %7 to %"struct.std::__detail::_Hash_code_base"*
  %29 = call %"struct.std::__detail::_Identity"* @_ZNSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE10_M_extractEv(%"struct.std::__detail::_Hash_code_base"* %28)
  %30 = load %"struct.std::__detail::_Hash_node"** %5, align 8
  %31 = bitcast %"struct.std::__detail::_Hash_node"* %30 to %"struct.std::__detail::_Hash_node_value_base"*
  %32 = call %struct.Node** @_ZNSt8__detail21_Hash_node_value_baseIP4NodeE4_M_vEv(%"struct.std::__detail::_Hash_node_value_base"* %31) #0
  %33 = call %struct.Node** @_ZNKSt8__detail9_IdentityclIRP4NodeEEOT_S6_(%"struct.std::__detail::_Identity"* %29, %struct.Node** %32)
  %34 = load i64* %4, align 8
  %35 = call i64 @_ZNKSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_bucket_indexERKS1_m(%"class.std::_Hashtable"* %7, %struct.Node** %33, i64 %34)
  store i64 %35, i64* %3, align 8
  br label %36

; <label>:36                                      ; preds = %24, %0
  %37 = bitcast %"class.std::_Hashtable"* %7 to %"struct.std::__detail::_Hash_code_base"*
  %38 = load %"struct.std::__detail::_Hash_node"** %5, align 8
  %39 = load i64* %4, align 8
  call void @_ZNKSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE13_M_store_codeEPNS_10_Hash_nodeIS2_Lb0EEEm(%"struct.std::__detail::_Hash_code_base"* %37, %"struct.std::__detail::_Hash_node"* %38, i64 %39)
  %40 = load i64* %3, align 8
  %41 = load %"struct.std::__detail::_Hash_node"** %5, align 8
  call void @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb0EEE(%"class.std::_Hashtable"* %7, i64 %40, %"struct.std::__detail::_Hash_node"* %41)
  %42 = getelementptr inbounds %"class.std::_Hashtable"* %7, i32 0, i32 3
  %43 = load i64* %42, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load %"struct.std::__detail::_Hash_node"** %5, align 8
  call void @_ZNSt8__detail14_Node_iteratorIP4NodeLb1ELb0EEC2EPNS_10_Hash_nodeIS2_Lb0EEE(%"struct.std::__detail::_Node_iterator"* %1, %"struct.std::__detail::_Hash_node"* %45) #0
  %46 = getelementptr %"struct.std::__detail::_Node_iterator"* %1, i32 0, i32 0
  %47 = getelementptr %"struct.std::__detail::_Node_iterator_base"* %46, i32 0, i32 0
  %48 = load %"struct.std::__detail::_Hash_node"** %47
  ret %"struct.std::__detail::_Hash_node"* %48
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt8__detail20_Prime_rehash_policy8_M_stateEv(%"struct.std::__detail::_Prime_rehash_policy"* %this) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Prime_rehash_policy"*, align 8
  store %"struct.std::__detail::_Prime_rehash_policy"* %this, %"struct.std::__detail::_Prime_rehash_policy"** %1, align 8
  %2 = load %"struct.std::__detail::_Prime_rehash_policy"** %1
  %3 = getelementptr inbounds %"struct.std::__detail::_Prime_rehash_policy"* %2, i32 0, i32 1
  %4 = load i64* %3, align 8
  ret i64 %4
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"*, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm(%"class.std::_Hashtable"* %this, i64 %__n, i64* %__state) #3 align 2 {
  %1 = alloca %"class.std::_Hashtable"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca %"struct.std::integral_constant", align 1
  store %"class.std::_Hashtable"* %this, %"class.std::_Hashtable"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i64* %__state, i64** %3, align 8
  %5 = load %"class.std::_Hashtable"** %1
  %6 = load i64* %2, align 8
  call void @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(%"class.std::_Hashtable"* %5, i64 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNKSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE13_M_store_codeEPNS_10_Hash_nodeIS2_Lb0EEEm(%"struct.std::__detail::_Hash_code_base"* %this, %"struct.std::__detail::_Hash_node"*, i64) #3 align 2 {
  %3 = alloca %"struct.std::__detail::_Hash_code_base"*, align 8
  %4 = alloca %"struct.std::__detail::_Hash_node"*, align 8
  %5 = alloca i64, align 8
  store %"struct.std::__detail::_Hash_code_base"* %this, %"struct.std::__detail::_Hash_code_base"** %3, align 8
  store %"struct.std::__detail::_Hash_node"* %0, %"struct.std::__detail::_Hash_node"** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %"struct.std::__detail::_Hash_code_base"** %3
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb0EEE(%"class.std::_Hashtable"* %this, i64 %__bkt, %"struct.std::__detail::_Hash_node"* %__node) #3 align 2 {
  %1 = alloca %"class.std::_Hashtable"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %"struct.std::__detail::_Hash_node"*, align 8
  store %"class.std::_Hashtable"* %this, %"class.std::_Hashtable"** %1, align 8
  store i64 %__bkt, i64* %2, align 8
  store %"struct.std::__detail::_Hash_node"* %__node, %"struct.std::__detail::_Hash_node"** %3, align 8
  %4 = load %"class.std::_Hashtable"** %1
  %5 = load i64* %2, align 8
  %6 = getelementptr inbounds %"class.std::_Hashtable"* %4, i32 0, i32 0
  %7 = load %"struct.std::__detail::_Hash_node_base"*** %6, align 8
  %8 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"** %7, i64 %5
  %9 = load %"struct.std::__detail::_Hash_node_base"** %8, align 8
  %10 = icmp ne %"struct.std::__detail::_Hash_node_base"* %9, null
  br i1 %10, label %11, label %30

; <label>:11                                      ; preds = %0
  %12 = load i64* %2, align 8
  %13 = getelementptr inbounds %"class.std::_Hashtable"* %4, i32 0, i32 0
  %14 = load %"struct.std::__detail::_Hash_node_base"*** %13, align 8
  %15 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"** %14, i64 %12
  %16 = load %"struct.std::__detail::_Hash_node_base"** %15, align 8
  %17 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %16, i32 0, i32 0
  %18 = load %"struct.std::__detail::_Hash_node_base"** %17, align 8
  %19 = load %"struct.std::__detail::_Hash_node"** %3, align 8
  %20 = bitcast %"struct.std::__detail::_Hash_node"* %19 to %"struct.std::__detail::_Hash_node_base"*
  %21 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %20, i32 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* %18, %"struct.std::__detail::_Hash_node_base"** %21, align 8
  %22 = load %"struct.std::__detail::_Hash_node"** %3, align 8
  %23 = bitcast %"struct.std::__detail::_Hash_node"* %22 to %"struct.std::__detail::_Hash_node_base"*
  %24 = load i64* %2, align 8
  %25 = getelementptr inbounds %"class.std::_Hashtable"* %4, i32 0, i32 0
  %26 = load %"struct.std::__detail::_Hash_node_base"*** %25, align 8
  %27 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"** %26, i64 %24
  %28 = load %"struct.std::__detail::_Hash_node_base"** %27, align 8
  %29 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %28, i32 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* %23, %"struct.std::__detail::_Hash_node_base"** %29, align 8
  br label %61

; <label>:30                                      ; preds = %0
  %31 = getelementptr inbounds %"class.std::_Hashtable"* %4, i32 0, i32 2
  %32 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %31, i32 0, i32 0
  %33 = load %"struct.std::__detail::_Hash_node_base"** %32, align 8
  %34 = load %"struct.std::__detail::_Hash_node"** %3, align 8
  %35 = bitcast %"struct.std::__detail::_Hash_node"* %34 to %"struct.std::__detail::_Hash_node_base"*
  %36 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %35, i32 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* %33, %"struct.std::__detail::_Hash_node_base"** %36, align 8
  %37 = load %"struct.std::__detail::_Hash_node"** %3, align 8
  %38 = bitcast %"struct.std::__detail::_Hash_node"* %37 to %"struct.std::__detail::_Hash_node_base"*
  %39 = getelementptr inbounds %"class.std::_Hashtable"* %4, i32 0, i32 2
  %40 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %39, i32 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* %38, %"struct.std::__detail::_Hash_node_base"** %40, align 8
  %41 = load %"struct.std::__detail::_Hash_node"** %3, align 8
  %42 = bitcast %"struct.std::__detail::_Hash_node"* %41 to %"struct.std::__detail::_Hash_node_base"*
  %43 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %42, i32 0, i32 0
  %44 = load %"struct.std::__detail::_Hash_node_base"** %43, align 8
  %45 = icmp ne %"struct.std::__detail::_Hash_node_base"* %44, null
  br i1 %45, label %46, label %55

; <label>:46                                      ; preds = %30
  %47 = load %"struct.std::__detail::_Hash_node"** %3, align 8
  %48 = bitcast %"struct.std::__detail::_Hash_node"* %47 to %"struct.std::__detail::_Hash_node_base"*
  %49 = load %"struct.std::__detail::_Hash_node"** %3, align 8
  %50 = call %"struct.std::__detail::_Hash_node"* @_ZNKSt8__detail10_Hash_nodeIP4NodeLb0EE7_M_nextEv(%"struct.std::__detail::_Hash_node"* %49) #0
  %51 = call i64 @_ZNKSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_bucket_indexEPNS3_10_Hash_nodeIS1_Lb0EEE(%"class.std::_Hashtable"* %4, %"struct.std::__detail::_Hash_node"* %50) #0
  %52 = getelementptr inbounds %"class.std::_Hashtable"* %4, i32 0, i32 0
  %53 = load %"struct.std::__detail::_Hash_node_base"*** %52, align 8
  %54 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"** %53, i64 %51
  store %"struct.std::__detail::_Hash_node_base"* %48, %"struct.std::__detail::_Hash_node_base"** %54, align 8
  br label %55

; <label>:55                                      ; preds = %46, %30
  %56 = getelementptr inbounds %"class.std::_Hashtable"* %4, i32 0, i32 2
  %57 = load i64* %2, align 8
  %58 = getelementptr inbounds %"class.std::_Hashtable"* %4, i32 0, i32 0
  %59 = load %"struct.std::__detail::_Hash_node_base"*** %58, align 8
  %60 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"** %59, i64 %57
  store %"struct.std::__detail::_Hash_node_base"* %56, %"struct.std::__detail::_Hash_node_base"** %60, align 8
  br label %61

; <label>:61                                      ; preds = %55, %11
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(%"class.std::_Hashtable"* %this, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::_Hashtable"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %"struct.std::integral_constant", align 1
  %__new_buckets = alloca %"struct.std::__detail::_Hash_node_base"**, align 8
  %__p = alloca %"struct.std::__detail::_Hash_node"*, align 8
  %__bbegin_bkt = alloca i64, align 8
  %__next = alloca %"struct.std::__detail::_Hash_node"*, align 8
  %__bkt = alloca i64, align 8
  store %"class.std::_Hashtable"* %this, %"class.std::_Hashtable"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %4 = load %"class.std::_Hashtable"** %1
  %5 = load i64* %2, align 8
  %6 = call %"struct.std::__detail::_Hash_node_base"** @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm(%"class.std::_Hashtable"* %4, i64 %5)
  store %"struct.std::__detail::_Hash_node_base"** %6, %"struct.std::__detail::_Hash_node_base"*** %__new_buckets, align 8
  %7 = call %"struct.std::__detail::_Hash_node"* @_ZNKSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_beginEv(%"class.std::_Hashtable"* %4)
  store %"struct.std::__detail::_Hash_node"* %7, %"struct.std::__detail::_Hash_node"** %__p, align 8
  %8 = getelementptr inbounds %"class.std::_Hashtable"* %4, i32 0, i32 2
  %9 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %8, i32 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %9, align 8
  store i64 0, i64* %__bbegin_bkt, align 8
  br label %10

; <label>:10                                      ; preds = %70, %0
  %11 = load %"struct.std::__detail::_Hash_node"** %__p, align 8
  %12 = icmp ne %"struct.std::__detail::_Hash_node"* %11, null
  br i1 %12, label %13, label %72

; <label>:13                                      ; preds = %10
  %14 = load %"struct.std::__detail::_Hash_node"** %__p, align 8
  %15 = call %"struct.std::__detail::_Hash_node"* @_ZNKSt8__detail10_Hash_nodeIP4NodeLb0EE7_M_nextEv(%"struct.std::__detail::_Hash_node"* %14) #0
  store %"struct.std::__detail::_Hash_node"* %15, %"struct.std::__detail::_Hash_node"** %__next, align 8
  %16 = bitcast %"class.std::_Hashtable"* %4 to %"struct.std::__detail::_Hash_code_base"*
  %17 = load %"struct.std::__detail::_Hash_node"** %__p, align 8
  %18 = load i64* %2, align 8
  %19 = call i64 @_ZNKSt8__detail15_Hash_code_baseIP4NodeS2_NS_9_IdentityESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE15_M_bucket_indexEPKNS_10_Hash_nodeIS2_Lb0EEEm(%"struct.std::__detail::_Hash_code_base"* %16, %"struct.std::__detail::_Hash_node"* %17, i64 %18) #0
  store i64 %19, i64* %__bkt, align 8
  %20 = load i64* %__bkt, align 8
  %21 = load %"struct.std::__detail::_Hash_node_base"*** %__new_buckets, align 8
  %22 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"** %21, i64 %20
  %23 = load %"struct.std::__detail::_Hash_node_base"** %22, align 8
  %24 = icmp ne %"struct.std::__detail::_Hash_node_base"* %23, null
  br i1 %24, label %53, label %25

; <label>:25                                      ; preds = %13
  %26 = getelementptr inbounds %"class.std::_Hashtable"* %4, i32 0, i32 2
  %27 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %26, i32 0, i32 0
  %28 = load %"struct.std::__detail::_Hash_node_base"** %27, align 8
  %29 = load %"struct.std::__detail::_Hash_node"** %__p, align 8
  %30 = bitcast %"struct.std::__detail::_Hash_node"* %29 to %"struct.std::__detail::_Hash_node_base"*
  %31 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %30, i32 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* %28, %"struct.std::__detail::_Hash_node_base"** %31, align 8
  %32 = load %"struct.std::__detail::_Hash_node"** %__p, align 8
  %33 = bitcast %"struct.std::__detail::_Hash_node"* %32 to %"struct.std::__detail::_Hash_node_base"*
  %34 = getelementptr inbounds %"class.std::_Hashtable"* %4, i32 0, i32 2
  %35 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %34, i32 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* %33, %"struct.std::__detail::_Hash_node_base"** %35, align 8
  %36 = getelementptr inbounds %"class.std::_Hashtable"* %4, i32 0, i32 2
  %37 = load i64* %__bkt, align 8
  %38 = load %"struct.std::__detail::_Hash_node_base"*** %__new_buckets, align 8
  %39 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"** %38, i64 %37
  store %"struct.std::__detail::_Hash_node_base"* %36, %"struct.std::__detail::_Hash_node_base"** %39, align 8
  %40 = load %"struct.std::__detail::_Hash_node"** %__p, align 8
  %41 = bitcast %"struct.std::__detail::_Hash_node"* %40 to %"struct.std::__detail::_Hash_node_base"*
  %42 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %41, i32 0, i32 0
  %43 = load %"struct.std::__detail::_Hash_node_base"** %42, align 8
  %44 = icmp ne %"struct.std::__detail::_Hash_node_base"* %43, null
  br i1 %44, label %45, label %51

; <label>:45                                      ; preds = %25
  %46 = load %"struct.std::__detail::_Hash_node"** %__p, align 8
  %47 = bitcast %"struct.std::__detail::_Hash_node"* %46 to %"struct.std::__detail::_Hash_node_base"*
  %48 = load i64* %__bbegin_bkt, align 8
  %49 = load %"struct.std::__detail::_Hash_node_base"*** %__new_buckets, align 8
  %50 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"** %49, i64 %48
  store %"struct.std::__detail::_Hash_node_base"* %47, %"struct.std::__detail::_Hash_node_base"** %50, align 8
  br label %51

; <label>:51                                      ; preds = %45, %25
  %52 = load i64* %__bkt, align 8
  store i64 %52, i64* %__bbegin_bkt, align 8
  br label %70

; <label>:53                                      ; preds = %13
  %54 = load i64* %__bkt, align 8
  %55 = load %"struct.std::__detail::_Hash_node_base"*** %__new_buckets, align 8
  %56 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"** %55, i64 %54
  %57 = load %"struct.std::__detail::_Hash_node_base"** %56, align 8
  %58 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %57, i32 0, i32 0
  %59 = load %"struct.std::__detail::_Hash_node_base"** %58, align 8
  %60 = load %"struct.std::__detail::_Hash_node"** %__p, align 8
  %61 = bitcast %"struct.std::__detail::_Hash_node"* %60 to %"struct.std::__detail::_Hash_node_base"*
  %62 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %61, i32 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* %59, %"struct.std::__detail::_Hash_node_base"** %62, align 8
  %63 = load %"struct.std::__detail::_Hash_node"** %__p, align 8
  %64 = bitcast %"struct.std::__detail::_Hash_node"* %63 to %"struct.std::__detail::_Hash_node_base"*
  %65 = load i64* %__bkt, align 8
  %66 = load %"struct.std::__detail::_Hash_node_base"*** %__new_buckets, align 8
  %67 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"** %66, i64 %65
  %68 = load %"struct.std::__detail::_Hash_node_base"** %67, align 8
  %69 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %68, i32 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* %64, %"struct.std::__detail::_Hash_node_base"** %69, align 8
  br label %70

; <label>:70                                      ; preds = %53, %51
  %71 = load %"struct.std::__detail::_Hash_node"** %__next, align 8
  store %"struct.std::__detail::_Hash_node"* %71, %"struct.std::__detail::_Hash_node"** %__p, align 8
  br label %10

; <label>:72                                      ; preds = %10
  call void @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv(%"class.std::_Hashtable"* %4)
  %73 = load i64* %2, align 8
  %74 = getelementptr inbounds %"class.std::_Hashtable"* %4, i32 0, i32 1
  store i64 %73, i64* %74, align 8
  %75 = load %"struct.std::__detail::_Hash_node_base"*** %__new_buckets, align 8
  %76 = getelementptr inbounds %"class.std::_Hashtable"* %4, i32 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"** %75, %"struct.std::__detail::_Hash_node_base"*** %76, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node_base"** @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm(%"class.std::_Hashtable"* %this, i64 %__n) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hash_node_base"**, align 8
  %2 = alloca %"class.std::_Hashtable"*, align 8
  %3 = alloca i64, align 8
  store %"class.std::_Hashtable"* %this, %"class.std::_Hashtable"** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::_Hashtable"** %2
  %5 = load i64* %3, align 8
  %6 = icmp eq i64 %5, 1
  %7 = zext i1 %6 to i64
  %8 = call i64 @llvm.expect.i64(i64 %7, i64 0)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %0
  %11 = getelementptr inbounds %"class.std::_Hashtable"* %4, i32 0, i32 5
  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %11, align 8
  %12 = getelementptr inbounds %"class.std::_Hashtable"* %4, i32 0, i32 5
  store %"struct.std::__detail::_Hash_node_base"** %12, %"struct.std::__detail::_Hash_node_base"*** %1
  br label %17

; <label>:13                                      ; preds = %0
  %14 = bitcast %"class.std::_Hashtable"* %4 to %"struct.std::__detail::_Hashtable_alloc"*
  %15 = load i64* %3, align 8
  %16 = call %"struct.std::__detail::_Hash_node_base"** @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEE19_M_allocate_bucketsEm(%"struct.std::__detail::_Hashtable_alloc"* %14, i64 %15)
  store %"struct.std::__detail::_Hash_node_base"** %16, %"struct.std::__detail::_Hash_node_base"*** %1
  br label %17

; <label>:17                                      ; preds = %13, %10
  %18 = load %"struct.std::__detail::_Hash_node_base"*** %1
  ret %"struct.std::__detail::_Hash_node_base"** %18
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node"* @_ZNKSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_beginEv(%"class.std::_Hashtable"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Hashtable"*, align 8
  store %"class.std::_Hashtable"* %this, %"class.std::_Hashtable"** %1, align 8
  %2 = load %"class.std::_Hashtable"** %1
  %3 = getelementptr inbounds %"class.std::_Hashtable"* %2, i32 0, i32 2
  %4 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %3, i32 0, i32 0
  %5 = load %"struct.std::__detail::_Hash_node_base"** %4, align 8
  %6 = bitcast %"struct.std::__detail::_Hash_node_base"* %5 to %"struct.std::__detail::_Hash_node"*
  ret %"struct.std::__detail::_Hash_node"* %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv(%"class.std::_Hashtable"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Hashtable"*, align 8
  store %"class.std::_Hashtable"* %this, %"class.std::_Hashtable"** %1, align 8
  %2 = load %"class.std::_Hashtable"** %1
  %3 = getelementptr inbounds %"class.std::_Hashtable"* %2, i32 0, i32 0
  %4 = load %"struct.std::__detail::_Hash_node_base"*** %3, align 8
  %5 = getelementptr inbounds %"class.std::_Hashtable"* %2, i32 0, i32 1
  %6 = load i64* %5, align 8
  call void @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS3_15_Hash_node_baseEm(%"class.std::_Hashtable"* %2, %"struct.std::__detail::_Hash_node_base"** %4, i64 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS3_15_Hash_node_baseEm(%"class.std::_Hashtable"* %this, %"struct.std::__detail::_Hash_node_base"** %__bkts, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::_Hashtable"*, align 8
  %2 = alloca %"struct.std::__detail::_Hash_node_base"**, align 8
  %3 = alloca i64, align 8
  store %"class.std::_Hashtable"* %this, %"class.std::_Hashtable"** %1, align 8
  store %"struct.std::__detail::_Hash_node_base"** %__bkts, %"struct.std::__detail::_Hash_node_base"*** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::_Hashtable"** %1
  %5 = load %"struct.std::__detail::_Hash_node_base"*** %2, align 8
  %6 = call zeroext i1 @_ZNKSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_uses_single_bucketEPPNS3_15_Hash_node_baseE(%"class.std::_Hashtable"* %4, %"struct.std::__detail::_Hash_node_base"** %5)
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %12

; <label>:8                                       ; preds = %0
  %9 = bitcast %"class.std::_Hashtable"* %4 to %"struct.std::__detail::_Hashtable_alloc"*
  %10 = load %"struct.std::__detail::_Hash_node_base"*** %2, align 8
  %11 = load i64* %3, align 8
  call void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEE21_M_deallocate_bucketsEPPNS_15_Hash_node_baseEm(%"struct.std::__detail::_Hashtable_alloc"* %9, %"struct.std::__detail::_Hash_node_base"** %10, i64 %11)
  br label %12

; <label>:12                                      ; preds = %8, %7
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_uses_single_bucketEPPNS3_15_Hash_node_baseE(%"class.std::_Hashtable"* %this, %"struct.std::__detail::_Hash_node_base"** %__bkts) #3 align 2 {
  %1 = alloca %"class.std::_Hashtable"*, align 8
  %2 = alloca %"struct.std::__detail::_Hash_node_base"**, align 8
  store %"class.std::_Hashtable"* %this, %"class.std::_Hashtable"** %1, align 8
  store %"struct.std::__detail::_Hash_node_base"** %__bkts, %"struct.std::__detail::_Hash_node_base"*** %2, align 8
  %3 = load %"class.std::_Hashtable"** %1
  %4 = load %"struct.std::__detail::_Hash_node_base"*** %2, align 8
  %5 = getelementptr inbounds %"class.std::_Hashtable"* %3, i32 0, i32 5
  %6 = icmp eq %"struct.std::__detail::_Hash_node_base"** %4, %5
  %7 = zext i1 %6 to i64
  %8 = call i64 @llvm.expect.i64(i64 %7, i64 0)
  %9 = icmp ne i64 %8, 0
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEE21_M_deallocate_bucketsEPPNS_15_Hash_node_baseEm(%"struct.std::__detail::_Hashtable_alloc"* %this, %"struct.std::__detail::_Hash_node_base"** %__bkts, i64 %__n) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hashtable_alloc"*, align 8
  %2 = alloca %"struct.std::__detail::_Hash_node_base"**, align 8
  %3 = alloca i64, align 8
  %__ptr = alloca %"struct.std::__detail::_Hash_node_base"**, align 8
  %__alloc = alloca %"class.std::allocator.15", align 1
  store %"struct.std::__detail::_Hashtable_alloc"* %this, %"struct.std::__detail::_Hashtable_alloc"** %1, align 8
  store %"struct.std::__detail::_Hash_node_base"** %__bkts, %"struct.std::__detail::_Hash_node_base"*** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"struct.std::__detail::_Hashtable_alloc"** %1
  %5 = load %"struct.std::__detail::_Hash_node_base"*** %2, align 8
  %6 = call %"struct.std::__detail::_Hash_node_base"** @_ZNSt14pointer_traitsIPPNSt8__detail15_Hash_node_baseEE10pointer_toERS2_(%"struct.std::__detail::_Hash_node_base"** %5) #0
  store %"struct.std::__detail::_Hash_node_base"** %6, %"struct.std::__detail::_Hash_node_base"*** %__ptr, align 8
  %7 = call %"class.std::allocator.4"* @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEE17_M_node_allocatorEv(%"struct.std::__detail::_Hashtable_alloc"* %4)
  call void @_ZNSaIPNSt8__detail15_Hash_node_baseEEC2INS_10_Hash_nodeIP4NodeLb0EEEEERKSaIT_E(%"class.std::allocator.15"* %__alloc, %"class.std::allocator.4"* %7) #0
  %8 = load %"struct.std::__detail::_Hash_node_base"*** %__ptr, align 8
  %9 = load i64* %3, align 8
  call void @_ZNSt16allocator_traitsISaIPNSt8__detail15_Hash_node_baseEEE10deallocateERS3_PS2_m(%"class.std::allocator.15"* %__alloc, %"struct.std::__detail::_Hash_node_base"** %8, i64 %9)
  call void @_ZNSaIPNSt8__detail15_Hash_node_baseEED2Ev(%"class.std::allocator.15"* %__alloc) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node_base"** @_ZNSt14pointer_traitsIPPNSt8__detail15_Hash_node_baseEE10pointer_toERS2_(%"struct.std::__detail::_Hash_node_base"** %__r) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hash_node_base"**, align 8
  store %"struct.std::__detail::_Hash_node_base"** %__r, %"struct.std::__detail::_Hash_node_base"*** %1, align 8
  %2 = load %"struct.std::__detail::_Hash_node_base"*** %1, align 8
  %3 = call %"struct.std::__detail::_Hash_node_base"** @_ZSt9addressofIPNSt8__detail15_Hash_node_baseEEPT_RS3_(%"struct.std::__detail::_Hash_node_base"** %2) #0
  ret %"struct.std::__detail::_Hash_node_base"** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPNSt8__detail15_Hash_node_baseEEC2INS_10_Hash_nodeIP4NodeLb0EEEEERKSaIT_E(%"class.std::allocator.15"* %this, %"class.std::allocator.4"*) unnamed_addr #3 align 2 {
  %2 = alloca %"class.std::allocator.15"*, align 8
  %3 = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.15"* %this, %"class.std::allocator.15"** %2, align 8
  store %"class.std::allocator.4"* %0, %"class.std::allocator.4"** %3, align 8
  %4 = load %"class.std::allocator.15"** %2
  %5 = bitcast %"class.std::allocator.15"* %4 to %"class.__gnu_cxx::new_allocator.16"*
  call void @_ZN9__gnu_cxx13new_allocatorIPNSt8__detail15_Hash_node_baseEEC2Ev(%"class.__gnu_cxx::new_allocator.16"* %5) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.4"* @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEE17_M_node_allocatorEv(%"struct.std::__detail::_Hashtable_alloc"* %this) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hashtable_alloc"*, align 8
  store %"struct.std::__detail::_Hashtable_alloc"* %this, %"struct.std::__detail::_Hashtable_alloc"** %1, align 8
  %2 = load %"struct.std::__detail::_Hashtable_alloc"** %1
  %3 = bitcast %"struct.std::__detail::_Hashtable_alloc"* %2 to %"struct.std::__detail::_Hashtable_ebo_helper.3"*
  %4 = call %"class.std::allocator.4"* @_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeIP4NodeLb0EEEELb1EE6_S_getERS6_(%"struct.std::__detail::_Hashtable_ebo_helper.3"* %3)
  ret %"class.std::allocator.4"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIPNSt8__detail15_Hash_node_baseEEE10deallocateERS3_PS2_m(%"class.std::allocator.15"* %__a, %"struct.std::__detail::_Hash_node_base"** %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.15"*, align 8
  %2 = alloca %"struct.std::__detail::_Hash_node_base"**, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.15"* %__a, %"class.std::allocator.15"** %1, align 8
  store %"struct.std::__detail::_Hash_node_base"** %__p, %"struct.std::__detail::_Hash_node_base"*** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.15"** %1, align 8
  %5 = bitcast %"class.std::allocator.15"* %4 to %"class.__gnu_cxx::new_allocator.16"*
  %6 = load %"struct.std::__detail::_Hash_node_base"*** %2, align 8
  %7 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPNSt8__detail15_Hash_node_baseEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator.16"* %5, %"struct.std::__detail::_Hash_node_base"** %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPNSt8__detail15_Hash_node_baseEED2Ev(%"class.std::allocator.15"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.15"*, align 8
  store %"class.std::allocator.15"* %this, %"class.std::allocator.15"** %1, align 8
  %2 = load %"class.std::allocator.15"** %1
  %3 = bitcast %"class.std::allocator.15"* %2 to %"class.__gnu_cxx::new_allocator.16"*
  call void @_ZN9__gnu_cxx13new_allocatorIPNSt8__detail15_Hash_node_baseEED2Ev(%"class.__gnu_cxx::new_allocator.16"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPNSt8__detail15_Hash_node_baseEED2Ev(%"class.__gnu_cxx::new_allocator.16"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.16"*, align 8
  store %"class.__gnu_cxx::new_allocator.16"* %this, %"class.__gnu_cxx::new_allocator.16"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.16"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPNSt8__detail15_Hash_node_baseEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator.16"* %this, %"struct.std::__detail::_Hash_node_base"** %__p, i64) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.16"*, align 8
  %3 = alloca %"struct.std::__detail::_Hash_node_base"**, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.16"* %this, %"class.__gnu_cxx::new_allocator.16"** %2, align 8
  store %"struct.std::__detail::_Hash_node_base"** %__p, %"struct.std::__detail::_Hash_node_base"*** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.16"** %2
  %6 = load %"struct.std::__detail::_Hash_node_base"*** %3, align 8
  %7 = bitcast %"struct.std::__detail::_Hash_node_base"** %6 to i8*
  call void @_ZdlPv(i8* %7) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.4"* @_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeIP4NodeLb0EEEELb1EE6_S_getERS6_(%"struct.std::__detail::_Hashtable_ebo_helper.3"* %__eboh) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hashtable_ebo_helper.3"*, align 8
  store %"struct.std::__detail::_Hashtable_ebo_helper.3"* %__eboh, %"struct.std::__detail::_Hashtable_ebo_helper.3"** %1, align 8
  %2 = load %"struct.std::__detail::_Hashtable_ebo_helper.3"** %1, align 8
  %3 = bitcast %"struct.std::__detail::_Hashtable_ebo_helper.3"* %2 to %"class.std::allocator.4"*
  ret %"class.std::allocator.4"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPNSt8__detail15_Hash_node_baseEEC2Ev(%"class.__gnu_cxx::new_allocator.16"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.16"*, align 8
  store %"class.__gnu_cxx::new_allocator.16"* %this, %"class.__gnu_cxx::new_allocator.16"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.16"** %1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node_base"** @_ZSt9addressofIPNSt8__detail15_Hash_node_baseEEPT_RS3_(%"struct.std::__detail::_Hash_node_base"** %__r) #4 {
  %1 = alloca %"struct.std::__detail::_Hash_node_base"**, align 8
  store %"struct.std::__detail::_Hash_node_base"** %__r, %"struct.std::__detail::_Hash_node_base"*** %1, align 8
  %2 = load %"struct.std::__detail::_Hash_node_base"*** %1, align 8
  %3 = call %"struct.std::__detail::_Hash_node_base"** @_ZSt11__addressofIPNSt8__detail15_Hash_node_baseEEPT_RS3_(%"struct.std::__detail::_Hash_node_base"** %2) #0
  ret %"struct.std::__detail::_Hash_node_base"** %3
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node_base"** @_ZSt11__addressofIPNSt8__detail15_Hash_node_baseEEPT_RS3_(%"struct.std::__detail::_Hash_node_base"** %__r) #4 {
  %1 = alloca %"struct.std::__detail::_Hash_node_base"**, align 8
  store %"struct.std::__detail::_Hash_node_base"** %__r, %"struct.std::__detail::_Hash_node_base"*** %1, align 8
  %2 = load %"struct.std::__detail::_Hash_node_base"*** %1, align 8
  %3 = bitcast %"struct.std::__detail::_Hash_node_base"** %2 to i8*
  %4 = bitcast i8* %3 to %"struct.std::__detail::_Hash_node_base"**
  ret %"struct.std::__detail::_Hash_node_base"** %4
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node_base"** @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEE19_M_allocate_bucketsEm(%"struct.std::__detail::_Hashtable_alloc"* %this, i64 %__n) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hashtable_alloc"*, align 8
  %2 = alloca i64, align 8
  %__alloc = alloca %"class.std::allocator.15", align 1
  %__ptr = alloca %"struct.std::__detail::_Hash_node_base"**, align 8
  %__p = alloca %"struct.std::__detail::_Hash_node_base"**, align 8
  %3 = alloca i32
  store %"struct.std::__detail::_Hashtable_alloc"* %this, %"struct.std::__detail::_Hashtable_alloc"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %4 = load %"struct.std::__detail::_Hashtable_alloc"** %1
  %5 = call %"class.std::allocator.4"* @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEE17_M_node_allocatorEv(%"struct.std::__detail::_Hashtable_alloc"* %4)
  call void @_ZNSaIPNSt8__detail15_Hash_node_baseEEC2INS_10_Hash_nodeIP4NodeLb0EEEEERKSaIT_E(%"class.std::allocator.15"* %__alloc, %"class.std::allocator.4"* %5) #0
  %6 = load i64* %2, align 8
  %7 = call %"struct.std::__detail::_Hash_node_base"** @_ZNSt16allocator_traitsISaIPNSt8__detail15_Hash_node_baseEEE8allocateERS3_m(%"class.std::allocator.15"* %__alloc, i64 %6)
  store %"struct.std::__detail::_Hash_node_base"** %7, %"struct.std::__detail::_Hash_node_base"*** %__ptr, align 8
  %8 = load %"struct.std::__detail::_Hash_node_base"*** %__ptr, align 8
  %9 = call %"struct.std::__detail::_Hash_node_base"** @_ZSt11__addressofIPNSt8__detail15_Hash_node_baseEEPT_RS3_(%"struct.std::__detail::_Hash_node_base"** %8) #0
  store %"struct.std::__detail::_Hash_node_base"** %9, %"struct.std::__detail::_Hash_node_base"*** %__p, align 8
  %10 = load %"struct.std::__detail::_Hash_node_base"*** %__p, align 8
  %11 = bitcast %"struct.std::__detail::_Hash_node_base"** %10 to i8*
  %12 = load i64* %2, align 8
  %13 = mul i64 %12, 8
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 %13, i32 8, i1 false)
  %14 = load %"struct.std::__detail::_Hash_node_base"*** %__p, align 8
  store i32 1, i32* %3
  call void @_ZNSaIPNSt8__detail15_Hash_node_baseEED2Ev(%"class.std::allocator.15"* %__alloc) #0
  ret %"struct.std::__detail::_Hash_node_base"** %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node_base"** @_ZNSt16allocator_traitsISaIPNSt8__detail15_Hash_node_baseEEE8allocateERS3_m(%"class.std::allocator.15"* %__a, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.15"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.15"* %__a, %"class.std::allocator.15"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.15"** %1, align 8
  %4 = bitcast %"class.std::allocator.15"* %3 to %"class.__gnu_cxx::new_allocator.16"*
  %5 = load i64* %2, align 8
  %6 = call %"struct.std::__detail::_Hash_node_base"** @_ZN9__gnu_cxx13new_allocatorIPNSt8__detail15_Hash_node_baseEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.16"* %4, i64 %5, i8* null)
  ret %"struct.std::__detail::_Hash_node_base"** %6
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #0

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node_base"** @_ZN9__gnu_cxx13new_allocatorIPNSt8__detail15_Hash_node_baseEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.16"* %this, i64 %__n, i8*) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.16"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.16"* %this, %"class.__gnu_cxx::new_allocator.16"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.16"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIPNSt8__detail15_Hash_node_baseEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.16"* %5) #0
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #10
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %"struct.std::__detail::_Hash_node_base"**
  ret %"struct.std::__detail::_Hash_node_base"** %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIPNSt8__detail15_Hash_node_baseEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.16"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.16"*, align 8
  store %"class.__gnu_cxx::new_allocator.16"* %this, %"class.__gnu_cxx::new_allocator.16"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.16"** %1
  ret i64 2305843009213693951
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node"* @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEE16_M_allocate_nodeIJRKS3_EEEPS4_DpOT_(%"struct.std::__detail::_Hashtable_alloc"* %this, %struct.Node** %__args) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hashtable_alloc"*, align 8
  %2 = alloca %struct.Node**, align 8
  %__nptr = alloca %"struct.std::__detail::_Hash_node"*, align 8
  %__n = alloca %"struct.std::__detail::_Hash_node"*, align 8
  %__a = alloca %"class.std::allocator.7", align 1
  %3 = alloca i32
  store %"struct.std::__detail::_Hashtable_alloc"* %this, %"struct.std::__detail::_Hashtable_alloc"** %1, align 8
  store %struct.Node** %__args, %struct.Node*** %2, align 8
  %4 = load %"struct.std::__detail::_Hashtable_alloc"** %1
  %5 = call %"class.std::allocator.4"* @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEE17_M_node_allocatorEv(%"struct.std::__detail::_Hashtable_alloc"* %4)
  %6 = call %"struct.std::__detail::_Hash_node"* @_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeIP4NodeLb0EEEEE8allocateERS5_m(%"class.std::allocator.4"* %5, i64 1)
  store %"struct.std::__detail::_Hash_node"* %6, %"struct.std::__detail::_Hash_node"** %__nptr, align 8
  %7 = load %"struct.std::__detail::_Hash_node"** %__nptr, align 8
  %8 = call %"struct.std::__detail::_Hash_node"* @_ZSt11__addressofINSt8__detail10_Hash_nodeIP4NodeLb0EEEEPT_RS5_(%"struct.std::__detail::_Hash_node"* %7) #0
  store %"struct.std::__detail::_Hash_node"* %8, %"struct.std::__detail::_Hash_node"** %__n, align 8
  %9 = call %"class.std::allocator.4"* @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEE17_M_node_allocatorEv(%"struct.std::__detail::_Hashtable_alloc"* %4)
  call void @_ZNSaIP4NodeEC2INSt8__detail10_Hash_nodeIS0_Lb0EEEEERKSaIT_E(%"class.std::allocator.7"* %__a, %"class.std::allocator.4"* %9) #0
  %10 = load %"struct.std::__detail::_Hash_node"** %__n, align 8
  %11 = bitcast %"struct.std::__detail::_Hash_node"* %10 to i8*
  %12 = icmp eq i8* %11, null
  br i1 %12, label %15, label %13

; <label>:13                                      ; preds = %0
  %14 = bitcast i8* %11 to %"struct.std::__detail::_Hash_node"*
  call void @_ZNSt8__detail10_Hash_nodeIP4NodeLb0EEC2Ev(%"struct.std::__detail::_Hash_node"* %14) #0
  br label %15

; <label>:15                                      ; preds = %13, %0
  %16 = phi %"struct.std::__detail::_Hash_node"* [ %14, %13 ], [ null, %0 ]
  %17 = load %"struct.std::__detail::_Hash_node"** %__n, align 8
  %18 = bitcast %"struct.std::__detail::_Hash_node"* %17 to %"struct.std::__detail::_Hash_node_value_base"*
  %19 = call %struct.Node** @_ZNSt8__detail21_Hash_node_value_baseIP4NodeE9_M_valptrEv(%"struct.std::__detail::_Hash_node_value_base"* %18) #0
  %20 = load %struct.Node*** %2, align 8
  %21 = call %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %20) #0
  call void @_ZNSt16allocator_traitsISaIP4NodeEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(%"class.std::allocator.7"* %__a, %struct.Node** %19, %struct.Node** %21)
  %22 = load %"struct.std::__detail::_Hash_node"** %__n, align 8
  store i32 1, i32* %3
  call void @_ZNSaIP4NodeED2Ev(%"class.std::allocator.7"* %__a) #0
  ret %"struct.std::__detail::_Hash_node"* %22
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node"* @_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeIP4NodeLb0EEEEE8allocateERS5_m(%"class.std::allocator.4"* %__a, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.4"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.4"* %__a, %"class.std::allocator.4"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.4"** %1, align 8
  %4 = bitcast %"class.std::allocator.4"* %3 to %"class.__gnu_cxx::new_allocator.5"*
  %5 = load i64* %2, align 8
  %6 = call %"struct.std::__detail::_Hash_node"* @_ZN9__gnu_cxx13new_allocatorINSt8__detail10_Hash_nodeIP4NodeLb0EEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.5"* %4, i64 %5, i8* null)
  ret %"struct.std::__detail::_Hash_node"* %6
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node"* @_ZSt11__addressofINSt8__detail10_Hash_nodeIP4NodeLb0EEEEPT_RS5_(%"struct.std::__detail::_Hash_node"* %__r) #4 {
  %1 = alloca %"struct.std::__detail::_Hash_node"*, align 8
  store %"struct.std::__detail::_Hash_node"* %__r, %"struct.std::__detail::_Hash_node"** %1, align 8
  %2 = load %"struct.std::__detail::_Hash_node"** %1, align 8
  %3 = bitcast %"struct.std::__detail::_Hash_node"* %2 to i8*
  %4 = bitcast i8* %3 to %"struct.std::__detail::_Hash_node"*
  ret %"struct.std::__detail::_Hash_node"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP4NodeEC2INSt8__detail10_Hash_nodeIS0_Lb0EEEEERKSaIT_E(%"class.std::allocator.7"* %this, %"class.std::allocator.4"*) unnamed_addr #3 align 2 {
  %2 = alloca %"class.std::allocator.7"*, align 8
  %3 = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.7"* %this, %"class.std::allocator.7"** %2, align 8
  store %"class.std::allocator.4"* %0, %"class.std::allocator.4"** %3, align 8
  %4 = load %"class.std::allocator.7"** %2
  %5 = bitcast %"class.std::allocator.7"* %4 to %"class.__gnu_cxx::new_allocator.8"*
  call void @_ZN9__gnu_cxx13new_allocatorIP4NodeEC2Ev(%"class.__gnu_cxx::new_allocator.8"* %5) #0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt8__detail10_Hash_nodeIP4NodeLb0EEC2Ev(%"struct.std::__detail::_Hash_node"* %this) unnamed_addr #4 align 2 {
  %1 = alloca %"struct.std::__detail::_Hash_node"*, align 8
  store %"struct.std::__detail::_Hash_node"* %this, %"struct.std::__detail::_Hash_node"** %1, align 8
  %2 = load %"struct.std::__detail::_Hash_node"** %1
  %3 = bitcast %"struct.std::__detail::_Hash_node"* %2 to %"struct.std::__detail::_Hash_node_value_base"*
  call void @_ZNSt8__detail21_Hash_node_value_baseIP4NodeEC2Ev(%"struct.std::__detail::_Hash_node_value_base"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIP4NodeEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(%"class.std::allocator.7"* %__a, %struct.Node** %__p, %struct.Node** %__args) #3 align 2 {
  %1 = alloca %"class.std::allocator.7"*, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %struct.Node**, align 8
  store %"class.std::allocator.7"* %__a, %"class.std::allocator.7"** %1, align 8
  store %struct.Node** %__p, %struct.Node*** %2, align 8
  store %struct.Node** %__args, %struct.Node*** %3, align 8
  %4 = load %"class.std::allocator.7"** %1, align 8
  %5 = bitcast %"class.std::allocator.7"* %4 to %"class.__gnu_cxx::new_allocator.8"*
  %6 = load %struct.Node*** %2, align 8
  %7 = load %struct.Node*** %3, align 8
  %8 = call %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %7) #0
  call void @_ZN9__gnu_cxx13new_allocatorIP4NodeE9constructIS2_JRKS2_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.8"* %5, %struct.Node** %6, %struct.Node** %8)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP4NodeED2Ev(%"class.std::allocator.7"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.7"*, align 8
  store %"class.std::allocator.7"* %this, %"class.std::allocator.7"** %1, align 8
  %2 = load %"class.std::allocator.7"** %1
  %3 = bitcast %"class.std::allocator.7"* %2 to %"class.__gnu_cxx::new_allocator.8"*
  call void @_ZN9__gnu_cxx13new_allocatorIP4NodeED2Ev(%"class.__gnu_cxx::new_allocator.8"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP4NodeED2Ev(%"class.__gnu_cxx::new_allocator.8"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.8"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP4NodeE9constructIS2_JRKS2_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.8"* %this, %struct.Node** %__p, %struct.Node** %__args) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %struct.Node**, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %1, align 8
  store %struct.Node** %__p, %struct.Node*** %2, align 8
  store %struct.Node** %__args, %struct.Node*** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.8"** %1
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

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt8__detail21_Hash_node_value_baseIP4NodeEC2Ev(%"struct.std::__detail::_Hash_node_value_base"* %this) unnamed_addr #4 align 2 {
  %1 = alloca %"struct.std::__detail::_Hash_node_value_base"*, align 8
  store %"struct.std::__detail::_Hash_node_value_base"* %this, %"struct.std::__detail::_Hash_node_value_base"** %1, align 8
  %2 = load %"struct.std::__detail::_Hash_node_value_base"** %1
  %3 = bitcast %"struct.std::__detail::_Hash_node_value_base"* %2 to %"struct.std::__detail::_Hash_node_base"*
  call void @_ZNSt8__detail15_Hash_node_baseC2Ev(%"struct.std::__detail::_Hash_node_base"* %3) #0
  %4 = getelementptr inbounds %"struct.std::__detail::_Hash_node_value_base"* %2, i32 0, i32 1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP4NodeEC2Ev(%"class.__gnu_cxx::new_allocator.8"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.8"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node"* @_ZN9__gnu_cxx13new_allocatorINSt8__detail10_Hash_nodeIP4NodeLb0EEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.5"* %this, i64 %__n, i8*) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.5"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorINSt8__detail10_Hash_nodeIP4NodeLb0EEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.5"* %5) #0
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #10
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 16
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %"struct.std::__detail::_Hash_node"*
  ret %"struct.std::__detail::_Hash_node"* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorINSt8__detail10_Hash_nodeIP4NodeLb0EEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.5"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.5"** %1
  ret i64 1152921504606846975
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt4pairINSt8__detail14_Node_iteratorIP4NodeLb1ELb0EEEbEC2IS4_bvEEOT_OT0_(%"struct.std::pair"* %this, %"struct.std::__detail::_Node_iterator"* %__x, i8* %__y) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::pair"*, align 8
  %2 = alloca %"struct.std::__detail::_Node_iterator"*, align 8
  %3 = alloca i8*, align 8
  store %"struct.std::pair"* %this, %"struct.std::pair"** %1, align 8
  store %"struct.std::__detail::_Node_iterator"* %__x, %"struct.std::__detail::_Node_iterator"** %2, align 8
  store i8* %__y, i8** %3, align 8
  %4 = load %"struct.std::pair"** %1
  %5 = getelementptr inbounds %"struct.std::pair"* %4, i32 0, i32 0
  %6 = load %"struct.std::__detail::_Node_iterator"** %2, align 8
  %7 = call %"struct.std::__detail::_Node_iterator"* @_ZSt7forwardINSt8__detail14_Node_iteratorIP4NodeLb1ELb0EEEEOT_RNSt16remove_referenceIS5_E4typeE(%"struct.std::__detail::_Node_iterator"* %6) #0
  %8 = bitcast %"struct.std::__detail::_Node_iterator"* %5 to i8*
  %9 = bitcast %"struct.std::__detail::_Node_iterator"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = getelementptr inbounds %"struct.std::pair"* %4, i32 0, i32 1
  %11 = load i8** %3, align 8
  %12 = call i8* @_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE(i8* %11) #0
  %13 = load i8* %12
  %14 = trunc i8 %13 to i1
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %10, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Node_iterator"* @_ZSt7forwardINSt8__detail14_Node_iteratorIP4NodeLb1ELb0EEEEOT_RNSt16remove_referenceIS5_E4typeE(%"struct.std::__detail::_Node_iterator"* %__t) #3 {
  %1 = alloca %"struct.std::__detail::_Node_iterator"*, align 8
  store %"struct.std::__detail::_Node_iterator"* %__t, %"struct.std::__detail::_Node_iterator"** %1, align 8
  %2 = load %"struct.std::__detail::_Node_iterator"** %1, align 8
  ret %"struct.std::__detail::_Node_iterator"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr i8* @_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE(i8* %__t) #3 {
  %1 = alloca i8*, align 8
  store i8* %__t, i8** %1, align 8
  %2 = load i8** %1, align 8
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Identity"* @_ZNSt8__detail21_Hashtable_ebo_helperILi0ENS_9_IdentityELb1EE6_S_getERS2_(%"struct.std::__detail::_Hashtable_ebo_helper"* %__eboh) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hashtable_ebo_helper"*, align 8
  store %"struct.std::__detail::_Hashtable_ebo_helper"* %__eboh, %"struct.std::__detail::_Hashtable_ebo_helper"** %1, align 8
  %2 = load %"struct.std::__detail::_Hashtable_ebo_helper"** %1, align 8
  %3 = bitcast %"struct.std::__detail::_Hashtable_ebo_helper"* %2 to %"struct.std::__detail::_Identity"*
  ret %"struct.std::__detail::_Identity"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP4NodeSaIS1_EE9push_backERKS1_(%"class.std::deque"* %this, %struct.Node** %__x) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store %struct.Node** %__x, %struct.Node*** %2, align 8
  %3 = load %"class.std::deque"** %1
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %5 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %5, i32 0, i32 3
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator"* %6, i32 0, i32 0
  %8 = load %struct.Node*** %7, align 8
  %9 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %10 = getelementptr inbounds %"class.std::_Deque_base"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %10, i32 0, i32 3
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator"* %11, i32 0, i32 2
  %13 = load %struct.Node*** %12, align 8
  %14 = getelementptr inbounds %struct.Node** %13, i64 -1
  %15 = icmp ne %struct.Node** %8, %14
  br i1 %15, label %16, label %32

; <label>:16                                      ; preds = %0
  %17 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %18 = getelementptr inbounds %"class.std::_Deque_base"* %17, i32 0, i32 0
  %19 = bitcast %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %18 to %"class.std::allocator.7"*
  %20 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %21 = getelementptr inbounds %"class.std::_Deque_base"* %20, i32 0, i32 0
  %22 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %21, i32 0, i32 3
  %23 = getelementptr inbounds %"struct.std::_Deque_iterator"* %22, i32 0, i32 0
  %24 = load %struct.Node*** %23, align 8
  %25 = load %struct.Node*** %2, align 8
  call void @_ZNSt16allocator_traitsISaIP4NodeEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(%"class.std::allocator.7"* %19, %struct.Node** %24, %struct.Node** %25)
  %26 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %27 = getelementptr inbounds %"class.std::_Deque_base"* %26, i32 0, i32 0
  %28 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %27, i32 0, i32 3
  %29 = getelementptr inbounds %"struct.std::_Deque_iterator"* %28, i32 0, i32 0
  %30 = load %struct.Node*** %29, align 8
  %31 = getelementptr inbounds %struct.Node** %30, i32 1
  store %struct.Node** %31, %struct.Node*** %29, align 8
  br label %34

; <label>:32                                      ; preds = %0
  %33 = load %struct.Node*** %2, align 8
  call void @_ZNSt5dequeIP4NodeSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(%"class.std::deque"* %3, %struct.Node** %33)
  br label %34

; <label>:34                                      ; preds = %32, %16
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP4NodeSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(%"class.std::deque"* %this, %struct.Node** %__args) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store %struct.Node** %__args, %struct.Node*** %2, align 8
  %3 = load %"class.std::deque"** %1
  call void @_ZNSt5dequeIP4NodeSaIS1_EE22_M_reserve_map_at_backEm(%"class.std::deque"* %3, i64 1)
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %5 = call %struct.Node** @_ZNSt11_Deque_baseIP4NodeSaIS1_EE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %4)
  %6 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %7, i32 0, i32 3
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator"* %8, i32 0, i32 3
  %10 = load %struct.Node**** %9, align 8
  %11 = getelementptr inbounds %struct.Node*** %10, i64 1
  store %struct.Node** %5, %struct.Node*** %11, align 8
  %12 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %13 = getelementptr inbounds %"class.std::_Deque_base"* %12, i32 0, i32 0
  %14 = bitcast %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %13 to %"class.std::allocator.7"*
  %15 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %16 = getelementptr inbounds %"class.std::_Deque_base"* %15, i32 0, i32 0
  %17 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %16, i32 0, i32 3
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator"* %17, i32 0, i32 0
  %19 = load %struct.Node*** %18, align 8
  %20 = load %struct.Node*** %2, align 8
  %21 = call %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %20) #0
  call void @_ZNSt16allocator_traitsISaIP4NodeEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(%"class.std::allocator.7"* %14, %struct.Node** %19, %struct.Node** %21)
  %22 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %23 = getelementptr inbounds %"class.std::_Deque_base"* %22, i32 0, i32 0
  %24 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %23, i32 0, i32 3
  %25 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %26 = getelementptr inbounds %"class.std::_Deque_base"* %25, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %26, i32 0, i32 3
  %28 = getelementptr inbounds %"struct.std::_Deque_iterator"* %27, i32 0, i32 3
  %29 = load %struct.Node**** %28, align 8
  %30 = getelementptr inbounds %struct.Node*** %29, i64 1
  call void @_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_E11_M_set_nodeEPS3_(%"struct.std::_Deque_iterator"* %24, %struct.Node*** %30) #0
  %31 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %32 = getelementptr inbounds %"class.std::_Deque_base"* %31, i32 0, i32 0
  %33 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %32, i32 0, i32 3
  %34 = getelementptr inbounds %"struct.std::_Deque_iterator"* %33, i32 0, i32 1
  %35 = load %struct.Node*** %34, align 8
  %36 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %37 = getelementptr inbounds %"class.std::_Deque_base"* %36, i32 0, i32 0
  %38 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %37, i32 0, i32 3
  %39 = getelementptr inbounds %"struct.std::_Deque_iterator"* %38, i32 0, i32 0
  store %struct.Node** %35, %struct.Node*** %39, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP4NodeSaIS1_EE22_M_reserve_map_at_backEm(%"class.std::deque"* %this, i64 %__nodes_to_add) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store i64 %__nodes_to_add, i64* %2, align 8
  %3 = load %"class.std::deque"** %1
  %4 = load i64* %2, align 8
  %5 = add i64 %4, 1
  %6 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %7, i32 0, i32 1
  %9 = load i64* %8, align 8
  %10 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %11 = getelementptr inbounds %"class.std::_Deque_base"* %10, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %11, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator"* %12, i32 0, i32 3
  %14 = load %struct.Node**** %13, align 8
  %15 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %16 = getelementptr inbounds %"class.std::_Deque_base"* %15, i32 0, i32 0
  %17 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %16, i32 0, i32 0
  %18 = load %struct.Node**** %17, align 8
  %19 = ptrtoint %struct.Node*** %14 to i64
  %20 = ptrtoint %struct.Node*** %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 8
  %23 = sub i64 %9, %22
  %24 = icmp ugt i64 %5, %23
  br i1 %24, label %25, label %27

; <label>:25                                      ; preds = %0
  %26 = load i64* %2, align 8
  call void @_ZNSt5dequeIP4NodeSaIS1_EE17_M_reallocate_mapEmb(%"class.std::deque"* %3, i64 %26, i1 zeroext false)
  br label %27

; <label>:27                                      ; preds = %25, %0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt11_Deque_baseIP4NodeSaIS1_EE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %3 to %"class.std::allocator.7"*
  %5 = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  %6 = call %struct.Node** @_ZNSt16allocator_traitsISaIP4NodeEE8allocateERS2_m(%"class.std::allocator.7"* %4, i64 %5)
  ret %struct.Node** %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt16allocator_traitsISaIP4NodeEE8allocateERS2_m(%"class.std::allocator.7"* %__a, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.7"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.7"* %__a, %"class.std::allocator.7"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.7"** %1, align 8
  %4 = bitcast %"class.std::allocator.7"* %3 to %"class.__gnu_cxx::new_allocator.8"*
  %5 = load i64* %2, align 8
  %6 = call %struct.Node** @_ZN9__gnu_cxx13new_allocatorIP4NodeE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.8"* %4, i64 %5, i8* null)
  ret %struct.Node** %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZN9__gnu_cxx13new_allocatorIP4NodeE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.8"* %this, i64 %__n, i8*) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.8"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP4NodeE8max_sizeEv(%"class.__gnu_cxx::new_allocator.8"* %5) #0
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #10
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %struct.Node**
  ret %struct.Node** %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIP4NodeE8max_sizeEv(%"class.__gnu_cxx::new_allocator.8"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.8"** %1
  ret i64 2305843009213693951
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP4NodeSaIS1_EE17_M_reallocate_mapEmb(%"class.std::deque"* %this, i64 %__nodes_to_add, i1 zeroext %__add_at_front) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %__old_num_nodes = alloca i64, align 8
  %__new_num_nodes = alloca i64, align 8
  %__new_nstart = alloca %struct.Node***, align 8
  %__new_map_size = alloca i64, align 8
  %__new_map = alloca %struct.Node***, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store i64 %__nodes_to_add, i64* %2, align 8
  %4 = zext i1 %__add_at_front to i8
  store i8 %4, i8* %3, align 1
  %5 = load %"class.std::deque"** %1
  %6 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %7, i32 0, i32 3
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator"* %8, i32 0, i32 3
  %10 = load %struct.Node**** %9, align 8
  %11 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %12 = getelementptr inbounds %"class.std::_Deque_base"* %11, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %12, i32 0, i32 2
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator"* %13, i32 0, i32 3
  %15 = load %struct.Node**** %14, align 8
  %16 = ptrtoint %struct.Node*** %10 to i64
  %17 = ptrtoint %struct.Node*** %15 to i64
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
  %26 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %25, i32 0, i32 1
  %27 = load i64* %26, align 8
  %28 = load i64* %__new_num_nodes, align 8
  %29 = mul i64 2, %28
  %30 = icmp ugt i64 %27, %29
  br i1 %30, label %31, label %90

; <label>:31                                      ; preds = %0
  %32 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %33 = getelementptr inbounds %"class.std::_Deque_base"* %32, i32 0, i32 0
  %34 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %33, i32 0, i32 0
  %35 = load %struct.Node**** %34, align 8
  %36 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %37 = getelementptr inbounds %"class.std::_Deque_base"* %36, i32 0, i32 0
  %38 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %37, i32 0, i32 1
  %39 = load i64* %38, align 8
  %40 = load i64* %__new_num_nodes, align 8
  %41 = sub i64 %39, %40
  %42 = udiv i64 %41, 2
  %43 = getelementptr inbounds %struct.Node*** %35, i64 %42
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
  %51 = getelementptr inbounds %struct.Node*** %43, i64 %50
  store %struct.Node*** %51, %struct.Node**** %__new_nstart, align 8
  %52 = load %struct.Node**** %__new_nstart, align 8
  %53 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %54 = getelementptr inbounds %"class.std::_Deque_base"* %53, i32 0, i32 0
  %55 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %54, i32 0, i32 2
  %56 = getelementptr inbounds %"struct.std::_Deque_iterator"* %55, i32 0, i32 3
  %57 = load %struct.Node**** %56, align 8
  %58 = icmp ult %struct.Node*** %52, %57
  br i1 %58, label %59, label %73

; <label>:59                                      ; preds = %49
  %60 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %61 = getelementptr inbounds %"class.std::_Deque_base"* %60, i32 0, i32 0
  %62 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %61, i32 0, i32 2
  %63 = getelementptr inbounds %"struct.std::_Deque_iterator"* %62, i32 0, i32 3
  %64 = load %struct.Node**** %63, align 8
  %65 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %66 = getelementptr inbounds %"class.std::_Deque_base"* %65, i32 0, i32 0
  %67 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %66, i32 0, i32 3
  %68 = getelementptr inbounds %"struct.std::_Deque_iterator"* %67, i32 0, i32 3
  %69 = load %struct.Node**** %68, align 8
  %70 = getelementptr inbounds %struct.Node*** %69, i64 1
  %71 = load %struct.Node**** %__new_nstart, align 8
  %72 = call %struct.Node*** @_ZSt4copyIPPP4NodeS3_ET0_T_S5_S4_(%struct.Node*** %64, %struct.Node*** %70, %struct.Node*** %71)
  br label %89

; <label>:73                                      ; preds = %49
  %74 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %75 = getelementptr inbounds %"class.std::_Deque_base"* %74, i32 0, i32 0
  %76 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %75, i32 0, i32 2
  %77 = getelementptr inbounds %"struct.std::_Deque_iterator"* %76, i32 0, i32 3
  %78 = load %struct.Node**** %77, align 8
  %79 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %80 = getelementptr inbounds %"class.std::_Deque_base"* %79, i32 0, i32 0
  %81 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %80, i32 0, i32 3
  %82 = getelementptr inbounds %"struct.std::_Deque_iterator"* %81, i32 0, i32 3
  %83 = load %struct.Node**** %82, align 8
  %84 = getelementptr inbounds %struct.Node*** %83, i64 1
  %85 = load %struct.Node**** %__new_nstart, align 8
  %86 = load i64* %__old_num_nodes, align 8
  %87 = getelementptr inbounds %struct.Node*** %85, i64 %86
  %88 = call %struct.Node*** @_ZSt13copy_backwardIPPP4NodeS3_ET0_T_S5_S4_(%struct.Node*** %78, %struct.Node*** %84, %struct.Node*** %87)
  br label %89

; <label>:89                                      ; preds = %73, %59
  br label %149

; <label>:90                                      ; preds = %0
  %91 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %92 = getelementptr inbounds %"class.std::_Deque_base"* %91, i32 0, i32 0
  %93 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %92, i32 0, i32 1
  %94 = load i64* %93, align 8
  %95 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %96 = getelementptr inbounds %"class.std::_Deque_base"* %95, i32 0, i32 0
  %97 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %96, i32 0, i32 1
  %98 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %97, i64* %2)
  %99 = load i64* %98
  %100 = add i64 %94, %99
  %101 = add i64 %100, 2
  store i64 %101, i64* %__new_map_size, align 8
  %102 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %103 = load i64* %__new_map_size, align 8
  %104 = call %struct.Node*** @_ZNSt11_Deque_baseIP4NodeSaIS1_EE15_M_allocate_mapEm(%"class.std::_Deque_base"* %102, i64 %103)
  store %struct.Node*** %104, %struct.Node**** %__new_map, align 8
  %105 = load %struct.Node**** %__new_map, align 8
  %106 = load i64* %__new_map_size, align 8
  %107 = load i64* %__new_num_nodes, align 8
  %108 = sub i64 %106, %107
  %109 = udiv i64 %108, 2
  %110 = getelementptr inbounds %struct.Node*** %105, i64 %109
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
  %118 = getelementptr inbounds %struct.Node*** %110, i64 %117
  store %struct.Node*** %118, %struct.Node**** %__new_nstart, align 8
  %119 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %120 = getelementptr inbounds %"class.std::_Deque_base"* %119, i32 0, i32 0
  %121 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %120, i32 0, i32 2
  %122 = getelementptr inbounds %"struct.std::_Deque_iterator"* %121, i32 0, i32 3
  %123 = load %struct.Node**** %122, align 8
  %124 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %125 = getelementptr inbounds %"class.std::_Deque_base"* %124, i32 0, i32 0
  %126 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %125, i32 0, i32 3
  %127 = getelementptr inbounds %"struct.std::_Deque_iterator"* %126, i32 0, i32 3
  %128 = load %struct.Node**** %127, align 8
  %129 = getelementptr inbounds %struct.Node*** %128, i64 1
  %130 = load %struct.Node**** %__new_nstart, align 8
  %131 = call %struct.Node*** @_ZSt4copyIPPP4NodeS3_ET0_T_S5_S4_(%struct.Node*** %123, %struct.Node*** %129, %struct.Node*** %130)
  %132 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %133 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %134 = getelementptr inbounds %"class.std::_Deque_base"* %133, i32 0, i32 0
  %135 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %134, i32 0, i32 0
  %136 = load %struct.Node**** %135, align 8
  %137 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %138 = getelementptr inbounds %"class.std::_Deque_base"* %137, i32 0, i32 0
  %139 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %138, i32 0, i32 1
  %140 = load i64* %139, align 8
  call void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE17_M_deallocate_mapEPPS1_m(%"class.std::_Deque_base"* %132, %struct.Node*** %136, i64 %140) #0
  %141 = load %struct.Node**** %__new_map, align 8
  %142 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %143 = getelementptr inbounds %"class.std::_Deque_base"* %142, i32 0, i32 0
  %144 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %143, i32 0, i32 0
  store %struct.Node*** %141, %struct.Node**** %144, align 8
  %145 = load i64* %__new_map_size, align 8
  %146 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %147 = getelementptr inbounds %"class.std::_Deque_base"* %146, i32 0, i32 0
  %148 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %147, i32 0, i32 1
  store i64 %145, i64* %148, align 8
  br label %149

; <label>:149                                     ; preds = %116, %89
  %150 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %151 = getelementptr inbounds %"class.std::_Deque_base"* %150, i32 0, i32 0
  %152 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %151, i32 0, i32 2
  %153 = load %struct.Node**** %__new_nstart, align 8
  call void @_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_E11_M_set_nodeEPS3_(%"struct.std::_Deque_iterator"* %152, %struct.Node*** %153) #0
  %154 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %155 = getelementptr inbounds %"class.std::_Deque_base"* %154, i32 0, i32 0
  %156 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %155, i32 0, i32 3
  %157 = load %struct.Node**** %__new_nstart, align 8
  %158 = load i64* %__old_num_nodes, align 8
  %159 = getelementptr inbounds %struct.Node*** %157, i64 %158
  %160 = getelementptr inbounds %struct.Node*** %159, i64 -1
  call void @_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_E11_M_set_nodeEPS3_(%"struct.std::_Deque_iterator"* %156, %struct.Node*** %160) #0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node*** @_ZSt4copyIPPP4NodeS3_ET0_T_S5_S4_(%struct.Node*** %__first, %struct.Node*** %__last, %struct.Node*** %__result) #4 {
  %1 = alloca %struct.Node***, align 8
  %2 = alloca %struct.Node***, align 8
  %3 = alloca %struct.Node***, align 8
  store %struct.Node*** %__first, %struct.Node**** %1, align 8
  store %struct.Node*** %__last, %struct.Node**** %2, align 8
  store %struct.Node*** %__result, %struct.Node**** %3, align 8
  %4 = load %struct.Node**** %1, align 8
  %5 = call %struct.Node*** @_ZSt12__miter_baseIPPP4NodeENSt11_Miter_baseIT_E13iterator_typeES5_(%struct.Node*** %4)
  %6 = load %struct.Node**** %2, align 8
  %7 = call %struct.Node*** @_ZSt12__miter_baseIPPP4NodeENSt11_Miter_baseIT_E13iterator_typeES5_(%struct.Node*** %6)
  %8 = load %struct.Node**** %3, align 8
  %9 = call %struct.Node*** @_ZSt14__copy_move_a2ILb0EPPP4NodeS3_ET1_T0_S5_S4_(%struct.Node*** %5, %struct.Node*** %7, %struct.Node*** %8)
  ret %struct.Node*** %9
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node*** @_ZSt13copy_backwardIPPP4NodeS3_ET0_T_S5_S4_(%struct.Node*** %__first, %struct.Node*** %__last, %struct.Node*** %__result) #4 {
  %1 = alloca %struct.Node***, align 8
  %2 = alloca %struct.Node***, align 8
  %3 = alloca %struct.Node***, align 8
  store %struct.Node*** %__first, %struct.Node**** %1, align 8
  store %struct.Node*** %__last, %struct.Node**** %2, align 8
  store %struct.Node*** %__result, %struct.Node**** %3, align 8
  %4 = load %struct.Node**** %1, align 8
  %5 = call %struct.Node*** @_ZSt12__miter_baseIPPP4NodeENSt11_Miter_baseIT_E13iterator_typeES5_(%struct.Node*** %4)
  %6 = load %struct.Node**** %2, align 8
  %7 = call %struct.Node*** @_ZSt12__miter_baseIPPP4NodeENSt11_Miter_baseIT_E13iterator_typeES5_(%struct.Node*** %6)
  %8 = load %struct.Node**** %3, align 8
  %9 = call %struct.Node*** @_ZSt23__copy_move_backward_a2ILb0EPPP4NodeS3_ET1_T0_S5_S4_(%struct.Node*** %5, %struct.Node*** %7, %struct.Node*** %8)
  ret %struct.Node*** %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node*** @_ZNSt11_Deque_baseIP4NodeSaIS1_EE15_M_allocate_mapEm(%"class.std::_Deque_base"* %this, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i64, align 8
  %__map_alloc = alloca %"class.std::allocator.18", align 1
  %3 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %4 = load %"class.std::_Deque_base"** %1
  call void @_ZNKSt11_Deque_baseIP4NodeSaIS1_EE20_M_get_map_allocatorEv(%"class.std::allocator.18"* sret %__map_alloc, %"class.std::_Deque_base"* %4) #0
  %5 = load i64* %2, align 8
  %6 = call %struct.Node*** @_ZNSt16allocator_traitsISaIPP4NodeEE8allocateERS3_m(%"class.std::allocator.18"* %__map_alloc, i64 %5)
  store i32 1, i32* %3
  call void @_ZNSaIPP4NodeED2Ev(%"class.std::allocator.18"* %__map_alloc) #0
  ret %struct.Node*** %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE17_M_deallocate_mapEPPS1_m(%"class.std::_Deque_base"* %this, %struct.Node*** %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca %struct.Node***, align 8
  %3 = alloca i64, align 8
  %__map_alloc = alloca %"class.std::allocator.18", align 1
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store %struct.Node*** %__p, %struct.Node**** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::_Deque_base"** %1
  call void @_ZNKSt11_Deque_baseIP4NodeSaIS1_EE20_M_get_map_allocatorEv(%"class.std::allocator.18"* sret %__map_alloc, %"class.std::_Deque_base"* %4) #0
  %5 = load %struct.Node**** %2, align 8
  %6 = load i64* %3, align 8
  call void @_ZNSt16allocator_traitsISaIPP4NodeEE10deallocateERS3_PS2_m(%"class.std::allocator.18"* %__map_alloc, %struct.Node*** %5, i64 %6)
  call void @_ZNSaIPP4NodeED2Ev(%"class.std::allocator.18"* %__map_alloc) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNKSt11_Deque_baseIP4NodeSaIS1_EE20_M_get_map_allocatorEv(%"class.std::allocator.18"* noalias sret %agg.result, %"class.std::_Deque_base"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = call %"class.std::allocator.7"* @_ZNKSt11_Deque_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %2) #0
  call void @_ZNSaIPP4NodeEC2IS0_EERKSaIT_E(%"class.std::allocator.18"* %agg.result, %"class.std::allocator.7"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIPP4NodeEE10deallocateERS3_PS2_m(%"class.std::allocator.18"* %__a, %struct.Node*** %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.18"*, align 8
  %2 = alloca %struct.Node***, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.18"* %__a, %"class.std::allocator.18"** %1, align 8
  store %struct.Node*** %__p, %struct.Node**** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.18"** %1, align 8
  %5 = bitcast %"class.std::allocator.18"* %4 to %"class.__gnu_cxx::new_allocator.19"*
  %6 = load %struct.Node**** %2, align 8
  %7 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPP4NodeE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator.19"* %5, %struct.Node*** %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPP4NodeED2Ev(%"class.std::allocator.18"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.18"*, align 8
  store %"class.std::allocator.18"* %this, %"class.std::allocator.18"** %1, align 8
  %2 = load %"class.std::allocator.18"** %1
  %3 = bitcast %"class.std::allocator.18"* %2 to %"class.__gnu_cxx::new_allocator.19"*
  call void @_ZN9__gnu_cxx13new_allocatorIPP4NodeED2Ev(%"class.__gnu_cxx::new_allocator.19"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPP4NodeED2Ev(%"class.__gnu_cxx::new_allocator.19"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.19"*, align 8
  store %"class.__gnu_cxx::new_allocator.19"* %this, %"class.__gnu_cxx::new_allocator.19"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.19"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPP4NodeE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator.19"* %this, %struct.Node*** %__p, i64) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.19"*, align 8
  %3 = alloca %struct.Node***, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.19"* %this, %"class.__gnu_cxx::new_allocator.19"** %2, align 8
  store %struct.Node*** %__p, %struct.Node**** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.19"** %2
  %6 = load %struct.Node**** %3, align 8
  %7 = bitcast %struct.Node*** %6 to i8*
  call void @_ZdlPv(i8* %7) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPP4NodeEC2IS0_EERKSaIT_E(%"class.std::allocator.18"* %this, %"class.std::allocator.7"*) unnamed_addr #3 align 2 {
  %2 = alloca %"class.std::allocator.18"*, align 8
  %3 = alloca %"class.std::allocator.7"*, align 8
  store %"class.std::allocator.18"* %this, %"class.std::allocator.18"** %2, align 8
  store %"class.std::allocator.7"* %0, %"class.std::allocator.7"** %3, align 8
  %4 = load %"class.std::allocator.18"** %2
  %5 = bitcast %"class.std::allocator.18"* %4 to %"class.__gnu_cxx::new_allocator.19"*
  call void @_ZN9__gnu_cxx13new_allocatorIPP4NodeEC2Ev(%"class.__gnu_cxx::new_allocator.19"* %5) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.7"* @_ZNKSt11_Deque_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %3 to %"class.std::allocator.7"*
  ret %"class.std::allocator.7"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPP4NodeEC2Ev(%"class.__gnu_cxx::new_allocator.19"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.19"*, align 8
  store %"class.__gnu_cxx::new_allocator.19"* %this, %"class.__gnu_cxx::new_allocator.19"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.19"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node*** @_ZNSt16allocator_traitsISaIPP4NodeEE8allocateERS3_m(%"class.std::allocator.18"* %__a, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.18"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.18"* %__a, %"class.std::allocator.18"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.18"** %1, align 8
  %4 = bitcast %"class.std::allocator.18"* %3 to %"class.__gnu_cxx::new_allocator.19"*
  %5 = load i64* %2, align 8
  %6 = call %struct.Node*** @_ZN9__gnu_cxx13new_allocatorIPP4NodeE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.19"* %4, i64 %5, i8* null)
  ret %struct.Node*** %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node*** @_ZN9__gnu_cxx13new_allocatorIPP4NodeE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.19"* %this, i64 %__n, i8*) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.19"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.19"* %this, %"class.__gnu_cxx::new_allocator.19"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.19"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIPP4NodeE8max_sizeEv(%"class.__gnu_cxx::new_allocator.19"* %5) #0
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #10
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %struct.Node***
  ret %struct.Node*** %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIPP4NodeE8max_sizeEv(%"class.__gnu_cxx::new_allocator.19"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.19"*, align 8
  store %"class.__gnu_cxx::new_allocator.19"* %this, %"class.__gnu_cxx::new_allocator.19"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.19"** %1
  ret i64 2305843009213693951
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node*** @_ZSt23__copy_move_backward_a2ILb0EPPP4NodeS3_ET1_T0_S5_S4_(%struct.Node*** %__first, %struct.Node*** %__last, %struct.Node*** %__result) #4 {
  %1 = alloca %struct.Node***, align 8
  %2 = alloca %struct.Node***, align 8
  %3 = alloca %struct.Node***, align 8
  store %struct.Node*** %__first, %struct.Node**** %1, align 8
  store %struct.Node*** %__last, %struct.Node**** %2, align 8
  store %struct.Node*** %__result, %struct.Node**** %3, align 8
  %4 = load %struct.Node**** %1, align 8
  %5 = call %struct.Node*** @_ZSt12__niter_baseIPPP4NodeENSt11_Niter_baseIT_E13iterator_typeES5_(%struct.Node*** %4)
  %6 = load %struct.Node**** %2, align 8
  %7 = call %struct.Node*** @_ZSt12__niter_baseIPPP4NodeENSt11_Niter_baseIT_E13iterator_typeES5_(%struct.Node*** %6)
  %8 = load %struct.Node**** %3, align 8
  %9 = call %struct.Node*** @_ZSt12__niter_baseIPPP4NodeENSt11_Niter_baseIT_E13iterator_typeES5_(%struct.Node*** %8)
  %10 = call %struct.Node*** @_ZSt22__copy_move_backward_aILb0EPPP4NodeS3_ET1_T0_S5_S4_(%struct.Node*** %5, %struct.Node*** %7, %struct.Node*** %9)
  ret %struct.Node*** %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node*** @_ZSt12__miter_baseIPPP4NodeENSt11_Miter_baseIT_E13iterator_typeES5_(%struct.Node*** %__it) #4 {
  %1 = alloca %struct.Node***, align 8
  store %struct.Node*** %__it, %struct.Node**** %1, align 8
  %2 = load %struct.Node**** %1, align 8
  %3 = call %struct.Node*** @_ZNSt10_Iter_baseIPPP4NodeLb0EE7_S_baseES3_(%struct.Node*** %2)
  ret %struct.Node*** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node*** @_ZNSt10_Iter_baseIPPP4NodeLb0EE7_S_baseES3_(%struct.Node*** %__it) #3 align 2 {
  %1 = alloca %struct.Node***, align 8
  store %struct.Node*** %__it, %struct.Node**** %1, align 8
  %2 = load %struct.Node**** %1, align 8
  ret %struct.Node*** %2
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node*** @_ZSt22__copy_move_backward_aILb0EPPP4NodeS3_ET1_T0_S5_S4_(%struct.Node*** %__first, %struct.Node*** %__last, %struct.Node*** %__result) #4 {
  %1 = alloca %struct.Node***, align 8
  %2 = alloca %struct.Node***, align 8
  %3 = alloca %struct.Node***, align 8
  %__simple = alloca i8, align 1
  store %struct.Node*** %__first, %struct.Node**** %1, align 8
  store %struct.Node*** %__last, %struct.Node**** %2, align 8
  store %struct.Node*** %__result, %struct.Node**** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load %struct.Node**** %1, align 8
  %5 = load %struct.Node**** %2, align 8
  %6 = load %struct.Node**** %3, align 8
  %7 = call %struct.Node*** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPP4NodeEEPT_PKS6_S9_S7_(%struct.Node*** %4, %struct.Node*** %5, %struct.Node*** %6)
  ret %struct.Node*** %7
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node*** @_ZSt12__niter_baseIPPP4NodeENSt11_Niter_baseIT_E13iterator_typeES5_(%struct.Node*** %__it) #4 {
  %1 = alloca %struct.Node***, align 8
  store %struct.Node*** %__it, %struct.Node**** %1, align 8
  %2 = load %struct.Node**** %1, align 8
  %3 = call %struct.Node*** @_ZNSt10_Iter_baseIPPP4NodeLb0EE7_S_baseES3_(%struct.Node*** %2)
  ret %struct.Node*** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node*** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPP4NodeEEPT_PKS6_S9_S7_(%struct.Node*** %__first, %struct.Node*** %__last, %struct.Node*** %__result) #3 align 2 {
  %1 = alloca %struct.Node***, align 8
  %2 = alloca %struct.Node***, align 8
  %3 = alloca %struct.Node***, align 8
  %_Num = alloca i64, align 8
  store %struct.Node*** %__first, %struct.Node**** %1, align 8
  store %struct.Node*** %__last, %struct.Node**** %2, align 8
  store %struct.Node*** %__result, %struct.Node**** %3, align 8
  %4 = load %struct.Node**** %2, align 8
  %5 = load %struct.Node**** %1, align 8
  %6 = ptrtoint %struct.Node*** %4 to i64
  %7 = ptrtoint %struct.Node*** %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  store i64 %9, i64* %_Num, align 8
  %10 = load i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

; <label>:12                                      ; preds = %0
  %13 = load %struct.Node**** %3, align 8
  %14 = load i64* %_Num, align 8
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds %struct.Node*** %13, i64 %15
  %17 = bitcast %struct.Node*** %16 to i8*
  %18 = load %struct.Node**** %1, align 8
  %19 = bitcast %struct.Node*** %18 to i8*
  %20 = load i64* %_Num, align 8
  %21 = mul i64 8, %20
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %17, i8* %19, i64 %21, i32 8, i1 false)
  br label %22

; <label>:22                                      ; preds = %12, %0
  %23 = load %struct.Node**** %3, align 8
  %24 = load i64* %_Num, align 8
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds %struct.Node*** %23, i64 %25
  ret %struct.Node*** %26
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node*** @_ZSt14__copy_move_a2ILb0EPPP4NodeS3_ET1_T0_S5_S4_(%struct.Node*** %__first, %struct.Node*** %__last, %struct.Node*** %__result) #4 {
  %1 = alloca %struct.Node***, align 8
  %2 = alloca %struct.Node***, align 8
  %3 = alloca %struct.Node***, align 8
  store %struct.Node*** %__first, %struct.Node**** %1, align 8
  store %struct.Node*** %__last, %struct.Node**** %2, align 8
  store %struct.Node*** %__result, %struct.Node**** %3, align 8
  %4 = load %struct.Node**** %1, align 8
  %5 = call %struct.Node*** @_ZSt12__niter_baseIPPP4NodeENSt11_Niter_baseIT_E13iterator_typeES5_(%struct.Node*** %4)
  %6 = load %struct.Node**** %2, align 8
  %7 = call %struct.Node*** @_ZSt12__niter_baseIPPP4NodeENSt11_Niter_baseIT_E13iterator_typeES5_(%struct.Node*** %6)
  %8 = load %struct.Node**** %3, align 8
  %9 = call %struct.Node*** @_ZSt12__niter_baseIPPP4NodeENSt11_Niter_baseIT_E13iterator_typeES5_(%struct.Node*** %8)
  %10 = call %struct.Node*** @_ZSt13__copy_move_aILb0EPPP4NodeS3_ET1_T0_S5_S4_(%struct.Node*** %5, %struct.Node*** %7, %struct.Node*** %9)
  ret %struct.Node*** %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node*** @_ZSt13__copy_move_aILb0EPPP4NodeS3_ET1_T0_S5_S4_(%struct.Node*** %__first, %struct.Node*** %__last, %struct.Node*** %__result) #4 {
  %1 = alloca %struct.Node***, align 8
  %2 = alloca %struct.Node***, align 8
  %3 = alloca %struct.Node***, align 8
  %__simple = alloca i8, align 1
  store %struct.Node*** %__first, %struct.Node**** %1, align 8
  store %struct.Node*** %__last, %struct.Node**** %2, align 8
  store %struct.Node*** %__result, %struct.Node**** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load %struct.Node**** %1, align 8
  %5 = load %struct.Node**** %2, align 8
  %6 = load %struct.Node**** %3, align 8
  %7 = call %struct.Node*** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPP4NodeEEPT_PKS6_S9_S7_(%struct.Node*** %4, %struct.Node*** %5, %struct.Node*** %6)
  ret %struct.Node*** %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node*** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPP4NodeEEPT_PKS6_S9_S7_(%struct.Node*** %__first, %struct.Node*** %__last, %struct.Node*** %__result) #3 align 2 {
  %1 = alloca %struct.Node***, align 8
  %2 = alloca %struct.Node***, align 8
  %3 = alloca %struct.Node***, align 8
  %_Num = alloca i64, align 8
  store %struct.Node*** %__first, %struct.Node**** %1, align 8
  store %struct.Node*** %__last, %struct.Node**** %2, align 8
  store %struct.Node*** %__result, %struct.Node**** %3, align 8
  %4 = load %struct.Node**** %2, align 8
  %5 = load %struct.Node**** %1, align 8
  %6 = ptrtoint %struct.Node*** %4 to i64
  %7 = ptrtoint %struct.Node*** %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  store i64 %9, i64* %_Num, align 8
  %10 = load i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %0
  %13 = load %struct.Node**** %3, align 8
  %14 = bitcast %struct.Node*** %13 to i8*
  %15 = load %struct.Node**** %1, align 8
  %16 = bitcast %struct.Node*** %15 to i8*
  %17 = load i64* %_Num, align 8
  %18 = mul i64 8, %17
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %14, i8* %16, i64 %18, i32 8, i1 false)
  br label %19

; <label>:19                                      ; preds = %12, %0
  %20 = load %struct.Node**** %3, align 8
  %21 = load i64* %_Num, align 8
  %22 = getelementptr inbounds %struct.Node*** %20, i64 %21
  ret %struct.Node*** %22
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP4NodeSaIS1_EEC2EOS3_(%"class.std::deque"* %this, %"class.std::deque"* %__x) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store %"class.std::deque"* %__x, %"class.std::deque"** %2, align 8
  %3 = load %"class.std::deque"** %1
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %5 = load %"class.std::deque"** %2, align 8
  %6 = call %"class.std::deque"* @_ZSt4moveIRSt5dequeIP4NodeSaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::deque"* %5) #0
  %7 = bitcast %"class.std::deque"* %6 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIP4NodeSaIS1_EEC2EOS3_(%"class.std::_Deque_base"* %4, %"class.std::_Deque_base"* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::deque"* @_ZSt4moveIRSt5dequeIP4NodeSaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::deque"* %__t) #3 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %__t, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1, align 8
  ret %"class.std::deque"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP4NodeSaIS1_EEC2EOS3_(%"class.std::_Deque_base"* %this, %"class.std::_Deque_base"* %__x) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca %"class.std::_Deque_base"*, align 8
  %3 = alloca %"struct.std::integral_constant", align 1
  %4 = alloca %"struct.__gnu_cxx::__allocator_always_compares_equal", align 1
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store %"class.std::_Deque_base"* %__x, %"class.std::_Deque_base"** %2, align 8
  %5 = load %"class.std::_Deque_base"** %1
  %6 = load %"class.std::_Deque_base"** %2, align 8
  %7 = call %"class.std::_Deque_base"* @_ZSt4moveIRSt11_Deque_baseIP4NodeSaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::_Deque_base"* %6) #0
  %8 = bitcast %"struct.__gnu_cxx::__allocator_always_compares_equal"* %4 to %"struct.std::integral_constant"*
  call void @_ZNSt11_Deque_baseIP4NodeSaIS1_EEC2EOS3_St17integral_constantIbLb1EE(%"class.std::_Deque_base"* %5, %"class.std::_Deque_base"* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP4NodeSaIS1_EEC2EOS3_St17integral_constantIbLb1EE(%"class.std::_Deque_base"* %this, %"class.std::_Deque_base"* %__x) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca %"class.std::_Deque_base"*, align 8
  %3 = alloca %"struct.std::integral_constant", align 1
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store %"class.std::_Deque_base"* %__x, %"class.std::_Deque_base"** %2, align 8
  %4 = load %"class.std::_Deque_base"** %1
  %5 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  %6 = load %"class.std::_Deque_base"** %2, align 8
  %7 = call %"class.std::allocator.7"* @_ZNSt11_Deque_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %6) #0
  %8 = call %"class.std::allocator.7"* @_ZSt4moveIRSaIP4NodeEEONSt16remove_referenceIT_E4typeEOS5_(%"class.std::allocator.7"* %7) #0
  call void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE11_Deque_implC2EOS2_(%"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %5, %"class.std::allocator.7"* %8) #0
  call void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE17_M_initialize_mapEm(%"class.std::_Deque_base"* %4, i64 0)
  %9 = load %"class.std::_Deque_base"** %2, align 8
  %10 = getelementptr inbounds %"class.std::_Deque_base"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %10, i32 0, i32 0
  %12 = load %struct.Node**** %11, align 8
  %13 = icmp ne %struct.Node*** %12, null
  br i1 %13, label %14, label %18

; <label>:14                                      ; preds = %0
  %15 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  %16 = load %"class.std::_Deque_base"** %2, align 8
  %17 = getelementptr inbounds %"class.std::_Deque_base"* %16, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE11_Deque_impl12_M_swap_dataERS4_(%"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %15, %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %17) #0
  br label %18

; <label>:18                                      ; preds = %14, %0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::_Deque_base"* @_ZSt4moveIRSt11_Deque_baseIP4NodeSaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::_Deque_base"* %__t) #3 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %__t, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1, align 8
  ret %"class.std::_Deque_base"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE11_Deque_implC2EOS2_(%"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %this, %"class.std::allocator.7"* %__a) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"*, align 8
  %2 = alloca %"class.std::allocator.7"*, align 8
  store %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %this, %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"** %1, align 8
  store %"class.std::allocator.7"* %__a, %"class.std::allocator.7"** %2, align 8
  %3 = load %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"** %1
  %4 = bitcast %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %3 to %"class.std::allocator.7"*
  %5 = load %"class.std::allocator.7"** %2, align 8
  %6 = call %"class.std::allocator.7"* @_ZSt4moveIRSaIP4NodeEEONSt16remove_referenceIT_E4typeEOS5_(%"class.std::allocator.7"* %5) #0
  call void @_ZNSaIP4NodeEC2ERKS1_(%"class.std::allocator.7"* %4, %"class.std::allocator.7"* %6) #0
  %7 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %3, i32 0, i32 0
  store %struct.Node*** null, %struct.Node**** %7, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %3, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %3, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EC2Ev(%"struct.std::_Deque_iterator"* %9) #0
  %10 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %3, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EC2Ev(%"struct.std::_Deque_iterator"* %10) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.7"* @_ZSt4moveIRSaIP4NodeEEONSt16remove_referenceIT_E4typeEOS5_(%"class.std::allocator.7"* %__t) #3 {
  %1 = alloca %"class.std::allocator.7"*, align 8
  store %"class.std::allocator.7"* %__t, %"class.std::allocator.7"** %1, align 8
  %2 = load %"class.std::allocator.7"** %1, align 8
  ret %"class.std::allocator.7"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE17_M_initialize_mapEm(%"class.std::_Deque_base"* %this, i64 %__num_elements) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i64, align 8
  %__num_nodes = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %__nstart = alloca %struct.Node***, align 8
  %__nfinish = alloca %struct.Node***, align 8
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
  %15 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %17 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %16, i32 0, i32 1
  %18 = load i64* %17, align 8
  %19 = call %struct.Node*** @_ZNSt11_Deque_baseIP4NodeSaIS1_EE15_M_allocate_mapEm(%"class.std::_Deque_base"* %5, i64 %18)
  %20 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %20, i32 0, i32 0
  store %struct.Node*** %19, %struct.Node**** %21, align 8
  %22 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %22, i32 0, i32 0
  %24 = load %struct.Node**** %23, align 8
  %25 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %26 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %25, i32 0, i32 1
  %27 = load i64* %26, align 8
  %28 = load i64* %__num_nodes, align 8
  %29 = sub i64 %27, %28
  %30 = udiv i64 %29, 2
  %31 = getelementptr inbounds %struct.Node*** %24, i64 %30
  store %struct.Node*** %31, %struct.Node**** %__nstart, align 8
  %32 = load %struct.Node**** %__nstart, align 8
  %33 = load i64* %__num_nodes, align 8
  %34 = getelementptr inbounds %struct.Node*** %32, i64 %33
  store %struct.Node*** %34, %struct.Node**** %__nfinish, align 8
  %35 = load %struct.Node**** %__nstart, align 8
  %36 = load %struct.Node**** %__nfinish, align 8
  call void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE15_M_create_nodesEPPS1_S5_(%"class.std::_Deque_base"* %5, %struct.Node*** %35, %struct.Node*** %36)
  %37 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %38 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %37, i32 0, i32 2
  %39 = load %struct.Node**** %__nstart, align 8
  call void @_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_E11_M_set_nodeEPS3_(%"struct.std::_Deque_iterator"* %38, %struct.Node*** %39) #0
  %40 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %41 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %40, i32 0, i32 3
  %42 = load %struct.Node**** %__nfinish, align 8
  %43 = getelementptr inbounds %struct.Node*** %42, i64 -1
  call void @_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_E11_M_set_nodeEPS3_(%"struct.std::_Deque_iterator"* %41, %struct.Node*** %43) #0
  %44 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %45 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %44, i32 0, i32 2
  %46 = getelementptr inbounds %"struct.std::_Deque_iterator"* %45, i32 0, i32 1
  %47 = load %struct.Node*** %46, align 8
  %48 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %49 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %48, i32 0, i32 2
  %50 = getelementptr inbounds %"struct.std::_Deque_iterator"* %49, i32 0, i32 0
  store %struct.Node** %47, %struct.Node*** %50, align 8
  %51 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %52 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %51, i32 0, i32 3
  %53 = getelementptr inbounds %"struct.std::_Deque_iterator"* %52, i32 0, i32 1
  %54 = load %struct.Node*** %53, align 8
  %55 = load i64* %2, align 8
  %56 = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  %57 = urem i64 %55, %56
  %58 = getelementptr inbounds %struct.Node** %54, i64 %57
  %59 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %60 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %59, i32 0, i32 3
  %61 = getelementptr inbounds %"struct.std::_Deque_iterator"* %60, i32 0, i32 0
  store %struct.Node** %58, %struct.Node*** %61, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE11_Deque_impl12_M_swap_dataERS4_(%"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %this, %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"*, align 8
  %2 = alloca %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %this, %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"** %1, align 8
  store %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %__x, %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"** %2, align 8
  %3 = load %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"** %1
  %4 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %3, i32 0, i32 2
  %5 = load %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %5, i32 0, i32 2
  call void @_ZSt4swapISt15_Deque_iteratorIP4NodeRS2_PS2_EEvRT_S7_(%"struct.std::_Deque_iterator"* %4, %"struct.std::_Deque_iterator"* %6) #0
  %7 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %3, i32 0, i32 3
  %8 = load %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"** %2, align 8
  %9 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %8, i32 0, i32 3
  call void @_ZSt4swapISt15_Deque_iteratorIP4NodeRS2_PS2_EEvRT_S7_(%"struct.std::_Deque_iterator"* %7, %"struct.std::_Deque_iterator"* %9) #0
  %10 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %3, i32 0, i32 0
  %11 = load %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"** %2, align 8
  %12 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %11, i32 0, i32 0
  call void @_ZSt4swapIPPP4NodeEvRT_S5_(%struct.Node**** %10, %struct.Node**** %12) #0
  %13 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %3, i32 0, i32 1
  %14 = load %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"** %2, align 8
  %15 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %14, i32 0, i32 1
  call void @_ZSt4swapImEvRT_S1_(i64* %13, i64* %15) #0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt4swapISt15_Deque_iteratorIP4NodeRS2_PS2_EEvRT_S7_(%"struct.std::_Deque_iterator"* %__a, %"struct.std::_Deque_iterator"* %__b) #4 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  %__tmp = alloca %"struct.std::_Deque_iterator", align 8
  store %"struct.std::_Deque_iterator"* %__a, %"struct.std::_Deque_iterator"** %1, align 8
  store %"struct.std::_Deque_iterator"* %__b, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"** %1, align 8
  %4 = call %"struct.std::_Deque_iterator"* @_ZSt4moveIRSt15_Deque_iteratorIP4NodeRS2_PS2_EEONSt16remove_referenceIT_E4typeEOS8_(%"struct.std::_Deque_iterator"* %3) #0
  call void @_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EC2ERKS4_(%"struct.std::_Deque_iterator"* %__tmp, %"struct.std::_Deque_iterator"* %4) #0
  %5 = load %"struct.std::_Deque_iterator"** %1, align 8
  %6 = load %"struct.std::_Deque_iterator"** %2, align 8
  %7 = call %"struct.std::_Deque_iterator"* @_ZSt4moveIRSt15_Deque_iteratorIP4NodeRS2_PS2_EEONSt16remove_referenceIT_E4typeEOS8_(%"struct.std::_Deque_iterator"* %6) #0
  %8 = bitcast %"struct.std::_Deque_iterator"* %5 to i8*
  %9 = bitcast %"struct.std::_Deque_iterator"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  %10 = load %"struct.std::_Deque_iterator"** %2, align 8
  %11 = call %"struct.std::_Deque_iterator"* @_ZSt4moveIRSt15_Deque_iteratorIP4NodeRS2_PS2_EEONSt16remove_referenceIT_E4typeEOS8_(%"struct.std::_Deque_iterator"* %__tmp) #0
  %12 = bitcast %"struct.std::_Deque_iterator"* %10 to i8*
  %13 = bitcast %"struct.std::_Deque_iterator"* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt4swapIPPP4NodeEvRT_S5_(%struct.Node**** %__a, %struct.Node**** %__b) #4 {
  %1 = alloca %struct.Node****, align 8
  %2 = alloca %struct.Node****, align 8
  %__tmp = alloca %struct.Node***, align 8
  store %struct.Node**** %__a, %struct.Node***** %1, align 8
  store %struct.Node**** %__b, %struct.Node***** %2, align 8
  %3 = load %struct.Node***** %1, align 8
  %4 = call %struct.Node**** @_ZSt4moveIRPPP4NodeEONSt16remove_referenceIT_E4typeEOS6_(%struct.Node**** %3) #0
  %5 = load %struct.Node**** %4
  store %struct.Node*** %5, %struct.Node**** %__tmp, align 8
  %6 = load %struct.Node***** %2, align 8
  %7 = call %struct.Node**** @_ZSt4moveIRPPP4NodeEONSt16remove_referenceIT_E4typeEOS6_(%struct.Node**** %6) #0
  %8 = load %struct.Node**** %7
  %9 = load %struct.Node***** %1, align 8
  store %struct.Node*** %8, %struct.Node**** %9, align 8
  %10 = call %struct.Node**** @_ZSt4moveIRPPP4NodeEONSt16remove_referenceIT_E4typeEOS6_(%struct.Node**** %__tmp) #0
  %11 = load %struct.Node**** %10
  %12 = load %struct.Node***** %2, align 8
  store %struct.Node*** %11, %struct.Node**** %12, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt4swapImEvRT_S1_(i64* %__a, i64* %__b) #4 {
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
define linkonce_odr %struct.Node**** @_ZSt4moveIRPPP4NodeEONSt16remove_referenceIT_E4typeEOS6_(%struct.Node**** %__t) #3 {
  %1 = alloca %struct.Node****, align 8
  store %struct.Node**** %__t, %struct.Node***** %1, align 8
  %2 = load %struct.Node***** %1, align 8
  ret %struct.Node**** %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Deque_iterator"* @_ZSt4moveIRSt15_Deque_iteratorIP4NodeRS2_PS2_EEONSt16remove_referenceIT_E4typeEOS8_(%"struct.std::_Deque_iterator"* %__t) #3 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %__t, %"struct.std::_Deque_iterator"** %1, align 8
  %2 = load %"struct.std::_Deque_iterator"** %1, align 8
  ret %"struct.std::_Deque_iterator"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE15_M_create_nodesEPPS1_S5_(%"class.std::_Deque_base"* %this, %struct.Node*** %__nstart, %struct.Node*** %__nfinish) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca %struct.Node***, align 8
  %3 = alloca %struct.Node***, align 8
  %__cur = alloca %struct.Node***, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store %struct.Node*** %__nstart, %struct.Node**** %2, align 8
  store %struct.Node*** %__nfinish, %struct.Node**** %3, align 8
  %4 = load %"class.std::_Deque_base"** %1
  %5 = load %struct.Node**** %2, align 8
  store %struct.Node*** %5, %struct.Node**** %__cur, align 8
  br label %6

; <label>:6                                       ; preds = %13, %0
  %7 = load %struct.Node**** %__cur, align 8
  %8 = load %struct.Node**** %3, align 8
  %9 = icmp ult %struct.Node*** %7, %8
  br i1 %9, label %10, label %16

; <label>:10                                      ; preds = %6
  %11 = call %struct.Node** @_ZNSt11_Deque_baseIP4NodeSaIS1_EE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %4)
  %12 = load %struct.Node**** %__cur, align 8
  store %struct.Node** %11, %struct.Node*** %12, align 8
  br label %13

; <label>:13                                      ; preds = %10
  %14 = load %struct.Node**** %__cur, align 8
  %15 = getelementptr inbounds %struct.Node*** %14, i32 1
  store %struct.Node*** %15, %struct.Node**** %__cur, align 8
  br label %6

; <label>:16                                      ; preds = %6
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP4NodeEC2ERKS1_(%"class.std::allocator.7"* %this, %"class.std::allocator.7"* %__a) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.7"*, align 8
  %2 = alloca %"class.std::allocator.7"*, align 8
  store %"class.std::allocator.7"* %this, %"class.std::allocator.7"** %1, align 8
  store %"class.std::allocator.7"* %__a, %"class.std::allocator.7"** %2, align 8
  %3 = load %"class.std::allocator.7"** %1
  %4 = bitcast %"class.std::allocator.7"* %3 to %"class.__gnu_cxx::new_allocator.8"*
  %5 = load %"class.std::allocator.7"** %2, align 8
  %6 = bitcast %"class.std::allocator.7"* %5 to %"class.__gnu_cxx::new_allocator.8"*
  call void @_ZN9__gnu_cxx13new_allocatorIP4NodeEC2ERKS3_(%"class.__gnu_cxx::new_allocator.8"* %4, %"class.__gnu_cxx::new_allocator.8"* %6) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EC2Ev(%"struct.std::_Deque_iterator"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  %2 = load %"struct.std::_Deque_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  store %struct.Node** null, %struct.Node*** %3, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 1
  store %struct.Node** null, %struct.Node*** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 2
  store %struct.Node** null, %struct.Node*** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 3
  store %struct.Node*** null, %struct.Node**** %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP4NodeEC2ERKS3_(%"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"*) unnamed_addr #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  %3 = alloca %"class.__gnu_cxx::new_allocator.8"*, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %this, %"class.__gnu_cxx::new_allocator.8"** %2, align 8
  store %"class.__gnu_cxx::new_allocator.8"* %0, %"class.__gnu_cxx::new_allocator.8"** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.8"** %2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP4NodeSaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_(%"class.std::deque"* %this, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"class.std::allocator.7"*) #3 align 2 {
  %2 = alloca %"class.std::deque"*, align 8
  %3 = alloca %"class.std::allocator.7"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %2, align 8
  store %"class.std::allocator.7"* %0, %"class.std::allocator.7"** %3, align 8
  %4 = load %"class.std::deque"** %2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIP4NodeSaIS1_EE3endEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %4, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EC2ERKS4_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* %5) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP4NodeSaIS1_EED2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %3, i32 0, i32 0
  %5 = load %struct.Node**** %4, align 8
  %6 = icmp ne %struct.Node*** %5, null
  br i1 %6, label %7, label %23

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %8, i32 0, i32 2
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator"* %9, i32 0, i32 3
  %11 = load %struct.Node**** %10, align 8
  %12 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %12, i32 0, i32 3
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator"* %13, i32 0, i32 3
  %15 = load %struct.Node**** %14, align 8
  %16 = getelementptr inbounds %struct.Node*** %15, i64 1
  call void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE16_M_destroy_nodesEPPS1_S5_(%"class.std::_Deque_base"* %2, %struct.Node*** %11, %struct.Node*** %16) #0
  %17 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %18 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %17, i32 0, i32 0
  %19 = load %struct.Node**** %18, align 8
  %20 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %20, i32 0, i32 1
  %22 = load i64* %21, align 8
  call void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE17_M_deallocate_mapEPPS1_m(%"class.std::_Deque_base"* %2, %struct.Node*** %19, i64 %22) #0
  br label %23

; <label>:23                                      ; preds = %7, %0
  %24 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE11_Deque_implD2Ev(%"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %24) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE16_M_destroy_nodesEPPS1_S5_(%"class.std::_Deque_base"* %this, %struct.Node*** %__nstart, %struct.Node*** %__nfinish) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca %struct.Node***, align 8
  %3 = alloca %struct.Node***, align 8
  %__n = alloca %struct.Node***, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store %struct.Node*** %__nstart, %struct.Node**** %2, align 8
  store %struct.Node*** %__nfinish, %struct.Node**** %3, align 8
  %4 = load %"class.std::_Deque_base"** %1
  %5 = load %struct.Node**** %2, align 8
  store %struct.Node*** %5, %struct.Node**** %__n, align 8
  br label %6

; <label>:6                                       ; preds = %13, %0
  %7 = load %struct.Node**** %__n, align 8
  %8 = load %struct.Node**** %3, align 8
  %9 = icmp ult %struct.Node*** %7, %8
  br i1 %9, label %10, label %16

; <label>:10                                      ; preds = %6
  %11 = load %struct.Node**** %__n, align 8
  %12 = load %struct.Node*** %11, align 8
  call void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE18_M_deallocate_nodeEPS1_(%"class.std::_Deque_base"* %4, %struct.Node** %12) #0
  br label %13

; <label>:13                                      ; preds = %10
  %14 = load %struct.Node**** %__n, align 8
  %15 = getelementptr inbounds %struct.Node*** %14, i32 1
  store %struct.Node*** %15, %struct.Node**** %__n, align 8
  br label %6

; <label>:16                                      ; preds = %6
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE11_Deque_implD2Ev(%"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %this) unnamed_addr #4 align 2 {
  %1 = alloca %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %this, %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"** %1, align 8
  %2 = load %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"** %1
  %3 = bitcast %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %2 to %"class.std::allocator.7"*
  call void @_ZNSaIP4NodeED2Ev(%"class.std::allocator.7"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP4NodeSaIS1_EEC2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE11_Deque_implC2Ev(%"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %3)
  call void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE17_M_initialize_mapEm(%"class.std::_Deque_base"* %2, i64 0)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIP4NodeSaIS1_EE11_Deque_implC2Ev(%"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %this, %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"** %1, align 8
  %2 = load %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"** %1
  %3 = bitcast %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %2 to %"class.std::allocator.7"*
  call void @_ZNSaIP4NodeEC2Ev(%"class.std::allocator.7"* %3) #0
  %4 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %2, i32 0, i32 0
  store %struct.Node*** null, %struct.Node**** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %2, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %2, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EC2Ev(%"struct.std::_Deque_iterator"* %6) #0
  %7 = getelementptr inbounds %"struct.std::_Deque_base<Node *, std::allocator<Node *> >::_Deque_impl"* %2, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EC2Ev(%"struct.std::_Deque_iterator"* %7) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP4NodeEC2Ev(%"class.std::allocator.7"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.7"*, align 8
  store %"class.std::allocator.7"* %this, %"class.std::allocator.7"** %1, align 8
  %2 = load %"class.std::allocator.7"** %1
  %3 = bitcast %"class.std::allocator.7"* %2 to %"class.__gnu_cxx::new_allocator.8"*
  call void @_ZN9__gnu_cxx13new_allocatorIP4NodeEC2Ev(%"class.__gnu_cxx::new_allocator.8"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev(%"class.std::_Hashtable"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::_Hashtable"*, align 8
  store %"class.std::_Hashtable"* %this, %"class.std::_Hashtable"** %1, align 8
  %2 = load %"class.std::_Hashtable"** %1
  call void @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv(%"class.std::_Hashtable"* %2) #0
  call void @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv(%"class.std::_Hashtable"* %2)
  %3 = bitcast %"class.std::_Hashtable"* %2 to %"struct.std::__detail::_Hashtable_alloc"*
  call void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEED2Ev(%"struct.std::__detail::_Hashtable_alloc"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv(%"class.std::_Hashtable"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Hashtable"*, align 8
  store %"class.std::_Hashtable"* %this, %"class.std::_Hashtable"** %1, align 8
  %2 = load %"class.std::_Hashtable"** %1
  %3 = bitcast %"class.std::_Hashtable"* %2 to %"struct.std::__detail::_Hashtable_alloc"*
  %4 = call %"struct.std::__detail::_Hash_node"* @_ZNKSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_beginEv(%"class.std::_Hashtable"* %2)
  call void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEE19_M_deallocate_nodesEPS4_(%"struct.std::__detail::_Hashtable_alloc"* %3, %"struct.std::__detail::_Hash_node"* %4)
  %5 = getelementptr inbounds %"class.std::_Hashtable"* %2, i32 0, i32 0
  %6 = load %"struct.std::__detail::_Hash_node_base"*** %5, align 8
  %7 = bitcast %"struct.std::__detail::_Hash_node_base"** %6 to i8*
  %8 = getelementptr inbounds %"class.std::_Hashtable"* %2, i32 0, i32 1
  %9 = load i64* %8, align 8
  %10 = mul i64 %9, 8
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %10, i32 8, i1 false)
  %11 = getelementptr inbounds %"class.std::_Hashtable"* %2, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %"class.std::_Hashtable"* %2, i32 0, i32 2
  %13 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %12, i32 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %13, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEED2Ev(%"struct.std::__detail::_Hashtable_alloc"* %this) unnamed_addr #4 align 2 {
  %1 = alloca %"struct.std::__detail::_Hashtable_alloc"*, align 8
  store %"struct.std::__detail::_Hashtable_alloc"* %this, %"struct.std::__detail::_Hashtable_alloc"** %1, align 8
  %2 = load %"struct.std::__detail::_Hashtable_alloc"** %1
  %3 = bitcast %"struct.std::__detail::_Hashtable_alloc"* %2 to %"struct.std::__detail::_Hashtable_ebo_helper.3"*
  call void @_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeIP4NodeLb0EEEELb1EED2Ev(%"struct.std::__detail::_Hashtable_ebo_helper.3"* %3) #0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeIP4NodeLb0EEEELb1EED2Ev(%"struct.std::__detail::_Hashtable_ebo_helper.3"* %this) unnamed_addr #4 align 2 {
  %1 = alloca %"struct.std::__detail::_Hashtable_ebo_helper.3"*, align 8
  store %"struct.std::__detail::_Hashtable_ebo_helper.3"* %this, %"struct.std::__detail::_Hashtable_ebo_helper.3"** %1, align 8
  %2 = load %"struct.std::__detail::_Hashtable_ebo_helper.3"** %1
  %3 = bitcast %"struct.std::__detail::_Hashtable_ebo_helper.3"* %2 to %"class.std::allocator.4"*
  call void @_ZNSaINSt8__detail10_Hash_nodeIP4NodeLb0EEEED2Ev(%"class.std::allocator.4"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaINSt8__detail10_Hash_nodeIP4NodeLb0EEEED2Ev(%"class.std::allocator.4"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.4"* %this, %"class.std::allocator.4"** %1, align 8
  %2 = load %"class.std::allocator.4"** %1
  %3 = bitcast %"class.std::allocator.4"* %2 to %"class.__gnu_cxx::new_allocator.5"*
  call void @_ZN9__gnu_cxx13new_allocatorINSt8__detail10_Hash_nodeIP4NodeLb0EEEED2Ev(%"class.__gnu_cxx::new_allocator.5"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorINSt8__detail10_Hash_nodeIP4NodeLb0EEEED2Ev(%"class.__gnu_cxx::new_allocator.5"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.5"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEE19_M_deallocate_nodesEPS4_(%"struct.std::__detail::_Hashtable_alloc"* %this, %"struct.std::__detail::_Hash_node"* %__n) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hashtable_alloc"*, align 8
  %2 = alloca %"struct.std::__detail::_Hash_node"*, align 8
  %__tmp = alloca %"struct.std::__detail::_Hash_node"*, align 8
  store %"struct.std::__detail::_Hashtable_alloc"* %this, %"struct.std::__detail::_Hashtable_alloc"** %1, align 8
  store %"struct.std::__detail::_Hash_node"* %__n, %"struct.std::__detail::_Hash_node"** %2, align 8
  %3 = load %"struct.std::__detail::_Hashtable_alloc"** %1
  br label %4

; <label>:4                                       ; preds = %7, %0
  %5 = load %"struct.std::__detail::_Hash_node"** %2, align 8
  %6 = icmp ne %"struct.std::__detail::_Hash_node"* %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %4
  %8 = load %"struct.std::__detail::_Hash_node"** %2, align 8
  store %"struct.std::__detail::_Hash_node"* %8, %"struct.std::__detail::_Hash_node"** %__tmp, align 8
  %9 = load %"struct.std::__detail::_Hash_node"** %2, align 8
  %10 = call %"struct.std::__detail::_Hash_node"* @_ZNKSt8__detail10_Hash_nodeIP4NodeLb0EE7_M_nextEv(%"struct.std::__detail::_Hash_node"* %9) #0
  store %"struct.std::__detail::_Hash_node"* %10, %"struct.std::__detail::_Hash_node"** %2, align 8
  %11 = load %"struct.std::__detail::_Hash_node"** %__tmp, align 8
  call void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEE18_M_deallocate_nodeEPS4_(%"struct.std::__detail::_Hashtable_alloc"* %3, %"struct.std::__detail::_Hash_node"* %11)
  br label %4

; <label>:12                                      ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEE18_M_deallocate_nodeEPS4_(%"struct.std::__detail::_Hashtable_alloc"* %this, %"struct.std::__detail::_Hash_node"* %__n) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hashtable_alloc"*, align 8
  %2 = alloca %"struct.std::__detail::_Hash_node"*, align 8
  %__ptr = alloca %"struct.std::__detail::_Hash_node"*, align 8
  %__a = alloca %"class.std::allocator.7", align 1
  store %"struct.std::__detail::_Hashtable_alloc"* %this, %"struct.std::__detail::_Hashtable_alloc"** %1, align 8
  store %"struct.std::__detail::_Hash_node"* %__n, %"struct.std::__detail::_Hash_node"** %2, align 8
  %3 = load %"struct.std::__detail::_Hashtable_alloc"** %1
  %4 = load %"struct.std::__detail::_Hash_node"** %2, align 8
  %5 = call %"struct.std::__detail::_Hash_node"* @_ZNSt14pointer_traitsIPNSt8__detail10_Hash_nodeIP4NodeLb0EEEE10pointer_toERS4_(%"struct.std::__detail::_Hash_node"* %4) #0
  store %"struct.std::__detail::_Hash_node"* %5, %"struct.std::__detail::_Hash_node"** %__ptr, align 8
  %6 = call %"class.std::allocator.4"* @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEE17_M_node_allocatorEv(%"struct.std::__detail::_Hashtable_alloc"* %3)
  call void @_ZNSaIP4NodeEC2INSt8__detail10_Hash_nodeIS0_Lb0EEEEERKSaIT_E(%"class.std::allocator.7"* %__a, %"class.std::allocator.4"* %6) #0
  %7 = load %"struct.std::__detail::_Hash_node"** %2, align 8
  %8 = bitcast %"struct.std::__detail::_Hash_node"* %7 to %"struct.std::__detail::_Hash_node_value_base"*
  %9 = call %struct.Node** @_ZNSt8__detail21_Hash_node_value_baseIP4NodeE9_M_valptrEv(%"struct.std::__detail::_Hash_node_value_base"* %8) #0
  call void @_ZNSt16allocator_traitsISaIP4NodeEE7destroyIS1_EEvRS2_PT_(%"class.std::allocator.7"* %__a, %struct.Node** %9)
  %10 = load %"struct.std::__detail::_Hash_node"** %2, align 8
  %11 = call %"class.std::allocator.4"* @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEE17_M_node_allocatorEv(%"struct.std::__detail::_Hashtable_alloc"* %3)
  %12 = load %"struct.std::__detail::_Hash_node"** %__ptr, align 8
  call void @_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeIP4NodeLb0EEEEE10deallocateERS5_PS4_m(%"class.std::allocator.4"* %11, %"struct.std::__detail::_Hash_node"* %12, i64 1)
  call void @_ZNSaIP4NodeED2Ev(%"class.std::allocator.7"* %__a) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node"* @_ZNSt14pointer_traitsIPNSt8__detail10_Hash_nodeIP4NodeLb0EEEE10pointer_toERS4_(%"struct.std::__detail::_Hash_node"* %__r) #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hash_node"*, align 8
  store %"struct.std::__detail::_Hash_node"* %__r, %"struct.std::__detail::_Hash_node"** %1, align 8
  %2 = load %"struct.std::__detail::_Hash_node"** %1, align 8
  %3 = call %"struct.std::__detail::_Hash_node"* @_ZSt9addressofINSt8__detail10_Hash_nodeIP4NodeLb0EEEEPT_RS5_(%"struct.std::__detail::_Hash_node"* %2) #0
  ret %"struct.std::__detail::_Hash_node"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeIP4NodeLb0EEEEE10deallocateERS5_PS4_m(%"class.std::allocator.4"* %__a, %"struct.std::__detail::_Hash_node"* %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.4"*, align 8
  %2 = alloca %"struct.std::__detail::_Hash_node"*, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.4"* %__a, %"class.std::allocator.4"** %1, align 8
  store %"struct.std::__detail::_Hash_node"* %__p, %"struct.std::__detail::_Hash_node"** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.4"** %1, align 8
  %5 = bitcast %"class.std::allocator.4"* %4 to %"class.__gnu_cxx::new_allocator.5"*
  %6 = load %"struct.std::__detail::_Hash_node"** %2, align 8
  %7 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorINSt8__detail10_Hash_nodeIP4NodeLb0EEEE10deallocateEPS5_m(%"class.__gnu_cxx::new_allocator.5"* %5, %"struct.std::__detail::_Hash_node"* %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorINSt8__detail10_Hash_nodeIP4NodeLb0EEEE10deallocateEPS5_m(%"class.__gnu_cxx::new_allocator.5"* %this, %"struct.std::__detail::_Hash_node"* %__p, i64) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  %3 = alloca %"struct.std::__detail::_Hash_node"*, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %2, align 8
  store %"struct.std::__detail::_Hash_node"* %__p, %"struct.std::__detail::_Hash_node"** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.5"** %2
  %6 = load %"struct.std::__detail::_Hash_node"** %3, align 8
  %7 = bitcast %"struct.std::__detail::_Hash_node"* %6 to i8*
  call void @_ZdlPv(i8* %7) #0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"struct.std::__detail::_Hash_node"* @_ZSt9addressofINSt8__detail10_Hash_nodeIP4NodeLb0EEEEPT_RS5_(%"struct.std::__detail::_Hash_node"* %__r) #4 {
  %1 = alloca %"struct.std::__detail::_Hash_node"*, align 8
  store %"struct.std::__detail::_Hash_node"* %__r, %"struct.std::__detail::_Hash_node"** %1, align 8
  %2 = load %"struct.std::__detail::_Hash_node"** %1, align 8
  %3 = call %"struct.std::__detail::_Hash_node"* @_ZSt11__addressofINSt8__detail10_Hash_nodeIP4NodeLb0EEEEPT_RS5_(%"struct.std::__detail::_Hash_node"* %2) #0
  ret %"struct.std::__detail::_Hash_node"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIP4NodeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEEC2Ev(%"class.std::_Hashtable"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::_Hashtable"*, align 8
  store %"class.std::_Hashtable"* %this, %"class.std::_Hashtable"** %1, align 8
  %2 = load %"class.std::_Hashtable"** %1
  %3 = bitcast %"class.std::_Hashtable"* %2 to %"struct.std::__detail::_Hashtable_base"*
  %4 = bitcast %"class.std::_Hashtable"* %2 to %"struct.std::__detail::_Map_base"*
  %5 = bitcast %"class.std::_Hashtable"* %2 to %"struct.std::__detail::_Insert"*
  %6 = bitcast %"class.std::_Hashtable"* %2 to %"struct.std::__detail::_Rehash_base"*
  %7 = bitcast %"class.std::_Hashtable"* %2 to %"struct.std::__detail::_Equality"*
  %8 = bitcast %"class.std::_Hashtable"* %2 to %"struct.std::__detail::_Hashtable_alloc"*
  call void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEEC2Ev(%"struct.std::__detail::_Hashtable_alloc"* %8) #0
  %9 = getelementptr inbounds %"class.std::_Hashtable"* %2, i32 0, i32 0
  %10 = getelementptr inbounds %"class.std::_Hashtable"* %2, i32 0, i32 5
  store %"struct.std::__detail::_Hash_node_base"** %10, %"struct.std::__detail::_Hash_node_base"*** %9, align 8
  %11 = getelementptr inbounds %"class.std::_Hashtable"* %2, i32 0, i32 1
  store i64 1, i64* %11, align 8
  %12 = getelementptr inbounds %"class.std::_Hashtable"* %2, i32 0, i32 2
  call void @_ZNSt8__detail15_Hash_node_baseC2Ev(%"struct.std::__detail::_Hash_node_base"* %12) #0
  %13 = getelementptr inbounds %"class.std::_Hashtable"* %2, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %"class.std::_Hashtable"* %2, i32 0, i32 4
  call void @_ZNSt8__detail20_Prime_rehash_policyC2Ef(%"struct.std::__detail::_Prime_rehash_policy"* %14, float 1.000000e+00) #0
  %15 = getelementptr inbounds %"class.std::_Hashtable"* %2, i32 0, i32 5
  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %15, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIP4NodeLb0EEEEEC2Ev(%"struct.std::__detail::_Hashtable_alloc"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hashtable_alloc"*, align 8
  store %"struct.std::__detail::_Hashtable_alloc"* %this, %"struct.std::__detail::_Hashtable_alloc"** %1, align 8
  %2 = load %"struct.std::__detail::_Hashtable_alloc"** %1
  %3 = bitcast %"struct.std::__detail::_Hashtable_alloc"* %2 to %"struct.std::__detail::_Hashtable_ebo_helper.3"*
  call void @_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeIP4NodeLb0EEEELb1EEC2Ev(%"struct.std::__detail::_Hashtable_ebo_helper.3"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8__detail15_Hash_node_baseC2Ev(%"struct.std::__detail::_Hash_node_base"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hash_node_base"*, align 8
  store %"struct.std::__detail::_Hash_node_base"* %this, %"struct.std::__detail::_Hash_node_base"** %1, align 8
  %2 = load %"struct.std::__detail::_Hash_node_base"** %1
  %3 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"* %2, i32 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8__detail20_Prime_rehash_policyC2Ef(%"struct.std::__detail::_Prime_rehash_policy"* %this, float %__z) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Prime_rehash_policy"*, align 8
  %2 = alloca float, align 4
  store %"struct.std::__detail::_Prime_rehash_policy"* %this, %"struct.std::__detail::_Prime_rehash_policy"** %1, align 8
  store float %__z, float* %2, align 4
  %3 = load %"struct.std::__detail::_Prime_rehash_policy"** %1
  %4 = getelementptr inbounds %"struct.std::__detail::_Prime_rehash_policy"* %3, i32 0, i32 0
  %5 = load float* %2, align 4
  store float %5, float* %4, align 4
  %6 = getelementptr inbounds %"struct.std::__detail::_Prime_rehash_policy"* %3, i32 0, i32 1
  store i64 0, i64* %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8__detail21_Hashtable_ebo_helperILi0ESaINS_10_Hash_nodeIP4NodeLb0EEEELb1EEC2Ev(%"struct.std::__detail::_Hashtable_ebo_helper.3"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::__detail::_Hashtable_ebo_helper.3"*, align 8
  store %"struct.std::__detail::_Hashtable_ebo_helper.3"* %this, %"struct.std::__detail::_Hashtable_ebo_helper.3"** %1, align 8
  %2 = load %"struct.std::__detail::_Hashtable_ebo_helper.3"** %1
  %3 = bitcast %"struct.std::__detail::_Hashtable_ebo_helper.3"* %2 to %"class.std::allocator.4"*
  call void @_ZNSaINSt8__detail10_Hash_nodeIP4NodeLb0EEEEC2Ev(%"class.std::allocator.4"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaINSt8__detail10_Hash_nodeIP4NodeLb0EEEEC2Ev(%"class.std::allocator.4"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.4"*, align 8
  store %"class.std::allocator.4"* %this, %"class.std::allocator.4"** %1, align 8
  %2 = load %"class.std::allocator.4"** %1
  %3 = bitcast %"class.std::allocator.4"* %2 to %"class.__gnu_cxx::new_allocator.5"*
  call void @_ZN9__gnu_cxx13new_allocatorINSt8__detail10_Hash_nodeIP4NodeLb0EEEEC2Ev(%"class.__gnu_cxx::new_allocator.5"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorINSt8__detail10_Hash_nodeIP4NodeLb0EEEEC2Ev(%"class.__gnu_cxx::new_allocator.5"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.5"*, align 8
  store %"class.__gnu_cxx::new_allocator.5"* %this, %"class.__gnu_cxx::new_allocator.5"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.5"** %1
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
attributes #8 = { nounwind readnone }
attributes #9 = { builtin }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
