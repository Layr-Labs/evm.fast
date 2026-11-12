import InitECandidate.Solver.Assembly.PanToWord
import InitECandidate.Solver.Assembly.LabTarget
import InitECandidate.Solver.Compiler.WordToStack
import InitECandidate.Solver.Compiler.StackPasses

/-!
# The whole compiler chain at the clock level

`panToTarget_halts_bounded`: under the premises of Flapjack's `pan_to_target_compile_semantics`
(`PanToTargetCompileSemanticsStatement`, `AssemblyTop.lean`) for a RISC-V machine, the precise
stack-limit flag (`optionLt stack_max (read_limits …) = true`, which the baseline discharges with
its certified stack depth) and the program side conditions `ProgramBounds` with size bounds
`Sc`, `Sw`, `Ss`, every **minimal** terminating source entry run (final clock `0`) from clock
`k` is matched by a halting RISC-V run of at most `nativeStepBound k Sc Sw Ss` evaluator steps,
with the same outcome and final FFI state.

The proof mirrors `panToTargetCompileSemanticsStatement_proof` and `panToTargetLabSemantics`
(`AssemblyLabChain.lean`): every premise discharge is Flapjack's (unchanged), only the
behaviour-equality composition is replaced by the clock-level composition of the bounded
passes:

| stage | lemma | start clock |
|---|---|---|
| Pan → compiled Word | `panToWordStageLab_clock` | `kw ≤ (Sc + 2) * (k + 1) + 3` |
| Word → Stack | `entrySimulationB_makeInit` | `kw + ck`, `ck ≤ (Sw + 1) * kw + 1` |
| stack sub-passes | `stackChain_entry_bounded` | `+ e + 1`, `e ≤ (kw + ck) + 1` |
| Stack → Lab (`flatten`) | `stackCall_labHalt_bounded` | `K3 - 1 + ck2`, `ck2 ≤ (2Ss+2)(K3 - 1) + 4Ss` |
| Lab → RISC-V | `machineLab_halt_bounded` | `≤ 7 * Klab + 7` steps |

The resource-limit branch of word → stack (`Halt 2`, stack overflow) is excluded by
`wordLangSafeForSpace`, from Flapjack's `panToTargetResourceLimitOfSemantics` with the precise
flag. Every final clock above is bounded by `0` from below only (start clocks bound
consumption), so the `FinalFFI` clock gap of `loop_to_word` is harmless.
-/

namespace InitECandidate.Solver.Assembly

open Flapjack Flapjack.Pancake.PanLang Flapjack.Basis.Pure.MlString Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.BackendProof
open Flapjack.Pancake.Proofs.PanToTarget
open Flapjack.RiscV.L3 Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.Compiler.FrontEnd (panDeclsInit panRun wordRun)
open InitECandidate.Solver.Compiler.CrepToLoop (csize)
open InitECandidate.Solver.Compiler.WordToStack (wsize)
open InitECandidate.Solver.Compiler.StackPasses (noA okP)
open InitECandidate.Solver.Compiler.Flatten (psize)
open InitECandidate.Solver.Compiler.LabToTarget (LinesBounded)

set_option autoImplicit false

/-- **The explicit native step bound** `F(k, Sc, Sw, Ss)` for a minimal source run of `k`
clock ticks and code-size bounds `Sc` (crep, `csize`), `Sw` (word, `wsize`), `Ss` (stack,
`psize` of the `stack_remove` output):

`F = 7 * ((2 * Ss + 3) * (2 * ((Sw + 2) * ((Sc + 2) * (k + 1) + 3) + 1) + 1) + 4 * Ss) + 7`. -/
def nativeStepBound (k Sc Sw Ss : Nat) : Nat :=
  7 * ((2 * Ss + 3) * (2 * ((Sw + 2) * ((Sc + 2) * (k + 1) + 3) + 1) + 1) + 4 * Ss) + 7

theorem nativeStepBound_mono {k k' Sc Sw Ss : Nat} (h : k ≤ k') :
    nativeStepBound k Sc Sw Ss ≤ nativeStepBound k' Sc Sw Ss := by
  unfold nativeStepBound
  have h1 : (Sc + 2) * (k + 1) ≤ (Sc + 2) * (k' + 1) := Nat.mul_le_mul_left _ (by omega)
  have h2 : (Sw + 2) * ((Sc + 2) * (k + 1) + 3) ≤ (Sw + 2) * ((Sc + 2) * (k' + 1) + 3) :=
    Nat.mul_le_mul_left _ (by omega)
  have h3 : (2 * Ss + 3) * (2 * ((Sw + 2) * ((Sc + 2) * (k + 1) + 3) + 1) + 1) ≤
      (2 * Ss + 3) * (2 * ((Sw + 2) * ((Sc + 2) * (k' + 1) + 3) + 1) + 1) :=
    Nat.mul_le_mul_left _ (by omega)
  omega

/-- The stack-level parameters of the baseline chain (`full_make_init`'s `maxHeap`, `sp`). -/
abbrev chainMaxHeap (c : Backend.Config) : Nat := 2 * DataToWord.maxHeapLimit 64 c.dataConf - 1
abbrev chainSp (ac : AsmConfigExact 64) : Nat := ac.regCount - (ac.avoidRegs.length + 3)

/-- **The program side conditions** of the clock-level chain, on the compiler outputs of
`compile_prog_max` (stated for every output of the deterministic passes, i.e. for the actual
compiled programs):

* `crep`: every Crep function body has `csize ≤ Sc` (`3 ≤ Sc`);
* `word`: every `word_to_word` output procedure has `wsize ≤ Sw` (`1 ≤ Sw`);
* `noA`, `okP`: every `word_to_stack` output procedure satisfies `noA`, and `okP
  [storeConstsStubLocation]` except the constant-store stub;
* `stack`: every procedure of the `stack_remove` output (`FullMakeInitSemantics.code2`) has
  `psize ≤ Ss`;
* `lines`: the target code of `LabToTarget.compile`'s `removeLabels` call has lines of at most
  24 bytes (`LinesBounded 24`; for the baseline see `LineBound.linesBounded_of_removeLabels`). -/
structure ProgramBounds (c : Backend.Config) (ac : AsmConfigExact 64)
    (panCode : List (DeclHOL 64)) (Sc Sw Ss : Nat) : Prop where
  sc_ge : 3 ≤ Sc
  sw_ge : 1 ≤ Sw
  crep : ∀ e ∈ crepCodeOf panCode, csize e.2.2 ≤ Sc
  word : ∀ col wprog, WordToWord.compile c.wordToWordConf ac
      (panToWordCompileProgHOL ac.isa panCode) = (col, wprog) →
    ∀ e ∈ wprog, wsize e.2.2 ≤ Sw
  stack : ∀ col wprog bitmaps wconf fs p,
    WordToWord.compile c.wordToWordConf ac (panToWordCompileProgHOL ac.isa panCode) =
      (col, wprog) →
    WordToStack.Native.compileNative ac false wprog = (bitmaps, wconf, fs, p) →
    (∀ np ∈ p, noA np.2 = true) ∧
    (∀ np ∈ p, np.1 ≠ storeConstsStubLocation → okP [storeConstsStubLocation] np.2 = true) ∧
    (∀ np ∈ StackToLab.Proofs.FullMakeInitSemantics.code2 c.stackConf c.dataConf
        (chainMaxHeap c) (chainSp ac) ac.addrOffset p, psize np.2 ≤ Ss) ∧
    (∀ code2 labs, LabToTarget.removeLabels c.labConf.initClock ac 0 .ln
        (labFfis c.labConf (StackToLab.compile c.stackConf c.dataConf (chainMaxHeap c)
          (chainSp ac) ac.addrOffset p))
        (LabFilter.filterSkip (StackToLab.compile c.stackConf c.dataConf (chainMaxHeap c)
          (chainSp ac) ac.addrOffset p)) = some (code2, labs) →
      LinesBounded 24 code2)

section
variable {width : Nat} [NeZero width]

/-- A Word outcome is a complete stack entry result after `word_to_stack`'s `compileResult`. -/
theorem WordOutcome.stackClass {r : Option (WordSemResult 64)} {o : HolOutcome}
    (h : WordOutcome r o) :
    StackToLab.Proofs.FlattenSemantics.stackEntryClass (r.map WordToStackProofs.CompCorrect.compileResult) =
      .CompleteResult o := by
  rcases r with _ | (_ | _ | _ | _ | _ | _ | _ | _) <;> simp only [WordOutcome] at h
  all_goals first
    | (subst h; rfl)
    | (obtain ⟨rfl, rfl⟩ := h; rfl)

end

open StackToLab.Proofs.FullMakeInitSemantics in
/-- **The compiler chain at the clock level.** -/
theorem panToTarget_halts_bounded {σ : Type}
    (c : Backend.Config) (mc : MachineConfig 64 riscv_state RiscVProjection)
    (htarget : mc.target = riscvTarget)
    (pan_code : List (DeclHOL 64)) (bytes : List (BitVec 8)) (bitmaps : List (BitVec 64))
    (c' : Backend.Config) (stack_max : Option Nat) (s : PanSemStateFiniteExact 64 σ)
    (ffi : HolFfiState σ) (ms : riscv_state) (globals_size heap_len : Nat)
    (adj_ptr2 adj_ptr4 : BitVec 64) (cbspace data_sp : Nat) (start : MlS)
    (Sc Sw Ss : Nat) (hB : ProgramBounds c mc.target.config pan_code Sc Sw Ss)
    (hprecise : optionLt stack_max (some (readLimits mc.target.config c mc ms).1) = true)
    (hpre : let getReg := mc.target.getReg ms
      compileProgMax c mc pan_code = (some (bytes, bitmaps, c'), stack_max) ∧
      pancakeGoodCodeHOL pan_code = true ∧
      distinctParamsHOL (functionsHOL pan_code) ∧
      ((functionsHOL pan_code).map Prod.fst).Nodup ∧
      s.code = HolFiniteMapExact.empty ∧
      s.locals = HolFiniteMapExact.empty ∧
      s.globals = HolFiniteMapExact.empty ∧
      sizeOfEidsHOL pan_code < 2 ^ 64 ∧
      s.eshapes = HolFiniteMapExact.empty ∧
      backendConfigOk mc.target.config c ∧ LabToTarget.mcConfOk mc ∧
      mcInitOk mc.target.config c mc ∧ mc.target.config.isa ≠ .ag32 ∧
      (0 : BitVec 64) < getReg mc.lenReg ∧
      globals_size =
        (let dec_shs := decShapesHOL pan_code
         let struct_ctxt := decsStcnamesHOLExact (width := 64) [] pan_code
         (dec_shs.map (sizeOfShapeWithContextHOL (holThe struct_ctxt))).sum) ∧
      getReg mc.lenReg < getReg mc.ptr2Reg ∧
      getReg mc.lenReg = s.baseAddr ∧
      globalsAllocatableHOL s pan_code ∧
      heap_len = (getReg mc.ptr2Reg + -1 * s.baseAddr).toNat / (64 / 8) ∧
      s.topAddr = s.baseAddr + StackRemove.bytesInWord 64 * BitVec.ofNat 64 heap_len -
        BitVec.ofNat 64 (globals_size * 64 / 8) ∧
      globals_size ≤ heap_len ∧
      s.memaddrs = StackRemove.addresses (getReg mc.lenReg) (heap_len - globals_size) ∧
      holAligned (wordShiftAmount 64 + 1) (getReg mc.ptr2Reg + -1 * getReg mc.lenReg) = true ∧
      adj_ptr2 = getReg mc.lenReg +
        StackRemove.bytesInWord 64 * BitVec.ofNat 64 StackRemove.maxStackAlloc ∧
      adj_ptr4 = getReg mc.len2Reg -
        StackRemove.bytesInWord 64 * BitVec.ofNat 64 StackRemove.maxStackAlloc ∧
      adj_ptr2 ≤ getReg mc.ptr2Reg ∧
      getReg mc.ptr2Reg ≤ adj_ptr4 ∧
      (getReg mc.ptr2Reg + -1 * getReg mc.lenReg).toNat ≤
        (StackRemove.bytesInWord 64).toNat * (2 * DataToWord.maxHeapLimit 64 c.dataConf - 1) ∧
      (StackRemove.bytesInWord 64).toNat * (2 * DataToWord.maxHeapLimit 64 c.dataConf - 1) <
        2 ^ 64 ∧
      s.ffi = ffi ∧ mc.target.config.bigEndian = s.be ∧
      (match c.labConf.ffiNames with
        | none => True
        | some l => ∀ x ∈ l, ∃ s, x = HolFfiName.extCall s) ∧
      panInstalled bytes cbspace bitmaps data_sp c'.labConf.ffiNames
        (heapRegs c.stackConf.regNames) mc c'.labConf.shmemExtra ms
        (wlabWlocExact ∘ s.memory) s.memaddrs s.shMemaddrs ∧
      start = ofString "main" ∧
      PanSemStateFiniteExact.semanticsDecls s start pan_code ≠ HolBehaviour.fail) :
    ∃ s0, panDeclsInit s pan_code = some s0 ∧
      ∀ k r s1 o, panRun s0 start k = (r, s1) → SrcOutcome r o → s1.clock = 0 →
        ∃ (N : Nat) (ms' : riscv_state), N ≤ nativeStepBound k Sc Sw Ss ∧
          evaluateTargetHOL mc ffi N ms = (.halt o, ms', s1.ffi) := by
  classical
  obtain ⟨hcomp, hgood, hparams, hnodup, hcode, hlocals, hglobals, heids, heshapes, hcfg, hmc,
    hinit, hisa, -, hsize, hlt, hbase, halloc, hheapLen, htop, hglobLe, hmemaddrs, halign,
    rfl, rfl, hlo, hhi, hheap, hheapLt, hffi, hbe, hffiOk, hinst, hstart, hfail⟩ := hpre
  obtain ⟨col, wprog, wconf, fs, p, ltconf, hwtw, hwts, hlab, rfl, hmax⟩ :=
    compileProgMax_some c mc pan_code bytes bitmaps _ stack_max hcomp
  obtain ⟨t, m, bitmapPtr, bitmapsDm, sdm, hpm, hgi, hsdm, a1, a2, a3, hle, hbig, hdisj, m0, m1,
    m2, m3, m4, hstar, hffiN, hmmio⟩ := hinst
  -- `pan_to_word_every_inst_ok_less` (stage .20), from `pancake_good_code`
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, hao, -, hbo, -⟩ := id hcfg
  have hz := good_dimindex_0w_8w hmc.1
  have hevery := PanToWord.panToWordEveryInstOkLess mc.target.config pan_code _ rfl
    (hbo 0 ⟨hz.2, hz.1⟩) hao hgood
  obtain ⟨hnoA, hokS, hpsize, hlines⟩ := hB.stack col wprog bitmaps wconf fs p hwtw hwts
  -- stage A4, clock level
  have hLT := machineLab_halt_bounded c mc htarget ffi t m bitmapsDm sdm ms bytes cbspace
    pan_code col wprog bitmaps wconf fs p ltconf hcfg hmc hisa hwtw hwts hlab hnodup hffiOk hgi
    hffiN hmmio hevery hlines
  -- the lab-state chain (`panToTargetLabSemantics`)
  have good : goodDimindex 64 := hmc.1
  have hpm' : ∀ a, decide (s.memaddrs a) = true → m a = wlabWlocExact (s.memory a) :=
    fun a h => hpm a (of_decide_eq_true h)
  have hsdm' : (fun a => decide (s.shMemaddrs a)) = fun a => sdm a && holByteAligned a := by
    funext a; rw [hsdm]; simp only [Bool.decide_and, Bool.decide_eq_true]
  let regNames := c.stackConf.regNames
  let r1 := StackNames.findNameSpt regNames 2
  let r2 := StackNames.findNameSpt regNames 4
  let heapStackDm : BitVec 64 → Bool := fun w => decide (t.regs r1 ≤ w ∧ w < t.regs r2)
  let sp := mc.target.config.regCount - (mc.target.config.avoidRegs.length + 3)
  let maxHeap := 2 * DataToWord.maxHeapLimit 64 c.dataConf - 1
  let labst := LabToTarget.makeInit (C := LabToTarget.Config) mc ffi t m
    (fun a => (heapStackDm a || bitmapsDm a) && holByteAligned a)
    (fun a => sdm a && holByteAligned a) ms
    (StackToLab.compile c.stackConf c.dataConf maxHeap sp mc.target.config.addrOffset p)
    (LabToTarget.compile mc.target.config)
    (mc.target.getPc ms + BitVec.ofNat 64 bytes.length) cbspace
    (fun _ => (ltconf, StackToLab.compileNoStubs regNames c.stackConf.jump
      mc.target.config.addrOffset sp []))
  have hA := panToTargetFullMakeInitAssumptions (C := LabToTarget.Config) c mc ffi t m bitmapPtr
    bitmapsDm sdm ms (LabToTarget.compile mc.target.config) bytes cbspace ltconf pan_code col
    wprog bitmaps wconf fs p data_sp hcfg hmc hinit hisa hwtw hwts hnodup
    ⟨a1, a2, a3, hle, hbig, hdisj, m0, m1, m2, m3, m4, hstar⟩
  rcases hfm : StackToLab.Proofs.FullMakeInit.fullMakeInit c.stackConf c.dataConf
    maxHeap sp mc.target.config.addrOffset bitmaps p labst
    (fun k => decide (k ∈ mc.calleeSavedRegs)) data_sp (fun _ => (ltconf, [], [])) with
    ⟨sst, opt⟩
  obtain ⟨hopt, -⟩ := fullMakeInitSemantics (s := sst) (opt := opt) ⟨hfm, hA⟩
  obtain ⟨x, rfl⟩ := Option.ne_none_iff_exists'.mp hopt
  let k := mc.target.config.regCount - (5 + mc.target.config.avoidRegs.length)
  let worac : Nat → (Nat × LabToTarget.Config) ×
      List (Nat × Nat × WordLangProgHOL (BitVec 64)) :=
    fun _ => ((bitmaps.length, ltconf), [])
  let wst := WordToStack.Native.Initialization.makeInit mc.target.config k sst
    (sptFromAList wprog) worac
  -- the semantics facts of the baseline chain (non-`Fail`, safe for space)
  obtain ⟨-, hsemEq, -, -⟩ := panToTargetLabSemantics (C := LabToTarget.Config) c mc ffi t m
    bitmapPtr bitmapsDm sdm ms (LabToTarget.compile mc.target.config) bytes cbspace ltconf
    pan_code col wprog bitmaps wconf fs p data_sp s start globals_size heap_len hcfg hmc hinit
    hisa hwtw hwts hnodup hpm' hgi hsdm' ⟨a1, a2, a3, hle, hbig, hdisj, m0, m1, m2, m3, m4, hstar⟩
    hbase hlt hlo hhi hheap hheapLt halign hbe hffi hheapLen hglobLe hmemaddrs htop hstart hsize
    hparams halloc hcode hglobals hlocals heids heshapes hfail
  have hsemEq' : WordSemStateFiniteExact.semantics
      (WordToStack.Native.Initialization.makeInit mc.target.config k
        (StackToLab.Proofs.FullMakeInit.fullMakeInit c.stackConf c.dataConf maxHeap sp
          mc.target.config.addrOffset bitmaps p labst (fun k => decide (k ∈ mc.calleeSavedRegs))
          data_sp (fun _ => (ltconf, [], []))).1 (sptFromAList wprog) worac)
      BvlToBvi.initGlobalsLocation = PanSemStateFiniteExact.semanticsDecls s start pan_code :=
    hsemEq
  rw [hfm] at hsemEq'
  have hsemNF : WordSemStateFiniteExact.semantics wst BvlToBvi.initGlobalsLocation ≠ .fail := by
    rw [show WordSemStateFiniteExact.semantics wst BvlToBvi.initGlobalsLocation =
      PanSemStateFiniteExact.semanticsDecls s start pan_code from hsemEq']
    exact hfail
  have hsafe : WordSemStateFiniteExact.wordLangSafeForSpace wst BvlToBvi.initGlobalsLocation :=
    panToTargetResourceLimitOfSemantics c mc ms pan_code col wprog bitmaps wconf fs p
      (WordDepth.maxDepth wconf.stackFrameSize
        (WordDepth.fullCallGraph BvlToBvi.initGlobalsLocation (sptFromAList wprog))) worac
      hwtw hnodup hwts rfl hA hfm
      (panToTargetLabRegWord mc ffi t _ _ _ ms _ _ _ cbspace _ hgi.1 _ hmc.2.2.2.1)
      (panToTargetLabRegWord mc ffi t _ _ _ ms _ _ _ cbspace _ hgi.1 _ hmc.2.2.2.2.1)
      (panToTargetLabRegWord mc ffi t _ _ _ ms _ _ _ cbspace _ hgi.1 _ hmc.2.2.2.2.2.1)
      hlo hhi hheap hheapLt halign hsemNF (hmax ▸ hprecise)
  -- word → stack (`word_to_stack` premises of `panToTargetWordChain`)
  obtain ⟨hbmS, hcodeS⟩ := fullMakeInit_bitmaps_code c.stackConf c.dataConf maxHeap sp
    mc.target.config.addrOffset bitmaps p labst _ data_sp _ sst x hfm
  have hinitS := panToTargetInitStateOk mc.target.config wprog bitmaps wconf fs p ltconf
    c.stackConf c.dataConf maxHeap sp mc.target.config.addrOffset labst
    (fun k => decide (k ∈ mc.calleeSavedRegs)) data_sp sst x good hcfg.2.2.2.1 hwts hfm
  rw [Nat.add_comm mc.target.config.avoidRegs.length 5] at hinitS
  obtain ⟨hraise, hstore⟩ := panToTargetStubLocationsFree c.wordToWordConf mc.target.config
    pan_code col wprog hisa hwtw
  have hconv := (BackendProof.compileToWordConventions2 c.wordToWordConf mc.target.config _ col
    wprog hwtw (fun _ _ => Or.inr hisa)).2.2
  have hES := InitECandidate.Solver.Compiler.WordToStack.entrySimulationB_makeInit
    mc.target.config wprog sst k worac BvlToBvi.initGlobalsLocation Sw hB.sw_ge
    ⟨by rw [hwts, hcodeS], rfl, hinitS, hraise, hstore, by rw [hwts, hbmS],
      fun entry he => ⟨(hconv entry he).1, (hconv entry he).2.1⟩⟩
    (hB.word col wprog hwtw) (by intro i e he; simp [worac] at he)
  -- pan → word (clock level)
  obtain ⟨s0, hs0, hpw⟩ := panToWordStageLab_clock (C := LabToTarget.Config) mc ffi t m
    (fun w => heapStackDm w || bitmapsDm w)
    (fun w => decide (t.regs r1 ≤ w ∧ w < t.regs r2) || bitmapsDm w) sdm ms
    (StackToLab.compile c.stackConf c.dataConf maxHeap sp mc.target.config.addrOffset p)
    (LabToTarget.compile mc.target.config)
    (mc.target.getPc ms + BitVec.ofNat 64 bytes.length) cbspace
    (fun _ => (ltconf, StackToLab.compileNoStubs regNames c.stackConf.jump
      mc.target.config.addrOffset sp []))
    bytes mc.target.config k (sptFromAList wprog) worac s mc.target.config.isa pan_code start
    globals_size heap_len Sc hB.sc_ge hB.crep c.wordToWordConf col wprog hwtw rfl hA hfm hmc
    hpm' hgi hsdm' hbase hlt hlo hhi hheap hheapLt halign hbe hffi hheapLen hglobLe hmemaddrs
    htop hstart hsize hparams hnodup halloc hcode hglobals hlocals heids heshapes hfail
  refine ⟨s0, hs0, ?_⟩
  intro kk r s1 o hrun hout hmin
  obtain ⟨kw, rw', tw, hkw, hwrun, hwout, hwffi⟩ := hpw kk r s1 o hrun hout hmin
  obtain ⟨ck, res1, tst, hck, hsrun, hbranch⟩ := hES kw rw' tw hwrun (WordOutcome.ne_error hwout)
  rcases hbranch with ⟨hres1, hffi1, hclk1⟩ | ⟨-, -, -, hbad⟩
  swap
  · exfalso
    obtain ⟨mx, hmx, hmxle⟩ := hsafe kw rw' tw hwrun
    rw [hmx] at hbad
    simp only [Option.getD_some] at hbad
    omega
  have hcls : StackToLab.Proofs.FlattenSemantics.stackEntryClass res1 = .CompleteResult o := by
    rw [← hres1]; exact WordOutcome.stackClass hwout
  have hne : res1 ≠ some .error := by
    rintro rfl; simp [StackToLab.Proofs.FlattenSemantics.stackEntryClass] at hcls
  -- the stack sub-passes
  obtain ⟨e, post3, he, hrun3, hffi3, hclk3⟩ :=
    InitECandidate.Solver.Compiler.StackPasses.stackChain_entry_bounded
      [storeConstsStubLocation] hfm hA hnoA (fun np hm hx => hokS np hm (by simpa using hx))
      (by intro i np hnp; simp at hnp)
      InitECandidate.Solver.Compiler.StackPasses.initGlobals_not_storeConstsStub
      (kw + ck) res1 tst hsrun hne
  -- stack → lab (`flatten`)
  have horacle : ∀ n, ∀ np ∈ (coracle3 c.stackConf sp mc.target.config.addrOffset
      (fun _ => (ltconf, ([] : List (Nat × StackLang.HolProg 64)), ([] : List (BitVec 64)))) n).2.1,
      psize np.2 ≤ Ss := by
    intro n np hnp
    simp [coracle3, coracle2, coracle1, StackNames.compileHOL] at hnp
  obtain ⟨ck2, t3, hck2, hlabrun, hffiL, -⟩ :=
    InitECandidate.Solver.Compiler.Flatten.stackCall_labHalt_bounded
      StackToLab.Proofs.MakeInit.haltAssumLemma (stateRel_s3 hA) (locToPc_start hA)
      ⟨InitECandidate.Solver.Compiler.Flatten.codeBounded_of_compileHOL hpsize, horacle⟩
      (kw + ck + e + 1) res1 post3 hrun3 o hcls
  -- lab → target
  obtain ⟨N, ms', hN, htgt⟩ := hLT (kw + ck + e + 1 - 1 + ck2) o t3 hlabrun
  refine ⟨N, ms', ?_, ?_⟩
  · -- the arithmetic of the bound
    have hx : InitECandidate.Solver.Compiler.StackPasses.Remove.extraR res1 ≤ 1 := by
      rcases res1 with _ | ⟨v | v | n | n | w | _ | e | _⟩ <;>
        simp [InitECandidate.Solver.Compiler.StackPasses.Remove.extraR]
    have hck' : ck ≤ (Sw + 1) * kw + 1 := by
      have : (Sw + 1) * (kw - tw.clock) ≤ (Sw + 1) * kw := Nat.mul_le_mul_left _ (Nat.sub_le _ _)
      omega
    have hKS : kw + ck ≤ (Sw + 2) * ((Sc + 2) * (kk + 1) + 3) + 1 := by
      have h1 : (Sw + 2) * kw ≤ (Sw + 2) * ((Sc + 2) * (kk + 1) + 3) := Nat.mul_le_mul_left _ hkw
      have h2 : (Sw + 2) * kw = (Sw + 1) * kw + kw := by
        rw [show Sw + 2 = (Sw + 1) + 1 from rfl, Nat.add_mul, Nat.one_mul]
      omega
    have he' : e ≤ kw + ck + 1 := by omega
    have hck2' : ck2 ≤ (2 * Ss + 2) * (kw + ck + e) + 4 * Ss := by
      have : (2 * Ss + 2) * (kw + ck + e + 1 - 1 - post3.clock) ≤ (2 * Ss + 2) * (kw + ck + e) :=
        Nat.mul_le_mul_left _ (by omega)
      omega
    have hKlab : kw + ck + e + 1 - 1 + ck2 ≤
        (2 * Ss + 3) * (2 * ((Sw + 2) * ((Sc + 2) * (kk + 1) + 3) + 1) + 1) + 4 * Ss := by
      have h1 : kw + ck + e ≤ 2 * ((Sw + 2) * ((Sc + 2) * (kk + 1) + 3) + 1) + 1 := by omega
      have h2 : (2 * Ss + 3) * (kw + ck + e) ≤
          (2 * Ss + 3) * (2 * ((Sw + 2) * ((Sc + 2) * (kk + 1) + 3) + 1) + 1) :=
        Nat.mul_le_mul_left _ h1
      have h3 : (2 * Ss + 3) * (kw + ck + e) = (2 * Ss + 2) * (kw + ck + e) + (kw + ck + e) := by
        rw [show 2 * Ss + 3 = (2 * Ss + 2) + 1 from rfl, Nat.add_mul, Nat.one_mul]
      omega
    unfold nativeStepBound
    omega
  · rw [htgt, hffiL, hffi3, ← hffi1, hwffi]

end InitECandidate.Solver.Assembly

#print axioms InitECandidate.Solver.Assembly.panToTarget_halts_bounded
