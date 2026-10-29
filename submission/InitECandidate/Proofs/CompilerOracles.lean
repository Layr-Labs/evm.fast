import Flapjack.Pancake.Proofs.PanToTarget.RiscVSource

/-! Allocation-oracle compilation is certified by the general compiler theorem.
The oracle changes compiler search, while the compiler still validates each coloring. -/
namespace InitE
open Flapjack Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend
open Flapjack.Compiler.Backend.BackendProof Flapjack.Basis.Pure.MlString
open Flapjack.Pancake.PanLang Flapjack.SemanticsPropsHOL
open Flapjack.Compiler.Backend.RiscVConfig Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Pancake.Proofs.PanToTarget

def oracleCompilerConfig (oracles : List (Option (Spt Nat))) : Backend.Config :=
  { pancakeRiscVBackendConfig with
    wordToWordConf := { pancakeRiscVBackendConfig.wordToWordConf with colOracle := oracles } }

theorem oracleBackendConfigOk (oracles : List (Option (Spt Nat))) :
    backendConfigOk riscvConfig (oracleCompilerConfig oracles) := by
  simpa only [oracleCompilerConfig, backendConfigOk, pancakeRiscVBackendConfig_eq]
    using riscvPancakeBackendConfigOk

theorem oracleMachineInitOk (oracles : List (Option (Spt Nat)))
    (mc : MachineConfig 64 RiscV.L3.riscv_state RiscVProjection)
    (hmc : isRiscvMachineConfig mc) : mcInitOk riscvConfig (oracleCompilerConfig oracles) mc := by
  simpa only [oracleCompilerConfig, mcInitOk, pancakeRiscVBackendConfig_eq]
    using riscvPancakeInitOk mc hmc

theorem oracleHeapLimit_lt (oracles : List (Option (Spt Nat))) :
    (wordSemBytesInWord : BitVec 64).toNat *
      (2 * DataToWord.maxHeapLimit 64 (oracleCompilerConfig oracles).dataConf - 1) < 2 ^ 64 := by
  simpa only [oracleCompilerConfig, pancakeRiscVBackendConfig_eq] using riscvPancakeHeapLimit_lt

theorem panToTargetCompileSemanticsOraclesRiscV {σ : Type}
    (oracles : List (Option (Spt Nat)))
    (mc : MachineConfig 64 RiscV.L3.riscv_state RiscVProjection)
    (pan_code : List (DeclHOL 64)) (bytes : List (BitVec 8)) (bitmaps : List (BitVec 64))
    (c' : Backend.Config) (stack_max : Option Nat) (s : PanSemStateFiniteExact 64 σ)
    (ms : RiscV.L3.riscv_state) (globals_size heap_len : Nat) (adj_ptr2 adj_ptr4 : BitVec 64)
    (ffi : HolFfiState σ) (cbspace data_sp : Nat) (start : MlS) :
    isRiscvMachineConfig mc →
    compileProgMax (oracleCompilerConfig oracles) mc pan_code =
      (some (bytes, bitmaps, c'), stack_max) ∧
    pancakeGoodCodeHOL pan_code = true ∧
    distinctParamsHOL (functionsHOL pan_code) ∧
    ((functionsHOL pan_code).map Prod.fst).Nodup ∧
    s.code = HolFiniteMapExact.empty ∧
    s.locals = HolFiniteMapExact.empty ∧
    s.globals = HolFiniteMapExact.empty ∧
    sizeOfEidsHOL pan_code < 2 ^ 64 ∧
    s.eshapes = HolFiniteMapExact.empty ∧
    (0 : BitVec 64) < mc.target.getReg ms mc.lenReg ∧
    globals_size =
      (let dec_shs := decShapesHOL pan_code
       let struct_ctxt := decsStcnamesHOLExact (width := 64) [] pan_code
       (dec_shs.map (sizeOfShapeWithContextHOL (holThe struct_ctxt))).sum) ∧
    mc.target.getReg ms mc.lenReg < mc.target.getReg ms mc.ptr2Reg ∧
    mc.target.getReg ms mc.lenReg = s.baseAddr ∧
    globalsAllocatableHOL s pan_code ∧
    heap_len = (mc.target.getReg ms mc.ptr2Reg + -1 * s.baseAddr).toNat / (64 / 8) ∧
    s.topAddr = s.baseAddr + (wordSemBytesInWord : BitVec 64) * BitVec.ofNat 64 heap_len -
      BitVec.ofNat 64 (globals_size * 64 / 8) ∧
    globals_size ≤ heap_len ∧
    s.memaddrs = StackRemove.addresses (mc.target.getReg ms mc.lenReg) (heap_len - globals_size) ∧
    holAligned (wordShiftAmount 64 + 1)
      (mc.target.getReg ms mc.ptr2Reg + -1 * mc.target.getReg ms mc.lenReg) = true ∧
    adj_ptr2 = mc.target.getReg ms mc.lenReg +
      (wordSemBytesInWord : BitVec 64) * BitVec.ofNat 64 StackRemove.maxStackAlloc ∧
    adj_ptr4 = mc.target.getReg ms mc.len2Reg -
      (wordSemBytesInWord : BitVec 64) * BitVec.ofNat 64 StackRemove.maxStackAlloc ∧
    adj_ptr2 ≤ mc.target.getReg ms mc.ptr2Reg ∧
    mc.target.getReg ms mc.ptr2Reg ≤ adj_ptr4 ∧
    (mc.target.getReg ms mc.ptr2Reg + -1 * mc.target.getReg ms mc.lenReg).toNat ≤
      (wordSemBytesInWord : BitVec 64).toNat *
        (2 * DataToWord.maxHeapLimit 64
          (oracleCompilerConfig oracles).dataConf - 1) ∧
    s.ffi = ffi ∧ mc.target.config.bigEndian = s.be ∧
    panInstalled bytes cbspace bitmaps data_sp c'.labConf.ffiNames
      (heapRegs (oracleCompilerConfig oracles).stackConf.regNames)
      mc c'.labConf.shmemExtra ms (wlabWlocExact ∘ s.memory) s.memaddrs s.shMemaddrs ∧
    start = ofString "main" ∧
    PanSemStateFiniteExact.semanticsDecls s start pan_code ≠ HolBehaviour.fail →
    ∀ b, machineSemHOL mc ffi ms b →
      extendWithResourceLimitPrimeHOL
        (optionLt stack_max (some (readLimits mc.target.config
          (oracleCompilerConfig oracles) mc ms).1))
        (fun b' => b' = PanSemStateFiniteExact.semanticsDecls s start pan_code) b := by
  intro hmc ⟨hcomp, hgood, hparams, hnodup, hcode, hlocals, hglobals, heids, heshapes, hpos,
    hsize, hlt, hbase, halloc, hheapLen, htop, hglobLe, hmemaddrs, halign, hadj2, hadj4, hlo,
    hhi, hheap, hffi, hbe, hinst, hstart, hfail⟩
  have hconfig : mc.target.config = riscvConfig := by rw [hmc.1]; rfl
  have hcfg := oracleBackendConfigOk oracles
  rw [← hconfig] at hcfg
  have hinit := oracleMachineInitOk oracles mc hmc
  rw [← hconfig] at hinit
  exact panToTargetCompileSemantics _ mc pan_code bytes bitmaps c' stack_max s ms globals_size
    heap_len adj_ptr2 adj_ptr4 ffi cbspace data_sp start
    ⟨hcomp, hgood, hparams, hnodup, hcode, hlocals, hglobals, heids, heshapes, hcfg,
      riscvMachineConfigOk mc hmc, hinit, by rw [hconfig]; decide, hpos, hsize, hlt, hbase,
      halloc, hheapLen, htop, hglobLe, hmemaddrs, halign, hadj2, hadj4, hlo, hhi, hheap,
      oracleHeapLimit_lt oracles, hffi, hbe, trivial, hinst, hstart, hfail⟩


theorem panToTargetCompileSemanticsOraclesRiscVAsmExecutable {σ : Type}
    (oracles : List (Option (Spt Nat)))
    (mc : MachineConfig 64 RiscV.L3.riscv_state RiscVProjection)
    (pan_code : List (DeclHOL 64)) (bytes : List (BitVec 8)) (bitmaps : List (BitVec 64))
    (c' : Backend.Config) (stack_max : Option Nat) (s : PanSemStateFiniteExact 64 σ)
    (ms : RiscV.L3.riscv_state) (globals_size heap_len : Nat) (adj_ptr2 adj_ptr4 : BitVec 64)
    (ffi : HolFfiState σ) (cbspace data_sp : Nat) (start : MlS) :
    isRiscvMachineConfig mc →
    compileProgMaxAsmExecutable (oracleCompilerConfig oracles)
      riscvConfig pan_code = (some (bytes, bitmaps, c'), stack_max) ∧
    pancakeGoodCodeHOL pan_code = true ∧
    distinctParamsHOL (functionsHOL pan_code) ∧
    ((functionsHOL pan_code).map Prod.fst).Nodup ∧
    s.code = HolFiniteMapExact.empty ∧
    s.locals = HolFiniteMapExact.empty ∧
    s.globals = HolFiniteMapExact.empty ∧
    sizeOfEidsHOL pan_code < 2 ^ 64 ∧
    s.eshapes = HolFiniteMapExact.empty ∧
    (0 : BitVec 64) < mc.target.getReg ms mc.lenReg ∧
    globals_size =
      (let dec_shs := decShapesHOL pan_code
       let struct_ctxt := decsStcnamesHOLExact (width := 64) [] pan_code
       (dec_shs.map (sizeOfShapeWithContextHOL (holThe struct_ctxt))).sum) ∧
    mc.target.getReg ms mc.lenReg < mc.target.getReg ms mc.ptr2Reg ∧
    mc.target.getReg ms mc.lenReg = s.baseAddr ∧
    globalsAllocatableHOL s pan_code ∧
    heap_len = (mc.target.getReg ms mc.ptr2Reg + -1 * s.baseAddr).toNat / (64 / 8) ∧
    s.topAddr = s.baseAddr + (wordSemBytesInWord : BitVec 64) * BitVec.ofNat 64 heap_len -
      BitVec.ofNat 64 (globals_size * 64 / 8) ∧
    globals_size ≤ heap_len ∧
    s.memaddrs = StackRemove.addresses (mc.target.getReg ms mc.lenReg) (heap_len - globals_size) ∧
    holAligned (wordShiftAmount 64 + 1)
      (mc.target.getReg ms mc.ptr2Reg + -1 * mc.target.getReg ms mc.lenReg) = true ∧
    adj_ptr2 = mc.target.getReg ms mc.lenReg +
      (wordSemBytesInWord : BitVec 64) * BitVec.ofNat 64 StackRemove.maxStackAlloc ∧
    adj_ptr4 = mc.target.getReg ms mc.len2Reg -
      (wordSemBytesInWord : BitVec 64) * BitVec.ofNat 64 StackRemove.maxStackAlloc ∧
    adj_ptr2 ≤ mc.target.getReg ms mc.ptr2Reg ∧
    mc.target.getReg ms mc.ptr2Reg ≤ adj_ptr4 ∧
    (mc.target.getReg ms mc.ptr2Reg + -1 * mc.target.getReg ms mc.lenReg).toNat ≤
      (wordSemBytesInWord : BitVec 64).toNat *
        (2 * DataToWord.maxHeapLimit 64
          (oracleCompilerConfig oracles).dataConf - 1) ∧
    s.ffi = ffi ∧ mc.target.config.bigEndian = s.be ∧
    panInstalled bytes cbspace bitmaps data_sp c'.labConf.ffiNames
      (heapRegs (oracleCompilerConfig oracles).stackConf.regNames)
      mc c'.labConf.shmemExtra ms (wlabWlocExact ∘ s.memory) s.memaddrs s.shMemaddrs ∧
    start = ofString "main" ∧
    PanSemStateFiniteExact.semanticsDecls s start pan_code ≠ HolBehaviour.fail →
    ∀ b, machineSemHOL mc ffi ms b →
      extendWithResourceLimitPrimeHOL
        (optionLt stack_max (some (readLimits mc.target.config
          (oracleCompilerConfig oracles) mc ms).1))
        (fun b' => b' = PanSemStateFiniteExact.semanticsDecls s start pan_code) b := by
  intro hmc ⟨hcomp, rest⟩
  have hconfig : mc.target.config = riscvConfig := by rw [hmc.1]; rfl
  rw [← hconfig, compileProgMaxAsmExecutable_eq] at hcomp
  exact panToTargetCompileSemanticsOraclesRiscV oracles mc pan_code bytes bitmaps c' stack_max s ms
    globals_size heap_len adj_ptr2 adj_ptr4 ffi cbspace data_sp start hmc ⟨hcomp, rest⟩

open Flapjack.Pancake.PanToTarget (mainFirstHOL semanticsDecls_mainFirstHOL)

theorem panToTargetCompileSemanticsOraclesRiscVSource {σ : Type}
    (oracles : List (Option (Spt Nat)))
    (mc : MachineConfig 64 RiscV.L3.riscv_state RiscVProjection)
    (decls : List (DeclHOL 64)) (bytes : List (BitVec 8)) (bitmaps : List (BitVec 64))
    (c' : Backend.Config) (stack_max : Option Nat) (s : PanSemStateFiniteExact 64 σ)
    (ms : RiscV.L3.riscv_state) (globals_size heap_len : Nat) (adj_ptr2 adj_ptr4 : BitVec 64)
    (ffi : HolFfiState σ) (cbspace data_sp : Nat) (start : MlS) :
    isRiscvMachineConfig mc →
    (∃ fi : FunDeclHOL 64, .function fi ∈ decls ∧ fi.name = ofString "main") →
    compileProgMaxAsmExecutable (oracleCompilerConfig oracles) riscvConfig (mainFirstHOL decls) =
      (some (bytes, bitmaps, c'), stack_max) ∧
    pancakeGoodCodeHOL (mainFirstHOL decls) = true ∧
    distinctParamsHOL (functionsHOL (mainFirstHOL decls)) ∧
    ((functionsHOL (mainFirstHOL decls)).map Prod.fst).Nodup ∧
    s.code = HolFiniteMapExact.empty ∧
    s.locals = HolFiniteMapExact.empty ∧
    s.globals = HolFiniteMapExact.empty ∧
    sizeOfEidsHOL (mainFirstHOL decls) < 2 ^ 64 ∧
    s.eshapes = HolFiniteMapExact.empty ∧
    (0 : BitVec 64) < mc.target.getReg ms mc.lenReg ∧
    globals_size =
      (let dec_shs := decShapesHOL (mainFirstHOL decls)
       let struct_ctxt := decsStcnamesHOLExact (width := 64) [] (mainFirstHOL decls)
       (dec_shs.map (sizeOfShapeWithContextHOL (holThe struct_ctxt))).sum) ∧
    mc.target.getReg ms mc.lenReg < mc.target.getReg ms mc.ptr2Reg ∧
    mc.target.getReg ms mc.lenReg = s.baseAddr ∧
    globalsAllocatableHOL s (mainFirstHOL decls) ∧
    heap_len = (mc.target.getReg ms mc.ptr2Reg + -1 * s.baseAddr).toNat / (64 / 8) ∧
    s.topAddr = s.baseAddr + (wordSemBytesInWord : BitVec 64) * BitVec.ofNat 64 heap_len -
      BitVec.ofNat 64 (globals_size * 64 / 8) ∧
    globals_size ≤ heap_len ∧
    s.memaddrs = StackRemove.addresses (mc.target.getReg ms mc.lenReg) (heap_len - globals_size) ∧
    holAligned (wordShiftAmount 64 + 1)
      (mc.target.getReg ms mc.ptr2Reg + -1 * mc.target.getReg ms mc.lenReg) = true ∧
    adj_ptr2 = mc.target.getReg ms mc.lenReg +
      (wordSemBytesInWord : BitVec 64) * BitVec.ofNat 64 StackRemove.maxStackAlloc ∧
    adj_ptr4 = mc.target.getReg ms mc.len2Reg -
      (wordSemBytesInWord : BitVec 64) * BitVec.ofNat 64 StackRemove.maxStackAlloc ∧
    adj_ptr2 ≤ mc.target.getReg ms mc.ptr2Reg ∧
    mc.target.getReg ms mc.ptr2Reg ≤ adj_ptr4 ∧
    (mc.target.getReg ms mc.ptr2Reg + -1 * mc.target.getReg ms mc.lenReg).toNat ≤
      (wordSemBytesInWord : BitVec 64).toNat *
        (2 * DataToWord.maxHeapLimit 64 (oracleCompilerConfig oracles).dataConf - 1) ∧
    s.ffi = ffi ∧ mc.target.config.bigEndian = s.be ∧
    panInstalled bytes cbspace bitmaps data_sp c'.labConf.ffiNames
      (heapRegs (oracleCompilerConfig oracles).stackConf.regNames)
      mc c'.labConf.shmemExtra ms (wlabWlocExact ∘ s.memory) s.memaddrs s.shMemaddrs ∧
    start = ofString "main" ∧
    PanSemStateFiniteExact.semanticsDecls s start decls ≠ HolBehaviour.fail →
    ∀ b, machineSemHOL mc ffi ms b →
      extendWithResourceLimitPrimeHOL
        (optionLt stack_max (some (readLimits mc.target.config (oracleCompilerConfig oracles) mc ms).1))
        (fun b' => b' = PanSemStateFiniteExact.semanticsDecls s start decls) b := by
  intro hmc hasMain ⟨hcomp, hgood, hparams, hnodup, hcode, hlocals, hglobals, heids, heshapes,
    hpos, hsize, hlt, hbase, halloc, hheapLen, htop, hglobLe, hmemaddrs, halign, hadj2, hadj4,
    hlo, hhi, hheap, hffi, hbe, hinst, hstart, hfail⟩
  have hsem := semanticsDecls_mainFirstHOL s start decls hasMain
  rw [← hsem] at hfail ⊢
  exact panToTargetCompileSemanticsOraclesRiscVAsmExecutable oracles mc (mainFirstHOL decls) bytes bitmaps c'
    stack_max s ms globals_size heap_len adj_ptr2 adj_ptr4 ffi cbspace data_sp start hmc
    ⟨hcomp, hgood, hparams, hnodup, hcode, hlocals, hglobals, heids, heshapes, hpos, hsize, hlt,
      hbase, halloc, hheapLen, htop, hglobLe, hmemaddrs, halign, hadj2, hadj4, hlo, hhi, hheap,
      hffi, hbe, hinst, hstart, hfail⟩


#print axioms panToTargetCompileSemanticsOraclesRiscVSource
end InitE
