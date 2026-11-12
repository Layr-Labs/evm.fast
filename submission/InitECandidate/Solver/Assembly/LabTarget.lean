import InitECandidate.Solver.Compiler.LabToTarget
import Flapjack.Compiler.Backend.LabToTarget.SemanticsCompileFinal
import Flapjack.Pancake.Proofs.PanToTarget.AssemblyTop

/-!
# Lab → RISC-V at the clock level, on the baseline chain's initial lab state

Clock-level counterpart of Flapjack's `semanticsCompile` / `semanticsCompileLemmaPrime`
(`Compiler/Backend/LabToTarget/SemanticsCompile{,Final}.lean`), which the baseline chain applies
to its initial lab state `labst = makeInit … (dm ∩ byte_aligned) (sdm ∩ byte_aligned) … code …`
(stage A4 of `pan_to_target_compile_semantics`, `AssemblyMachineToLab.lean`). Flapjack composes
three semantics equalities there; each has a clock-level form:

* domain alignment: `evaluateAlignDM`, `evaluateAlignSDM` (same result, same FFI state);
* `filter_skip`: `filter_halt` (from `filterCorrect` and `evaluateAddClock`: an unfiltered
  halting run at clock `K` is matched by the filtered run at the same clock);
* the initial state relation `makeInit_stateRel` (`makeInit_labHalt_target_bounded`), with the
  bounded RISC-V lab → target simulation and target lines of at most 24 bytes.

`semanticsCompile_halt_bounded`: under the premises of `semanticsCompile`, `noInstall code` and
`LinesBounded 24` of the `removeLabels` output, a halting lab run of `labst` from clock `K` gives
a halting target run within `7 * K + 7` steps, same outcome and final FFI state.
`machineLab_halt_bounded` is the same at the premises of the baseline chain's stage A4
(`panToTargetMachineLab`).
-/

namespace InitECandidate.Solver.Assembly

open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Backend.LabSem
open Flapjack.Compiler.Backend.LabLang Flapjack.Compiler.Backend.LabProps
open Flapjack.Compiler.Backend.LabProps.LabelSets Flapjack.Compiler.Backend.LabToTarget
open Flapjack.Compiler.Encoders.Asm Flapjack.Misc Flapjack.Compiler.Backend.LabFilter
open Flapjack.Compiler.Backend.LabToTarget.FilterSkip
open Flapjack.RiscV.L3 Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.Compiler.LabToTarget (LinesBounded riscv_bytes_per_step
  makeInit_labHalt_target_bounded)

set_option autoImplicit false

section
variable {width : Nat} [NeZero width]

/-- `filter_skip` at the clock level: an unfiltered halting run is matched by the filtered run
at the same clock, with the same result and FFI state (the private
`agreeAtClockOfTargetNotTimeout` of `LabFilter/Proofs/Semantics.lean`). -/
theorem filter_halt {C F : Type} (s t : LabSem.State width C F)
    (hr : LabFilter.Proofs.stateRel s t) (K : Nat) {o : HolOutcome} {t' : LabSem.State width C F}
    (ht : evaluate { t with clock := K } = (.halt o, t')) :
    ∃ s', evaluate { s with clock := K } = (.halt o, s') ∧ s'.ffi = t'.ffi := by
  have hrc : LabFilter.Proofs.stateRel { s with clock := K } { t with clock := K } := by
    rcases hr with ⟨⟨compile, hs, hcomp⟩, hf⟩
    subst s
    exact ⟨⟨compile, rfl, hcomp⟩, hf⟩
  rcases hse : evaluate { s with clock := K } with ⟨rs, s'⟩
  obtain ⟨extra, next, he, hf⟩ := LabFilter.Proofs.filterCorrect { s with clock := K }
    { t with clock := K } rs s' ⟨hse, hrc, hrc.2⟩
  have hadd := evaluateAddClock { t with clock := K } (.halt o) t' extra ⟨ht, by simp⟩
  have he' : evaluate { t with clock := K + extra } = (rs, next) := by simpa using he
  have hadd' : evaluate { t with clock := K + extra } =
      (.halt o, { t' with clock := t'.clock + extra }) := by simpa using hadd
  rw [hadd'] at he'
  simp only [Prod.mk.injEq] at he'
  obtain ⟨rfl, rfl⟩ := he'
  exact ⟨s', rfl, hf⟩

/-- Copy of the private `goodCodeFiltered` of `LabToTarget/SemanticsCompile.lean`. -/
theorem goodCodeFiltered' {G : Type}
    (config : AsmConfigExact width) (labels : Spt (Spt G)) (code : LabProgHOL width) :
    goodCode config labels code → goodCode config labels (filterSkip code) := by
  rintro ⟨hend, hsec, hdistinct, hlabels, hdisjoint, htargets, hpre⟩
  refine ⟨Flapjack.Compiler.Backend.LabFilter.Proofs.secEndsWithLabelFilterSkip code hend,
    ?_, ?_, ?_, ?_, ?_, allEncOkPreFilterSkip code config hpre⟩
  · intro sectionData hmem line hline
    rw [filterSkipMap] at hmem
    obtain ⟨original, horiginal, rfl⟩ := List.mem_map.mp hmem
    exact hsec original horiginal line (List.mem_filter.mp hline).1
  · simpa only [mapSectionNumFilterSkip] using hdistinct
  · intro sectionData hmem
    have hlabelsMem : LabelSets.extractLabels sectionData.lines ∈
        (filterSkip code).map (fun sectionData => LabelSets.extractLabels sectionData.lines) :=
      List.mem_map.mpr ⟨sectionData,hmem,rfl⟩
    rw [filterSkipExtractLabels] at hlabelsMem
    obtain ⟨original,horiginal,heq⟩ := List.mem_map.mp hlabelsMem
    rw [← heq]
    exact hlabels original horiginal
  · simpa only [mapSectionNumFilterSkip] using hdisjoint
  · simpa only [getLabelsFilterSkip,getCodeLabelsFilterSkip] using htargets

/-- Copy of the private `successfulIndex` of `LabToTarget/SemanticsCompile.lean`. -/
theorem successfulIndex' {α : Type} [DecidableEq α] (values : List α)
    (target : α) (offset index : Nat) (h : findIndex target values offset = some index) :
    ∃ i, ∃ hi : i < values.length, index = offset+i ∧ values[i]'hi = target := by
  induction values generalizing offset with
  | nil => simp [findIndex] at h
  | cons head tail ih =>
    by_cases he : head = target
    · have hs : offset = index := by simpa only [findIndex,if_pos he,Option.some.injEq] using h
      exact ⟨0,by simp,by omega,he⟩
    · have ht : findIndex target tail (offset+1) = some index := by
        simpa only [findIndex,if_neg he] using h
      obtain ⟨i,hi,hindex,hvalue⟩ := ih (offset+1) ht
      exact ⟨i+1,by simp; omega,by omega,by simpa using hvalue⟩

/-- Copy of the private `bufferNotFfi` of `LabToTarget/SemanticsCompile.lean`. -/
theorem bufferNotFfi' {S Q : Type}
    (mc : MachineConfig width S Q) (pc : BitVec width) (size space i : Nat)
    (hstart : startPcOk mc pc) (hboundary : mmioPcsMinIndex mc.ffiNames = some i)
    (hbound : space+size+ffiOffset*(i+3) < 2^width) :
    ∀ bn, bn < space → BitVec.ofNat width bn + BitVec.ofNat width size + pc ∉
      mc.ffiEntryPcs.take i := by
  obtain ⟨_,_,_,_,_,_,_,boundary,hindex,hprefix,_,_⟩ := hstart
  have hi : boundary = i := Option.some.inj (hindex.symm.trans hboundary)
  subst boundary
  intro bn hbn hmem
  obtain ⟨j,hj,hvalue⟩ := List.mem_take_iff_getElem.mp hmem
  have hji : j < i := by omega
  have hfind := (hprefix j hji).2.2.2.2
  obtain ⟨found,hfound,hreturned,hentry⟩ := successfulIndex' mc.ffiEntryPcs
    (pc - BitVec.ofNat width ((3+j)*ffiOffset)) 0 j hfind
  have hfj : found = j := by omega
  subst found
  have he : BitVec.ofNat width bn + BitVec.ofNat width size + pc =
      pc - BitVec.ofNat width ((3+j)*ffiOffset) := hvalue.symm.trans hentry
  have hs : (BitVec.ofNat width bn + BitVec.ofNat width size +
      BitVec.ofNat width ((3+j)*ffiOffset)) + pc = pc := by
    calc
      _ = (BitVec.ofNat width bn + BitVec.ofNat width size + pc) +
          BitVec.ofNat width ((3+j)*ffiOffset) := by ac_rfl
      _ = (pc - BitVec.ofNat width ((3+j)*ffiOffset)) +
          BitVec.ofNat width ((3+j)*ffiOffset) := congrArg (fun x => x + _) he
      _ = pc := BitVec.sub_add_cancel _ _
  have hz := congrArg (fun x => x-pc) hs
  simp only [BitVec.add_sub_cancel,BitVec.sub_self] at hz
  have hzNat := congrArg BitVec.toNat hz
  have hlt : bn+size+(3+j)*ffiOffset < 2^width := by
    simp only [ffiOffset] at hbound ⊢
    omega
  rw [← BitVec.ofNat_add,← BitVec.ofNat_add,BitVec.toNat_ofNat] at hzNat
  simp only [BitVec.toNat_zero,Nat.mod_eq_of_lt hlt] at hzNat
  simp only [ffiOffset] at hzNat
  omega

/-- `noInstall` survives `filter_skip` (the `Or.inr` case of
`noInstallOrNoShareMemFilterSkip`). -/
theorem noInstall_filterSkip (code : LabProgHOL width) (h : noInstall code) :
    noInstall (filterSkip code) := by
  intro p position bytes len hfetch
  obtain ⟨originalPc,horiginal⟩ := asmFetchAuxFilterSkip code p
    (.labAsm .install position bytes len) ⟨hfetch,rfl⟩
  exact h originalPc position bytes len horiginal

/-- The FFI-name list that `LabToTarget.compile` passes to `removeLabels`. -/
def labFfis (c : LabToTarget.Config) (code : LabProgHOL width) : List HolFfiName :=
  match c.ffiNames with
  | some names => names
  | none => findFfiNames (filterSkip code)

end

/-- **Lab → RISC-V, clock level, at `semanticsCompile`'s initial state.** Under the premises of
Flapjack's `semanticsCompile`, `noInstall code` and `LinesBounded 24` for the target code of the
`removeLabels` call of `LabToTarget.compile`, a lab run of the byte-aligned initial state that
halts from clock `K` is matched by a halting RISC-V run within `7 * K + 7` steps, with the
same outcome and final FFI state. -/
theorem semanticsCompile_halt_bounded {F : Type}
    (mc : MachineConfig 64 riscv_state RiscVProjection) (htarget : mc.target = riscvTarget)
    (ffi : HolFfiState F) (ms : riscv_state)
    (code : LabProgHOL 64) (asmConf : AsmConfigExact 64) (c cNext : LabToTarget.Config)
    (bytes : List (BitVec 8)) (cbspace i : Nat) (t : AsmState 64)
    (m : BitVec 64 → WordLocW 64) (dm sdm : BitVec 64 → Bool)
    (coracle : Nat → LabToTarget.Config × LabProgHOL 64)
    (h : mcConfOk mc ∧
      (noShareMemInst code → compilerOracleOk coracle cNext.labels bytes.length asmConf mc.ffiNames) ∧
      goodCode asmConf c.labels code ∧
      asmConf = mc.target.config ∧ c.labels = .ln ∧ c.pos = 0 ∧
      compile asmConf c code = some (bytes,cNext) ∧ cNext.ffiNames = some mc.ffiNames ∧
      goodInitState mc ms bytes cbspace t m dm sdm ∧
      mmioPcsMinIndex mc.ffiNames = some i ∧
      cNext.shmemExtra.map (fun rec => (mc.target.getPc ms).toNat + rec.entryPc) =
        (mc.ffiEntryPcs.map BitVec.toNat).drop i ∧
      mc.mmioInfo = List.zip ((List.range cNext.shmemExtra.length).map (fun index => index+i))
        (cNext.shmemExtra.map (fun rec => (rec.nbytes,
          HolAddr.addr rec.addrReg (BitVec.ofNat 64 rec.addrOff), rec.reg,
          BitVec.ofNat 64 rec.exitPc + mc.target.getPc ms))) ∧
      noInstallOrNoShareMem code mc.ffiNames ∧
      cbspace+bytes.length+ffiOffset*(i+3) < 2^64 ∧
      (∀ ffis, c.ffiNames = some ffis → ∀ name ∈ ffis, ∃ s, name = .extCall s))
    (hni : noInstall code)
    (hL : ∀ code2 labs, removeLabels c.initClock mc.target.config 0 .ln (labFfis c code)
      (filterSkip code) = some (code2, labs) → LinesBounded 24 code2)
    (K : Nat) (o : HolOutcome) (t3 : LabSem.State 64 LabToTarget.Config F)
    (hev : evaluate { makeInit mc ffi t m (fun a => dm a && holByteAligned a)
        (fun a => sdm a && holByteAligned a) ms code (compile asmConf)
        (mc.target.getPc ms + BitVec.ofNat 64 bytes.length) cbspace coracle with clock := K } =
      (.halt o, t3)) :
    ∃ (N : Nat) (ms' : riscv_state), N ≤ 7 * K + 7 ∧
      evaluateTargetHOL mc ffi N ms = (.halt o, ms', t3.ffi) := by
  obtain ⟨hmc,horacle,hgood,hasm,hlabs,hpos,hcompile,hffi,hinit,hboundary,
    hentries,hmmio,hsafe,hbound,hprovided⟩ := h
  subst hasm
  have hw : goodDimindex 64 := hmc.1
  let initial := makeInit mc ffi t m dm sdm ms code (compile mc.target.config)
    (mc.target.getPc ms + BitVec.ofNat 64 bytes.length) cbspace coracle
  -- domain alignment (`implementsAlignDM` / `implementsAlignSDM`, clock level)
  have e1 : ({ makeInit mc ffi t m (fun a => dm a && holByteAligned a)
        (fun a => sdm a && holByteAligned a) ms code (compile mc.target.config)
        (mc.target.getPc ms + BitVec.ofNat 64 bytes.length) cbspace coracle with clock := K } :
        LabSem.State 64 LabToTarget.Config F) =
      alignDm (alignSdm { initial with clock := K }) := rfl
  rw [e1, evaluateAlignDM hw] at hev
  rcases h1 : evaluate (alignSdm { initial with clock := K }) with ⟨r1, n1⟩
  rw [h1] at hev
  simp only [Prod.mk.injEq] at hev
  obtain ⟨rfl, rfl⟩ := hev
  rw [evaluateAlignSDM hw] at h1
  rcases h2 : evaluate { initial with clock := K } with ⟨r2, n2⟩
  rw [h2] at h1
  simp only [Prod.mk.injEq] at h1
  obtain ⟨rfl, rfl⟩ := h1
  -- `filter_skip` (`makeInitFilterSkip`, clock level)
  let filtered := makeInit mc ffi t m dm sdm ms (filterSkip code) (compileLab mc.target.config)
    (mc.target.getPc ms + BitVec.ofNat 64 bytes.length) cbspace
    (fun n => ((coracle n).1, filterSkip (coracle n).2))
  have hrel : LabFilter.Proofs.stateRel filtered initial := by
    have hadj : LabFilter.Proofs.adjustPc initial.pc initial.code = initial.pc := by
      show LabFilter.Proofs.adjustPc 0 code = 0
      rw [LabFilter.Proofs.adjustPc.eq_def]; simp
    refine ⟨⟨compileLab mc.target.config, ?_, rfl⟩, rfl⟩
    rw [hadj]
    rfl
  obtain ⟨z, hz, hzffi⟩ := filter_halt filtered initial hrel K h2
  -- the `compile` analysis of `semanticsCompileLemmaPrime`
  have hcomp := hcompile
  simp only [compile,compileLab,hlabs,hpos] at hcomp
  generalize hchoice : (match c.ffiNames with
    | some names => (names,listSubset (findFfiNames (filterSkip code)) names)
    | none => (findFfiNames (filterSkip code),true)) = choice at hcomp
  rcases choice with ⟨ffis,ffisOk⟩
  have hffisEq : ffis = labFfis c code := by
    cases hcfg : c.ffiNames with
    | none =>
      simp only [hcfg,Prod.mk.injEq] at hchoice
      rw [← hchoice.1]; simp [labFfis, hcfg]
    | some supplied =>
      simp only [hcfg,Prod.mk.injEq] at hchoice
      rw [← hchoice.1]; simp [labFfis, hcfg]
  let finish (names : List HolFfiName) (ok : Bool) :=
    if ok then
      match removeLabels c.initClock mc.target.config 0 .ln names (filterSkip code) with
      | none => none
      | some (output,labs) =>
          let (newNames,info) := getShmemInfo output 0 [] []
          some (progToBytes output,{c with
            labels := labs
            pos := (progToBytes output).length+0
            secPosLen := getSymbols 0 output
            ffiNames := some (names++newNames)
            shmemExtra := info})
    else none
  have hfinished : finish ffis ffisOk = some (bytes,cNext) := by
    cases hcfg : c.ffiNames with
    | none =>
      simp only [hcfg,Prod.mk.injEq] at hchoice
      rw [← hchoice.1,← hchoice.2]
      cases hr : removeLabels c.initClock mc.target.config 0 .ln
          (findFfiNames (filterSkip code)) (filterSkip code) <;>
        simpa only [finish,hcfg,hr] using hcomp
    | some supplied =>
      simp only [hcfg,Prod.mk.injEq] at hchoice
      rw [← hchoice.1,← hchoice.2]
      cases hr : removeLabels c.initClock mc.target.config 0 .ln supplied (filterSkip code) <;>
        simpa only [finish,hcfg,hr] using hcomp
  clear hcomp
  have hcomp := hfinished
  dsimp only [finish] at hcomp
  by_cases hok : ffisOk = true
  · simp only [hok,↓reduceIte] at hcomp
    cases hremove : removeLabels c.initClock mc.target.config 0 .ln ffis (filterSkip code) with
    | none => simp only [hremove,reduceCtorEq] at hcomp
    | some output =>
      rcases output with ⟨code2,labs⟩
      simp only [hremove] at hcomp
      cases hinfo : getShmemInfo code2 0 [] [] with
      | mk newNames info =>
        simp only [hinfo,Option.some.injEq,Prod.mk.injEq] at hcomp
        obtain ⟨rfl,rfl⟩ := hcomp
        have hnames : mc.ffiNames = ffis++newNames := by
          simpa only [Option.some.injEq] using hffi.symm
        have hffis : ∀ name ∈ ffis, ∃ s, name = HolFfiName.extCall s := by
          cases hcfg : c.ffiNames with
          | none =>
            simp only [hcfg,Prod.mk.injEq] at hchoice
            rw [← hchoice.1]
            exact findFfiNamesEvery (filterSkip code) _ rfl
          | some supplied =>
            simp only [hcfg,Prod.mk.injEq] at hchoice
            rw [← hchoice.1]
            exact hprovided supplied hcfg
        have hnew : ∀ name ∈ newNames, ∀ s, name ≠ HolFfiName.extCall s := by
          obtain ⟨suffix,heq,hshared⟩ := getShmemInfo_mappedNames code2 0 [] [] newNames info hinfo
          simp only [List.nil_append] at heq
          rw [heq]
          intro name hmem s
          obtain ⟨op,rfl⟩ := hshared name hmem
          intro heq
          cases heq
        have hb : mmioPcsMinIndex mc.ffiNames = some ffis.length := by
          rw [hnames]
          exact mmioPcsMinIndex_append newNames ffis ⟨hnew,hffis⟩
        have hilen : i = ffis.length := Option.some.inj (hboundary.symm.trans hb)
        have htake : mc.ffiNames.take i = ffis := by
          rw [hnames,hilen,List.take_append_length]
        have hdrop : mc.ffiNames.drop i = newNames := by
          rw [hnames,hilen,List.drop_append_length]
        have hsubset : listSubset (findFfiNames (filterSkip code)) ffis = true := by
          cases hcfg : c.ffiNames with
          | none =>
            simp only [hcfg,Prod.mk.injEq] at hchoice
            rw [← hchoice.1]
            exact listSubsetRefl _
          | some supplied =>
            simp only [hcfg,Prod.mk.injEq] at hchoice
            rw [← hchoice.1]
            exact hchoice.2.trans hok
        have hLB : LinesBounded 24 code2 := hL code2 labs (by rw [← hffisEq]; exact hremove)
        let shiftedInfo := info.map (fun rec => { rec with
          entryPc := (mc.target.getPc ms).toNat+rec.entryPc,
          exitPc := (mc.target.getPc ms).toNat+rec.exitPc })
        have hgoodNat : goodCode mc.target.config (.ln : Spt (Spt Nat)) code := by
          simpa only [hlabs] using hgood
        refine (fun key => ?_) (makeInit_labHalt_target_bounded (G := Nat)
          InitECandidate.Solver.EncoderBound.riscvStepBound 4 24 mc ms ffi (filterSkip code) code2 labs c.initClock i cbspace t m
          dm sdm (fun n => ((coracle n).1,filterSkip (coracle n).2)) newNames info shiftedInfo
          (by rw [htarget]; exact InitECandidate.Solver.EncoderBound.riscv_encoder_correct_bounded)
          (by decide) (riscv_bytes_per_step mc htarget) (noInstall_filterSkip code hni) hLB
          ⟨goodCodeFiltered' _ _ _ hgoodNat, hmc, ?_, ?_, ?_, hinit, hinfo, rfl, hdrop,
            hboundary, ?_, ?_, ?_, ?_⟩ K o z hz)
        · obtain ⟨N, ms', hN, hrun⟩ := key
          refine ⟨N, ms', ?_, ?_⟩
          · have : 24 / 4 + 1 = 7 := rfl
            rw [this] at hN
            have hle : 7 * (K - z.clock) ≤ 7 * K := Nat.mul_le_mul_left _ (Nat.sub_le _ _)
            omega
          · rw [hrun N le_rfl, hzffi]
            rfl
        · intro hno
          obtain ⟨hall,hzero⟩ := horacle ((noShareMemFilterSkip code).mp hno)
          refine ⟨?_,hzero⟩
          intro k
          exact ⟨goodCodeFiltered' _ _ _ (hall k).1,
            (noShareMemFilterSkip (coracle k).2).mpr (hall k).2⟩
        · rw [htake]
          simp only [listSubset,List.all_eq_true,decide_eq_true_eq] at hsubset ⊢
          intro name hmem
          exact hsubset name (List.mem_filter.mp hmem).1
        · simpa only [htake] using hremove
        · simpa only [shiftedInfo,List.map_map,Function.comp_def] using hentries
        · simpa only [shiftedInfo,List.length_map,List.map_map,Function.comp_def,
            BitVec.ofNat_add,BitVec.ofNat_toNat,BitVec.setWidth_eq,BitVec.add_comm] using hmmio
        · exact noInstallOrNoShareMemFilterSkip code mc.ffiNames hsafe
        · have hstart : startPcOk mc (mc.target.getPc ms) := by
            rw [← hinit.2.2.1]
            exact hinit.2.2.2.1
          exact bufferNotFfi' mc _ _ cbspace i hstart hboundary hbound
  · simp only [hok,↓reduceIte,reduceCtorEq] at hcomp

open Flapjack.Pancake.PanLang Flapjack.Pancake.Proofs.PanToTarget in
/-- **Stage A4 at the clock level** (`panToTargetMachineLab`, `AssemblyMachineToLab.lean`):
under the premises of the baseline chain's machine-to-lab stage, a lab run of the initial lab
state `labst` that halts from clock `K` is matched by a halting RISC-V run within `7 * K + 7`
steps, same outcome and final FFI state. `noInstall` of the lab program is
`from_pan_to_lab_no_install`; the only extra premise is `LinesBounded 24` of the target code. -/
theorem machineLab_halt_bounded {σ : Type}
    (c : Backend.Config) (mc : MachineConfig 64 riscv_state RiscVProjection)
    (htarget : mc.target = riscvTarget) (ffi : HolFfiState σ)
    (t : AsmState 64) (m : BitVec 64 → WordLocW 64)
    (bitmapsDm sdm : BitVec 64 → Bool) (ms : riscv_state) (bytes : List (BitVec 8))
    (cbspace : Nat)
    (panCode : List (DeclHOL 64)) (col : List (Option (Spt Nat)))
    (wprog : List (Nat × Nat × WordLangProgHOL (BitVec 64))) (bitmaps : List (BitVec 64))
    (wconf : WordToStack.Native.Config) (fs : List Nat) (p : List (Nat × StackLang.HolProg 64))
    (ltconf : LabToTarget.Config)
    (hcfg : BackendProof.backendConfigOk mc.target.config c) (hmc : mcConfOk mc)
    (hisa : mc.target.config.isa ≠ .ag32)
    (hwtw : WordToWord.compile c.wordToWordConf mc.target.config
      (panToWordCompileProgHOL mc.target.config.isa panCode) = (col, wprog))
    (hwts : WordToStack.Native.compileNative mc.target.config false wprog =
      (bitmaps, wconf, fs, p))
    (hlab : LabToTarget.compile mc.target.config c.labConf
      (StackToLab.compile c.stackConf c.dataConf (2 * DataToWord.maxHeapLimit 64 c.dataConf - 1)
        (mc.target.config.regCount - (mc.target.config.avoidRegs.length + 3))
        mc.target.config.addrOffset p) = some (bytes, ltconf))
    (hnodup : ((functionsHOL panCode).map Prod.fst).Nodup)
    (hffiOk : match c.labConf.ffiNames with
      | none => True
      | some l => ∀ x ∈ l, ∃ s, x = HolFfiName.extCall s)
    (hgi : goodInitState mc ms bytes cbspace t m
      (fun w => decide (t.regs (StackNames.findNameSpt c.stackConf.regNames 2) ≤ w ∧
        w < t.regs (StackNames.findNameSpt c.stackConf.regNames 4)) || bitmapsDm w) sdm)
    (hffi : ltconf.ffiNames = some mc.ffiNames)
    (hmmio : ∀ i, mmioPcsMinIndex mc.ffiNames = some i →
      ltconf.shmemExtra.map (fun rec => (mc.target.getPc ms).toNat + rec.entryPc) =
          (mc.ffiEntryPcs.map BitVec.toNat).drop i ∧
        mc.mmioInfo = List.zip ((List.range ltconf.shmemExtra.length).map (fun index => index + i))
          (ltconf.shmemExtra.map fun rec => (rec.nbytes,
            HolAddr.addr rec.addrReg (BitVec.ofNat 64 rec.addrOff),
            rec.reg, BitVec.ofNat 64 rec.exitPc + mc.target.getPc ms)) ∧
        cbspace + bytes.length + ffiOffset * (i + 3) < 2 ^ 64)
    (hinst : ∀ q ∈ panToWordCompileProgHOL mc.target.config.isa panCode,
      everyInst (fun i => instOkLessExact mc.target.config (HolInst.ofWordLangInst i)) q.2.2 =
        true)
    (hL : ∀ code2 labs, removeLabels c.labConf.initClock mc.target.config 0 .ln
      (labFfis c.labConf (StackToLab.compile c.stackConf c.dataConf
        (2 * DataToWord.maxHeapLimit 64 c.dataConf - 1)
        (mc.target.config.regCount - (mc.target.config.avoidRegs.length + 3))
        mc.target.config.addrOffset p))
      (filterSkip (StackToLab.compile c.stackConf c.dataConf
        (2 * DataToWord.maxHeapLimit 64 c.dataConf - 1)
        (mc.target.config.regCount - (mc.target.config.avoidRegs.length + 3))
        mc.target.config.addrOffset p)) = some (code2, labs) → LinesBounded 24 code2) :
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
    ∀ (K : Nat) (o : HolOutcome) (t3 : LabSem.State 64 LabToTarget.Config σ),
      evaluate { labst with clock := K } = (.halt o, t3) →
      ∃ (N : Nat) (ms' : riscv_state), N ≤ 7 * K + 7 ∧
        evaluateTargetHOL mc ffi N ms = (.halt o, ms', t3.ffi) := by
  intro regNames r1 r2 heapStackDm sp maxHeap labst K o t3 hev
  have hpos : c.labConf.pos = 0 := hcfg.2.2.2.2.1
  have hlabels : c.labConf.labels = .ln := hcfg.2.2.2.2.2.1
  obtain ⟨ffis, hffis, i, hi⟩ := BackendProof.compileLabIMPMmioPcsMinIndex mc.target.config
    c.labConf _ bytes ltconf ⟨hlab, hffiOk⟩
  rw [hffi] at hffis
  cases hffis
  obtain ⟨hshm, hmmioI, hbound⟩ := hmmio i hi
  have horacle := panToTargetCompilerOracleOk mc.target.config c.labConf ltconf _ bytes
    mc.ffiNames regNames c.stackConf.jump mc.target.config.addrOffset sp hlab hpos hffi
  have hnis := panToTargetNoInstallOrNoShareMem panCode mc.target.config mc.target.config.isa _
    c.wordToWordConf col wprog bitmaps wconf fs p c.stackConf c.dataConf maxHeap sp
    mc.target.config.addrOffset mc.ffiNames ⟨hnodup, hisa, rfl, hwtw, hwts⟩
  have hni := from_pan_to_lab_no_install panCode mc.target.config mc.target.config.isa _
    c.wordToWordConf col wprog bitmaps wconf fs p c.stackConf c.dataConf maxHeap sp
    mc.target.config.addrOffset ⟨hnodup, hisa, rfl, hwtw, hwts⟩
  have hgc := panToTargetGoodCode (β := Nat) c mc panCode col wprog bitmaps wconf fs p hcfg hmc.1
    hisa hwtw hwts hnodup hinst
  exact semanticsCompile_halt_bounded mc htarget ffi ms _ mc.target.config c.labConf ltconf bytes
    cbspace i t m (fun w => heapStackDm w || bitmapsDm w) sdm _
    ⟨hmc, fun _ => horacle, by rw [hlabels]; exact hgc, rfl, hlabels, hpos, hlab, hffi, hgi, hi,
      hshm, hmmioI, hnis, hbound, fun ffis h => by rw [h] at hffiOk; exact hffiOk⟩ hni hL
    K o t3 hev

end InitECandidate.Solver.Assembly
