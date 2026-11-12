import InitECandidate.Solver.Compiler.FrontEnd
import InitECandidate.Solver.Compiler.CrepToLoop
import Flapjack.Pancake.Proofs.PanToTarget.AssemblyTop

/-!
# Pancake → Word at the clock level (the `pan_to_word` stage of the baseline chain)

Clock-level counterpart of Flapjack's `panToWordStateRelImpSemantics`
(`Pancake/Proofs/PanToWord/StateRelImpSemantics.lean`), with the same 24 premises, composed
with `word_to_word` (as `AssemblyLabChain` does with `word_to_word_compile_semantics`):

* chain (a) `frontEnd_chainA` (Pan → Crep, `+1`, equal final clocks);
* `crepToLoop_run_bounded` (Crep → Loop, `+ k'`, `k' ≤ (Sc + 1) * Δ + 3`, equal final clocks;
  the run-level form of `crepToLoop_perClock_bounded_of_code`);
* chain (b) `frontEnd_chainB` (Loop → compiled Word, `+0`).

From a **minimal** source run (final clock `0`) at clock `k`, the compiled Word entry run at
clock `kw ≤ (Sc + 2) * (k + 1) + 3` ends with the related result and the same FFI state.

The wrappers `panToWordStage_clock`, `panToWordFromInit_clock`, `panToWordStageLab_clock` are
copies of Flapjack's `panToTargetPanToWordStage`, `panToTargetPanToWordFromInit`,
`panToTargetPanToWordStageLab` (`AssemblyPanToWord.lean`) that discharge the 24 premises at the
baseline chain's word state `word_to_stack$make_init … sst`, with the clock-level conclusion.
-/

namespace InitECandidate.Solver.Assembly

open Flapjack Flapjack.Pancake.PanLang Flapjack.Basis.Pure.MlString Flapjack.Compiler.Encoders.Asm
open Flapjack.Pancake.CrepToLoop.Proofs.NCompileCorrect
open InitECandidate.Solver.Compiler.FrontEnd
open InitECandidate.Solver.Compiler.CrepToLoop

set_option autoImplicit false

section
variable {width : Nat} [NeZero width]

/-- Outcome of a terminating source result (`returned` → `success`, `finalFfi e` → `ffiOutcome e`),
as in `PanSemStateFiniteExact.semantics`. -/
def SrcOutcome : Option (PanSemResultExact width) → HolOutcome → Prop
  | some (.finalFfi e), o => o = .ffiOutcome e
  | some (.returned _), o => o = .success
  | _, _ => False

/-- Outcome of a terminating Word entry result (`Result (Loc 1 0) _` → `success`,
`FinalFFI e` → `ffiOutcome e`), as in `WordSemStateFiniteExact.semantics`. -/
def WordOutcome : Option (WordSemResult width) → HolOutcome → Prop
  | some (.finalFfi e), o => o = .ffiOutcome e
  | some (.result l _), o => l = .loc 1 0 ∧ o = .success
  | _, _ => False

theorem SrcOutcome.terminates {r : Option (PanSemResultExact width)} {o : HolOutcome}
    (h : SrcOutcome r o) : Compiler.FrontEnd.PanTerminates r := by
  rcases r with _ | (_ | _ | _ | _ | _ | _ | _) <;>
    simp_all [SrcOutcome, Compiler.FrontEnd.PanTerminates]

/-- Crep → Loop at the run level: the loop entry run, its result (`resultToLoop`), equal final
clock and FFI state (the content of `crepToLoop_perClock_bounded_of_code` before it is
projected to the `crepToLoopSemanticsWrapper` run classes). -/
theorem crepToLoop_run_bounded {σ : Type} (S : Nat) (hS : 3 ≤ S)
    (s : CrepSemHOLState width σ) (t : LoopSemStateFiniteExact width σ)
    (crep_code : List (MlString × List Nat × CrepProgHOL width))
    (start : MlString) (lc : Nat) (c : AsmArchitecture)
    (hbody : ∀ e ∈ crep_code, csize e.2.2 ≤ S)
    (h : s.memaddrs = (fun address => t.mdomain address = true) ∧
        s.be = t.be ∧ s.shMemaddrs = (fun address => t.shMdomain address = true) ∧
        s.ffi = t.ffi ∧ s.baseAddr = t.baseAddr ∧ s.topAddr = t.topAddr ∧
        crepToLoopMemRelHOLExact s.memory t.memory s.memaddrs ∧
        crepToLoopGlobalsRelHOLExact s.globals t.globals ∧
        (crep_code.map Prod.fst).Nodup ∧
        s.code = alistToFmapCodeExact crep_code ∧
        t.code = sptFromAList (compileProgHOLExact c crep_code) ∧
        s.locals = HolFiniteMapExact.empty ∧
        (crepToLoopMakeFuncsExactHOL crep_code).lookup start = some (lc, 0) ∧
        crepSemantics s start ≠ .fail) :
    ∀ k res s1, crepRun s start k = (res, s1) → res ≠ some .error →
      ∃ k' res' t1, k' ≤ (S + 1) * (k - s1.clock) + 3 ∧
        loopRun t lc (k + k') = (res', t1) ∧ res' = resultToLoop res ∧
        t1.clock = s1.clock ∧ t1.ffi = s1.ffi := by
  obtain ⟨hmd, hbe, hsh, hffi, hbase, htop, hmem, hglob, hdist, hscode, htcode, hloc, hmf,
    hfail⟩ := h
  obtain ⟨prog, hprog⟩ :=
    crepSemantics_ne_fail_imp_holAlookup s crep_code start hscode hloc hdist hfail
  let nctxt : CrepToLoopContextExact :=
    mkCtxtExact c HolFiniteMapExact.empty (crepToLoopMakeFuncsExactHOL crep_code) 0
  have hcode2 : crepToLoopCodeRel2Exact nctxt s.code t.code := by
    rw [hscode, htcode]
    exact mkCtxtCodeImpCodeRel2Exact c crep_code start prog ⟨hdist, hprog⟩
  have hlc : findLabExact nctxt start = lc := by
    simp [findLabExact, nctxt, mkCtxtExact, hmf]
  have hdv : crepToLoopDistinctVarsExact nctxt.vars := by
    intro x y n m hx
    simp [nctxt, mkCtxtExact, HolFiniteMapExact.empty] at hx
  have hcm : crepToLoopCtxtMaxExact nctxt.vmax nctxt.vars := by
    intro v m hv
    simp [nctxt, mkCtxtExact, HolFiniteMapExact.empty] at hv
  have hcodeB : ∀ f ns p, s.code.lookup f = some (ns, p) → csize (crepSimpProgHOL p) ≤ S := by
    intro f ns p hl
    rw [hscode] at hl
    exact Nat.le_trans (csize_simp _)
      (hbody _ (alistToFmapCodeExact_lookup_mem crep_code f ns p hl))
  intro k res s1 hev hne
  have hmf' : (crepToLoopMakeFuncsExactHOL crep_code).lookup start =
      some (findLabExact nctxt start, 0) := by
    rw [hlc]
    exact hmf
  obtain ⟨k', res', t', hrun, hsr, hres, hk⟩ :=
    codeRelEvaluateCallCorrect_bounded S hS nctxt s.code t.code start
      { s with clock := k } res s1 { t with clock := k } crep_code lc prog hcodeB hcode2 hev
      ⟨hbe, hsh, hmd, rfl, hffi, hbase, htop, hmem, hglob, hloc, rfl, rfl⟩ hmf'
      ⟨hlc, hscode, rfl, hprog, hdv, hcm⟩ hne
  rw [hlc] at hrun
  have hrun' : loopRun t lc (k + k') = (res', t') := by
    have heq : ({ { t with clock := k } with clock := k + k' } :
        LoopSemStateFiniteExact width σ) = { t with clock := k + k' } := by
      cases t; rfl
    show LoopSemStateFiniteExact.evaluate _ _ = _
    rw [← heq]
    exact hrun
  exact ⟨k', res', t', by simpa using hk, hrun', hres, hsr.2.2.1.symm, hsr.2.2.2.2.1.symm⟩

/-- The Crep program of the baseline pipeline (`panToWordCompileProgHOL` before
`crep_to_loop`): `pan_simp`, `pan_structs`, `pan_globals`, `pan_to_crep` (with `crep_inline`). -/
noncomputable def crepCodeOf (code : List (DeclHOL width)) :
    List (MlS × List Nat × CrepProgHOL width) :=
  compileProgDeclsHOLW (compileTopExactHOL
    (Pancake.PanStructs.CompileShapeExact.compileTopExact (panSimpDeclsHOL code)) (ofString "main"))

theorem WordOutcome.ne_error {r : Option (WordSemResult width)} {o : HolOutcome}
    (h : WordOutcome r o) : r ≠ some .error := by
  rintro rfl
  exact h

/-- **Pancake → compiled Word, clock level.** Under the 24 premises of Flapjack's
`panToWordStateRelImpSemantics` (for the source-code word state `target`), the `word_to_word`
compilation `hwtw` of its code with the two `word_to_word_compile_semantics` state facts, and
`csize ≤ Sc` (`3 ≤ Sc`) on the Crep program: every **minimal** terminating source entry run
(final clock `0`) at clock `k` is matched by the Word entry run of the compiled code at clock
`kw ≤ (Sc + 2) * (k + 1) + 3`, with the same outcome and the same final FFI state. -/
theorem panToWord_clock {C σ : Type}
    (source : PanSemStateFiniteExact width σ) (target : WordSemStateFiniteExact width C σ)
    (arch : AsmArchitecture) (code : List (DeclHOL width)) (start : MlS)
    (globalsSize : Nat) (heapLen : BitVec width)
    (Sc : Nat) (hSc : 3 ≤ Sc) (hcrepB : ∀ e ∈ crepCodeOf code, csize e.2.2 ≤ Sc)
    (wconf : Compiler.Backend.WordToWord.Config) (ac : AsmConfigExact width)
    (col : List (Option (Spt Nat))) (wprog : List (Nat × Nat × WordLangProgHOL (BitVec width)))
    (hwtw : Compiler.Backend.WordToWord.compile wconf ac (panToWordCompileProgHOL arch code) =
      (col, wprog))
    (hgc : Compiler.Backend.WordSimp.gcFunConstOk target.gcFun) (hstack : target.stack = []) :
    ((∀ address, source.memaddrs address → target.memory address = wlabWlocExact (source.memory address)) ∧
      noLabelsHOL target.memory (fun address => target.mdomain address = true) ∧
      start = ofString "main" ∧
      globalsSize = ((decShapesHOL code).map
        (sizeOfShapeWithContextHOL (holThe (decsStcnamesHOLExact [] code)))).sum ∧
      distinctParamsHOL (functionsHOL code) ∧
      (fun address => target.mdomain address = true) =
        (fun address => source.memaddrs address ∨ Compiler.Backend.StackRemove.addresses source.topAddr globalsSize address) ∧
      (fun address => target.shMdomain address = true) = source.shMemaddrs ∧
      target.be = source.be ∧ target.ffi = source.ffi ∧
      target.store.lookup .currHeap = some (.word source.baseAddr) ∧
      target.store.lookup .heapLength = some (.word heapLen) ∧
      source.topAddr = source.baseAddr + (2 : BitVec width) * heapLen - panBytesInWord width * BitVec.ofNat width globalsSize ∧
      ((functionsHOL code).map Prod.fst).Nodup ∧ panGlobalsByteAlignedHOL source.topAddr ∧
      globalsAllocatableHOL source code ∧ source.code = HolFiniteMapExact.empty ∧
      target.code = sptFromAList (panToWordCompileProgHOL arch code) ∧
      source.globals = HolFiniteMapExact.empty ∧ source.locals = HolFiniteMapExact.empty ∧
      sizeOfEidsHOL code < 2 ^ width ∧ source.eshapes = HolFiniteMapExact.empty ∧
      sptLookup 0 target.locals = some (WordLocW.loc 1 0) ∧ goodDimindex width ∧
      PanSemStateFiniteExact.semanticsDecls source start code ≠ .fail) →
    ∃ s0, panDeclsInit source code = some s0 ∧
      ∀ k r s1 o, panRun s0 start k = (r, s1) → SrcOutcome r o → s1.clock = 0 →
        ∃ kw r' t1, kw ≤ (Sc + 2) * (k + 1) + 3 ∧
          wordRun { target with code := sptFromAList wprog } firstLoopName kw = (r', t1) ∧
          WordOutcome r' o ∧ t1.ffi = s1.ffi := by
  classical
  intro ⟨hmem, hnolabels, hstart, hsize, hparams, hmdomain, hshdomain, hbe, hffi,
    hcurrheap, hheaplen, htop, hdist, halign, halloc, hcode, htcode, hglobals,
    hlocals, heids, heshapes, hloc0, hdim, hfail⟩
  have hglobalsSem := Pancake.Proofs.PanToWord.InitialComposition.initialToGlobalsSemantics
    source target code start globalsSize hfail hdist hcode hlocals hglobals heshapes hsize
    halloc halign hdim hmem
  let structCode := Pancake.PanStructs.CompileShapeExact.compileTopExact (panSimpDeclsHOL code)
  let panCode := compileTopExactHOL structCode start
  let globalState : PanSemStateFiniteExact width σ :=
    { source with
      topAddr := source.topAddr + panBytesInWord width * BitVec.ofNat width globalsSize
      memaddrs := fun address => source.memaddrs address ∨
        Compiler.Backend.StackRemove.addresses source.topAddr globalsSize address
      memory := wlocWlabHOL ∘ target.memory
      locals := source.locals }
  have hglobalnf : PanSemStateFiniteExact.semanticsDecls globalState start panCode ≠ .fail := by
    rw [← hglobalsSem]; exact hfail
  let crepState := crepStateHOL globalState panCode globalState.memory
  have hstructnf : PanSemStateFiniteExact.semanticsDecls source start structCode ≠ .fail := by
    have h := Pancake.Proofs.PanStructs.CompileTopSemanticsDeclsExact.compileTopSemanticsDeclsExact
      source start (panSimpDeclsHOL code)
    have hs := PanSimp.stateRelImpSemanticsDeclsHOL source source code start
      ⟨(by refine ⟨?_, (fun _ h => h), ?_⟩
           · cases source; rfl
           · intro f vs p sh he; simp [hcode, HolFiniteMapExact.empty] at he), hdist, hcode, hcode, hfail⟩
    have he := h ⟨(by rw [← hs]; exact hfail), hlocals, hcode, hglobals⟩
    have hm : source.eshapes.map2 (fun entry =>
        Pancake.PanStructs.CompileShapeExact.compileShapeExact
          (Pancake.PanStructs.CompileShapeExact.getNamesExact
            { structs := [], locals := [], globals := [] } (panSimpDeclsHOL code)).structs entry.2) = source.eshapes := by
      rw [heshapes]; apply HolFiniteMapExact.ext; rfl
    rw [hm] at he
    rw [← he, ← hs]; exact hfail
  have hdiststruct : ((functionsHOL structCode).map Prod.fst).Nodup := by
    dsimp only [structCode]
    rw [functionNamesStructsCompileTopHOL, functionNamesCompileProgHOL]; exact hdist
  obtain ⟨mainBody, mainShape, hmain⟩ := semanticsDeclsHasMainPanToWordHOL source start structCode
    ⟨hcode, hdiststruct, hstructnf⟩
  have hpanSize : sizeOfEidsHOL panCode < 2 ^ width := by
    dsimp only [panCode]
    rw [sizeOfEidsCompileTopHOL structCode start [] mainBody mainShape hmain]
    dsimp only [structCode]
    rw [sizeOfEidsStructsCompileEqHOL, sizeOfEidsHOL_panSimpDeclsHOL_eq]
    exact heids
  have hcrep := PanToCrepStateRelImpSemanticsTop.stateRelImpSemanticsDeclsPanToCrep
    globalState crepState panCode start
    ⟨(by simp [panToCrepStateRelFiniteExact, crepState, crepStateHOL,
          globalState, hglobals, HolFiniteMapExact.empty]),
      allDistinctCompileTopHOL start structCode hdiststruct,
      hcode, rfl, hlocals, heshapes, compileTopLocalisedHOL structCode start,
      (by apply List.all_eq_true.mpr
          intro d hd
          rcases PanGlobalsCompileDecsStructural.compile_top_only_functions_or_exnsHOL structCode start d hd with h | h <;> simp [h]),
      hpanSize, hglobalnf⟩
  let crepCode := compileProgDeclsHOLW panCode
  let loopState := loopStateHOL crepState arch crepCode target.clock target.memory
  have hcrepnf : crepSemantics crepState start ≠ .fail := by
    rw [hcrep]; exact hglobalnf
  have hmf : (crepToLoopMakeFuncsExactHOL crepCode).lookup start = some (firstLoopName, 0) :=
    flookupMakeFuncsMainHOL structCode start mainBody mainShape hmain
  have hloopB := crepToLoop_run_bounded Sc hSc crepState loopState crepCode start firstLoopName arch
    (by simpa [crepCode, panCode, structCode, crepCodeOf, hstart] using hcrepB)
    ⟨(by simp [loopState, loopStateHOL]), rfl,
      (by simp [loopState, loopStateHOL]), rfl, rfl, rfl,
      (by intro address ha
          have ha' : target.mdomain address = true := by
            exact (congrFun hmdomain address).symm ▸ ha
          obtain ⟨w, hw⟩ := hnolabels address ha'
          simp [crepState, crepStateHOL, globalState, loopState, loopStateHOL,
            wlocWlabHOL, wlabWlocExact, hw]),
      (by intro address value he
          simp [crepState, crepStateHOL, HolFiniteMapExact.empty] at he),
      panToCrepFirstCompileProgAllDistinctExact panCode (allDistinctCompileTopHOL start structCode hdiststruct),
      rfl, rfl, rfl, hmf, hcrepnf⟩
  have hdm : loopState.mdomain = target.mdomain := by
    funext address
    have hd := congrFun hmdomain address
    apply Bool.eq_iff_iff.mpr
    simpa [loopState, loopStateHOL, crepState, crepStateHOL, globalState] using Iff.of_eq hd.symm
  have hsh : loopState.shMdomain = target.shMdomain := by
    funext address
    have hd := congrFun hshdomain address
    simp [loopState, loopStateHOL, crepState, crepStateHOL, globalState, ← hd]
  have htop' : loopState.topAddr = loopState.baseAddr + (2 : BitVec width) * heapLen := by
    change source.topAddr + panBytesInWord width * BitVec.ofNat width globalsSize = _
    rw [htop]
    exact BitVec.sub_add_cancel _ _
  have hcodeWord : target.code = sptFromAList
      (loopToWordCompileProgHOL (compileProgHOLExact arch crepCode)) := by
    simpa [panToWordCompileProgHOL, crepCode, panCode, structCode, hstart, loopToWordCompileHOL] using htcode
  have hparamsLoop := crepToLoopCompileProgDistinctParamsHOLExact crepCode arch
    (compileProgDeclsHOLW_params_nodup panCode)
  have hrelation : loopToWordStateRelHOLExact loopState target := by
    refine ⟨heapLen, rfl, hdm.symm, hsh.symm, rfl, hbe, hffi, hcurrheap, hheaplen, htop', ?_, ?_⟩
    · intro name value hl
      simp [loopState, loopStateHOL, HolFiniteMapExact.empty] at hl
    · intro name params body hl
      constructor
      · rw [hcodeWord]
        exact loopToWordLookupProgSomeLookupCompileProg _ name params body hl
      · apply of_decide_eq_true
        apply (List.all_eq_true.mp hparamsLoop) (name, params, body)
        apply sptAListLookup_mem name (compileProgHOLExact arch crepCode) (params, body)
        simpa only [loopState, loopStateHOL, sptLookup_sptFromAList] using hl
  have hchainB := frontEnd_chainB loopState target firstLoopName wconf ac
    (panToWordCompileProgHOL arch code) wprog col hrelation rfl hdim hloc0 hwtw hgc
    (PanToWord.pan_to_word_compile_prog_no_install_code _ code _ rfl)
    (PanToWord.pan_to_word_compile_prog_no_alloc_code _ code _ rfl)
    (PanToWord.pan_to_word_compile_prog_no_mt_code _ code _ rfl)
    htcode hstack
  -- chain (a)
  obtain ⟨s0, hs0, -, hchainA⟩ := frontEnd_chainA source target code start globalsSize hfail hdist
    hcode hlocals hglobals heshapes hsize halloc halign hdim hmem heids
  refine ⟨s0, hs0, ?_⟩
  intro k r s1 o hrun hout hmin
  obtain ⟨rc, tc, hcrun, hcres, hcclk, hcffi⟩ := hchainA k r s1 hrun hout.terminates
  have hcne : rc ≠ some .error := panCrepRes_ne_error hcres
  obtain ⟨k', rl, tl, hk', hlrun, hlres, hlclk, hlffi⟩ := hloopB (k + 1) rc tc hcrun hcne
  -- the loop result is a terminating one
  have hshape : (∃ e, rl = some (.finalFfi e) ∧ o = .ffiOutcome e) ∨
      (∃ v, rl = some (.result v) ∧ o = .success) := by
    rcases r with _ | (_ | _ | _ | _ | _ | _ | _) <;> simp only [SrcOutcome] at hout
    all_goals first
      | (rename_i e
         simp only [convertResHOL, panCrepRes] at hcres
         subst hcres
         rw [hlres]
         exact .inl ⟨e, rfl, hout⟩)
      | (rename_i v
         simp only [convertResHOL, panCrepRes] at hcres
         subst hcres
         rw [hlres]
         exact .inr ⟨_, rfl, hout⟩)
  have hlne : rl ≠ some .error := by
    rcases hshape with ⟨e, rfl, -⟩ | ⟨v, rfl, -⟩ <;> simp
  have hlnt : rl ≠ some .timeOut := by
    rcases hshape with ⟨e, rfl, -⟩ | ⟨v, rfl, -⟩ <;> simp
  have hlnx : ∀ v, rl ≠ some (.exception v) := by
    intro v
    rcases hshape with ⟨e, rfl, -⟩ | ⟨w, rfl, -⟩ <;> simp
  obtain ⟨rw', tw, hwrun, hwres, hwffi, -⟩ := hchainB (k + 1 + k') rl tl hlrun hlne hlnt hlnx
  refine ⟨k + 1 + k', rw', tw, ?_, hwrun, ?_, ?_⟩
  · rw [hcclk, hmin, Nat.sub_zero] at hk'
    have : (Sc + 2) * (k + 1) = (Sc + 1) * (k + 1) + (k + 1) := by
      rw [show Sc + 2 = (Sc + 1) + 1 from rfl, Nat.add_mul, Nat.one_mul]
    omega
  · rcases hshape with ⟨e, rfl, rfl⟩ | ⟨v, rfl, rfl⟩
    · simp only [loopWordRes] at hwres
      subst hwres
      simp [WordOutcome]
    · simp only [loopWordRes] at hwres
      subst hwres
      simp [WordOutcome]
  · rw [hwffi, hlffi, hcffi]

end

section Wrappers
open Flapjack.Compiler.Backend Flapjack.Pancake.Proofs.PanToTarget

variable {width : Nat} [NeZero width]

/-- Clock-level `panToTargetPanToWordStage` (`AssemblyPanToWord.lean`): the source-code word
state `wst0` of `word_to_stack$make_init`, compiled by `word_to_word` to `wst` itself. -/
theorem panToWordStage_clock {C σ : Type}
    (ac : AsmConfigExact width) (k : Nat) (sst : StackSemStateFiniteExact width C σ)
    (wcode : Spt (Nat × WordLangProgHOL (BitVec width)))
    (worac : Nat → (Nat × C) × List (Nat × Nat × WordLangProgHOL (BitVec width)))
    (s : PanSemStateFiniteExact width σ) (isa : AsmArchitecture)
    (panCode : List (DeclHOL width)) (start : MlS) (globalsSize : Nat)
    (heapLen : BitVec width)
    (Sc : Nat) (hSc : 3 ≤ Sc) (hcrepB : ∀ e ∈ crepCodeOf panCode, csize e.2.2 ≤ Sc)
    (wconf : WordToWord.Config)
    (col : List (Option (Spt Nat))) (wprog : List (Nat × Nat × WordLangProgHOL (BitVec width)))
    (hwtw : WordToWord.compile wconf ac (panToWordCompileProgHOL isa panCode) = (col, wprog))
    (hwcode : wcode = sptFromAList wprog)
    (hgc : WordSimp.gcFunConstOk
      (WordToStack.Native.Initialization.makeInit ac k sst wcode worac).gcFun)
    (hstack : (WordToStack.Native.Initialization.makeInit ac k sst wcode worac).stack = [])
    (hmem : ∀ a, s.memaddrs a → sst.memory a = wlabWlocExact (s.memory a))
    (hnolab : noLabelsHOL sst.memory (fun a => sst.mdomain a = true))
    (hmdomain : (fun a => sst.mdomain a = true) =
      (fun a => s.memaddrs a ∨ StackRemove.addresses s.topAddr globalsSize a))
    (hshmdomain : (fun a => sst.shMdomain a = true) = s.shMemaddrs)
    (hbe : sst.be = s.be) (hffi : sst.ffi = s.ffi)
    (hcurr : sst.store.lookup .currHeap = some (.word s.baseAddr))
    (hheap : sst.store.lookup .heapLength = some (.word heapLen))
    (hstart : start = ofString "main")
    (hsize : globalsSize = ((decShapesHOL panCode).map
      (sizeOfShapeWithContextHOL (holThe (decsStcnamesHOLExact [] panCode)))).sum)
    (hparams : distinctParamsHOL (functionsHOL panCode))
    (htop : s.topAddr = s.baseAddr + (2 : BitVec width) * heapLen -
      panBytesInWord width * BitVec.ofNat width globalsSize)
    (hnodup : ((functionsHOL panCode).map Prod.fst).Nodup)
    (halign : panGlobalsByteAlignedHOL s.topAddr)
    (halloc : globalsAllocatableHOL s panCode) (hcode : s.code = HolFiniteMapExact.empty)
    (hglobals : s.globals = HolFiniteMapExact.empty)
    (hlocals : s.locals = HolFiniteMapExact.empty) (heids : sizeOfEidsHOL panCode < 2 ^ width)
    (heshapes : s.eshapes = HolFiniteMapExact.empty) (good : goodDimindex width)
    (hfail : PanSemStateFiniteExact.semanticsDecls s start panCode ≠ .fail) :
    let wst := WordToStack.Native.Initialization.makeInit ac k sst wcode worac
    ∃ s0, panDeclsInit s panCode = some s0 ∧
      ∀ kk r s1 o, panRun s0 start kk = (r, s1) → SrcOutcome r o → s1.clock = 0 →
        ∃ kw r' t1, kw ≤ (Sc + 2) * (kk + 1) + 3 ∧
          wordRun wst BvlToBvi.initGlobalsLocation kw = (r', t1) ∧
          WordOutcome r' o ∧ t1.ffi = s1.ffi := by
  intro wst
  let wst0 := { wst with code := sptFromAList (panToWordCompileProgHOL isa panCode) }
  have h := panToWord_clock s wst0 isa panCode start globalsSize heapLen Sc hSc hcrepB wconf ac
    col wprog hwtw hgc hstack
    ⟨hmem, hnolab, hstart, hsize, hparams, hmdomain, hshmdomain, hbe, hffi,
      by simpa [wst0, wst, WordToStack.Native.Initialization.makeInit, FDOMSUB_HOL] using hcurr,
      by simpa [wst0, wst, WordToStack.Native.Initialization.makeInit, FDOMSUB_HOL] using hheap,
      htop, hnodup, halign, halloc, hcode, rfl, hglobals, hlocals, heids, heshapes,
      by simp [wst0, wst, WordToStack.Native.Initialization.makeInit, sptLookup],
      good, hfail⟩
  have hw : ({ wst0 with code := sptFromAList wprog } :
      WordSemStateFiniteExact width (Nat × C) σ) = wst := by
    subst hwcode
    rfl
  rw [hw] at h
  rw [InitGlobals_location_eq_first_name]
  exact h

open StackToLab.Proofs.FullMakeInitSemantics in
/-- Clock-level `panToTargetPanToWordFromInit` (`AssemblyPanToWord.lean`), with the
`word_to_word` state facts of `panToTargetWordStateFacts`. -/
theorem panToWordFromInit_clock {C σ : Type}
    {stackConf : StackToLab.Config} {dataConf : DataToWord.Config} {maxHeap sp : Nat}
    {offset : BitVec width × BitVec width} {bitmaps : List (BitVec width)}
    {code : List (Nat × StackLang.HolProg width)} {t : LabSem.State width C σ}
    {saveRegs : Nat → Bool} {dataSp : Nat}
    {coracle : Nat → C × List (Nat × StackLang.HolProg width) × List (BitVec width)}
    {sst x : StackSemStateFiniteExact width C σ}
    (ac : AsmConfigExact width) (k : Nat) (wcode : Spt (Nat × WordLangProgHOL (BitVec width)))
    (worac : Nat → (Nat × C) × List (Nat × Nat × WordLangProgHOL (BitVec width)))
    (s : PanSemStateFiniteExact width σ) (isa : AsmArchitecture)
    (panCode : List (DeclHOL width)) (start : MlS) (globalsSize heapLen : Nat)
    (w3 w4 : BitVec width)
    (Sc : Nat) (hSc : 3 ≤ Sc) (hcrepB : ∀ e ∈ crepCodeOf panCode, csize e.2.2 ≤ Sc)
    (wconf : WordToWord.Config)
    (col : List (Option (Spt Nat))) (wprog : List (Nat × Nat × WordLangProgHOL (BitVec width)))
    (hwtw : WordToWord.compile wconf ac (panToWordCompileProgHOL isa panCode) = (col, wprog))
    (hwcode : wcode = sptFromAList wprog)
    (hA : Assumptions stackConf dataConf maxHeap sp offset bitmaps code t saveRegs dataSp coracle)
    (hfmi : StackToLab.Proofs.FullMakeInit.fullMakeInit stackConf dataConf maxHeap sp offset
      bitmaps code t saveRegs dataSp coracle = (sst, some x))
    (h2 : t.regs t.lenReg = .word s.baseAddr) (h3 : t.regs t.ptr2Reg = .word w3)
    (h4 : t.regs t.len2Reg = .word w4) (hlt : s.baseAddr < w3)
    (hlo : s.baseAddr + BitVec.ofNat width StackRemove.maxStackAlloc *
      StackRemove.bytesInWord width ≤ w3)
    (hhi : w3 ≤ w4 - BitVec.ofNat width StackRemove.maxStackAlloc *
      StackRemove.bytesInWord width)
    (hheap : (-1 * s.baseAddr + w3).toNat ≤ maxHeap * (StackRemove.bytesInWord width).toNat)
    (hheapLt : (StackRemove.bytesInWord width).toNat * maxHeap < 2 ^ width)
    (halign : holAligned (wordShiftAmount width + 1) (w3 + -1 * s.baseAddr) = true)
    (htmem : ∀ a, s.memaddrs a → t.memory a = wlabWlocExact (s.memory a))
    (htword : ∀ a, a.toNat % (width / 8) = 0 → ∃ w, t.memory a = .word w)
    (htsh : (fun a => t.sharedMemDomain a = true) = s.shMemaddrs)
    (htbe : t.be = s.be) (htffi : t.ffi = s.ffi)
    (hheapLen : heapLen = (w3 + -1 * s.baseAddr).toNat / (width / 8))
    (hglobLe : globalsSize ≤ heapLen)
    (hmemaddrs : s.memaddrs = StackRemove.addresses s.baseAddr (heapLen - globalsSize))
    (htop : s.topAddr = s.baseAddr + StackRemove.bytesInWord width * BitVec.ofNat width heapLen -
      BitVec.ofNat width (globalsSize * width / 8))
    (hstart : start = ofString "main")
    (hsize : globalsSize = ((decShapesHOL panCode).map
      (sizeOfShapeWithContextHOL (holThe (decsStcnamesHOLExact [] panCode)))).sum)
    (hparams : distinctParamsHOL (functionsHOL panCode))
    (hnodup : ((functionsHOL panCode).map Prod.fst).Nodup)
    (halloc : globalsAllocatableHOL s panCode) (hcode : s.code = HolFiniteMapExact.empty)
    (hglobals : s.globals = HolFiniteMapExact.empty)
    (hlocals : s.locals = HolFiniteMapExact.empty) (heids : sizeOfEidsHOL panCode < 2 ^ width)
    (heshapes : s.eshapes = HolFiniteMapExact.empty)
    (hfail : PanSemStateFiniteExact.semanticsDecls s start panCode ≠ .fail) :
    let wst := WordToStack.Native.Initialization.makeInit ac k sst wcode worac
    ∃ s0, panDeclsInit s panCode = some s0 ∧
      ∀ kk r s1 o, panRun s0 start kk = (r, s1) → SrcOutcome r o → s1.clock = 0 →
        ∃ kw r' t1, kw ≤ (Sc + 2) * (kk + 1) + 3 ∧
          wordRun wst BvlToBvi.initGlobalsLocation kw = (r', t1) ∧
          WordOutcome r' o ∧ t1.ffi = s1.ffi := by
  classical
  intro wst
  have good : goodDimindex width := hA.1
  have hd : 0 < width / 8 := by rcases good with h | h <;> subst h <;> decide
  -- init_code_thm's alignment of the heap base
  obtain ⟨t', v2, -, -, -, g2, -, -, a2, -⟩ := panToTargetInitCodeRun hA
  rw [h2] at g2; cases g2
  have hbase : s.baseAddr.toNat % (width / 8) = 0 :=
    (holByteAligned_iff_mod good _).1 a2
  -- the store
  obtain ⟨w2, g2', hcurr, hheapLW⟩ :=
    panToTargetWordInitStore (ac := ac) (k := k) (wcode := wcode) (worac := worac) hA hfmi
  rw [h2] at g2'; cases g2'
  rw [readPointers_s2 hA h2 h3 h4] at hheapLW
  have hsnd := panToTargetHeapLimitSnd good maxHeap s.baseAddr w3 w4 a2 hlt hlo hhi hheap
    hheapLt halign
  rw [BitVec.add_comm (-1 * s.baseAddr), ← hheapLen] at hsnd
  -- the memory domain
  have hmd := panToTargetWordInitMdomain (ac := ac) (k := k) (wcode := wcode) (worac := worac)
    s.baseAddr w3 w4 hA hfmi h2 h3 h4 hlo hhi hheap hheapLt halign
  rw [← hheapLen] at hmd
  have hmdP : (fun a => wst.mdomain a = true) = StackRemove.addresses s.baseAddr heapLen := by
    funext a; rw [hmd a, decide_eq_true_eq]
  obtain ⟨hffi, hbe, hsh, hmem⟩ := panToTargetWordInitMemory (ac := ac) (k := k)
    (wcode := wcode) (worac := worac) hA hfmi
  have hin : ∀ a, s.memaddrs a → wst.mdomain a = true := by
    intro a ha
    have : StackRemove.addresses s.baseAddr heapLen a := by
      rw [← addressesSplitGlobals good s.baseAddr heapLen globalsSize hglobLe]
      exact .inl (hmemaddrs ▸ ha)
    rw [← hmdP] at this; exact this
  -- byte_aligned s.top_addr
  have htopAl : panGlobalsByteAlignedHOL s.topAddr := by
    apply panGlobalsByteAligned_of_mod good
    rw [htop, good_dimindex_div_mul width globalsSize good]
    rw [BitVec.toNat_sub, BitVec.toNat_add, BitVec.toNat_mul, bytesInWord_toNat good]
    simp only [BitVec.toNat_ofNat]
    rcases good with h | h <;> subst h <;> simp at hbase ⊢ <;> omega
  -- the `word_to_word` state facts
  obtain ⟨hgcW, hstackW, -, -⟩ := panToTargetWordStateFacts ac k wcode worac stackConf dataConf
    maxHeap sp offset bitmaps code t saveRegs dataSp coracle sst x hfmi
  refine panToWordStage_clock ac k sst wcode worac s isa panCode start globalsSize
    (BitVec.ofNat width (StackRemove.Proofs.InitLimits.getStackHeapLimit maxHeap
      (s.baseAddr, w3, w4)).2 * StackRemove.bytesInWord width)
    Sc hSc hcrepB wconf col wprog hwtw hwcode hgcW hstackW
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ hstart hsize hparams ?_ hnodup htopAl halloc hcode hglobals hlocals
    heids heshapes good hfail
  · intro a ha
    exact (hmem a (hin a ha)).trans (htmem a ha)
  · intro a ha
    have hadr : StackRemove.addresses s.baseAddr heapLen a := by
      rw [← hmdP]; exact ha
    obtain ⟨w, hw⟩ := htword a (addresses_mod good s.baseAddr hbase heapLen a hadr)
    exact ⟨w, (hmem a ha).trans hw⟩
  · show (fun a => wst.mdomain a = true) = _
    rw [hmdP, ← addressesSplitGlobals good s.baseAddr heapLen globalsSize hglobLe, hmemaddrs,
      htop]
  · show (fun a => wst.shMdomain a = true) = _
    rw [hsh]; exact htsh
  · exact hbe.trans htbe
  · exact hffi.trans htffi
  · simpa [wst, WordToStack.Native.Initialization.makeInit, FDOMSUB_HOL] using hcurr
  · simpa [wst, WordToStack.Native.Initialization.makeInit, FDOMSUB_HOL] using hheapLW
  · rw [htop, good_dimindex_div_mul width globalsSize good]
    have e1 : (2 : BitVec width) * (BitVec.ofNat width (StackRemove.Proofs.InitLimits.getStackHeapLimit
        maxHeap (s.baseAddr, w3, w4)).2 * StackRemove.bytesInWord width) =
        StackRemove.bytesInWord width * BitVec.ofNat width heapLen := by
      rw [← hsnd, BitVec.ofNat_mul, BitVec.mul_comm (StackRemove.bytesInWord width),
        ← BitVec.mul_assoc]
      rfl
    have e2 : BitVec.ofNat width (globalsSize * (width / 8)) =
        panBytesInWord width * BitVec.ofNat width globalsSize := by
      rw [BitVec.ofNat_mul, BitVec.mul_comm]; rfl
    rw [e1, e2]

open Classical StackToLab.Proofs.FullMakeInitSemantics in
/-- Clock-level `panToTargetPanToWordStageLab` (`AssemblyPanToWord.lean`): the pan_to_word stage
on the initial lab state `labst`, every lab-state fact derived from `pan_installed`'s
components. -/
theorem panToWordStageLab_clock {S Q C σ : Type}
    {stackConf : StackToLab.Config} {dataConf : DataToWord.Config} {maxHeap sp : Nat}
    {offset : BitVec width × BitVec width} {bitmaps : List (BitVec width)}
    {code : List (Nat × StackLang.HolProg width)} {saveRegs : Nat → Bool} {dataSp : Nat}
    {coracle : Nat → C × List (Nat × StackLang.HolProg width) × List (BitVec width)}
    {sst x : StackSemStateFiniteExact width C σ}
    (mc : MachineConfig width S Q) (ffi : HolFfiState σ) (tAsm : AsmState width)
    (m : BitVec width → WordLocW width) (dm dm' sdm : BitVec width → Bool) (ms : S)
    (lcode : LabSem.LabProgHOL width)
    (comp : C → LabSem.LabProgHOL width → Option (List (BitVec 8) × C))
    (cbpos : BitVec width) (cbspace : Nat) (lorac : Nat → C × LabSem.LabProgHOL width)
    (bytes : List (BitVec 8))
    (ac : AsmConfigExact width) (k : Nat) (wcode : Spt (Nat × WordLangProgHOL (BitVec width)))
    (worac : Nat → (Nat × C) × List (Nat × Nat × WordLangProgHOL (BitVec width)))
    (s : PanSemStateFiniteExact width σ) (isa : AsmArchitecture)
    (panCode : List (DeclHOL width)) (start : MlS) (globalsSize heapLen : Nat)
    (Sc : Nat) (hSc : 3 ≤ Sc) (hcrepB : ∀ e ∈ crepCodeOf panCode, csize e.2.2 ≤ Sc)
    (wconf : WordToWord.Config)
    (col : List (Option (Spt Nat))) (wprog : List (Nat × Nat × WordLangProgHOL (BitVec width)))
    (hwtw : WordToWord.compile wconf ac (panToWordCompileProgHOL isa panCode) = (col, wprog))
    (hwcode : wcode = sptFromAList wprog)
    (hA : Assumptions stackConf dataConf maxHeap sp offset bitmaps code
      (LabToTarget.makeInit (C := C) mc ffi tAsm m (fun a => dm a && holByteAligned a)
        (fun a => sdm a && holByteAligned a) ms lcode comp cbpos cbspace lorac)
      saveRegs dataSp coracle)
    (hfmi : StackToLab.Proofs.FullMakeInit.fullMakeInit stackConf dataConf maxHeap sp offset
      bitmaps code
      (LabToTarget.makeInit (C := C) mc ffi tAsm m (fun a => dm a && holByteAligned a)
        (fun a => sdm a && holByteAligned a) ms lcode comp cbpos cbspace lorac)
      saveRegs dataSp coracle = (sst, some x))
    (hmc : LabToTarget.mcConfOk mc)
    (hpm : ∀ a, decide (s.memaddrs a) = true → m a = wlabWlocExact (s.memory a))
    (hgi : goodInitState mc ms bytes cbspace tAsm m dm' sdm)
    (hsdm : (fun a => decide (s.shMemaddrs a)) = fun a => sdm a && holByteAligned a)
    (hbase : mc.target.getReg ms mc.lenReg = s.baseAddr)
    (hlt : mc.target.getReg ms mc.lenReg < mc.target.getReg ms mc.ptr2Reg)
    (hlo : mc.target.getReg ms mc.lenReg +
      StackRemove.bytesInWord width * BitVec.ofNat width StackRemove.maxStackAlloc ≤
        mc.target.getReg ms mc.ptr2Reg)
    (hhi : mc.target.getReg ms mc.ptr2Reg ≤ mc.target.getReg ms mc.len2Reg -
      StackRemove.bytesInWord width * BitVec.ofNat width StackRemove.maxStackAlloc)
    (hheap : (mc.target.getReg ms mc.ptr2Reg + -1 * mc.target.getReg ms mc.lenReg).toNat ≤
      (StackRemove.bytesInWord width).toNat * maxHeap)
    (hheapLt : (StackRemove.bytesInWord width).toNat * maxHeap < 2 ^ width)
    (halign : holAligned (wordShiftAmount width + 1)
      (mc.target.getReg ms mc.ptr2Reg + -1 * mc.target.getReg ms mc.lenReg) = true)
    (hbe : mc.target.config.bigEndian = s.be) (hffi : s.ffi = ffi)
    (hheapLen : heapLen = (mc.target.getReg ms mc.ptr2Reg + -1 * s.baseAddr).toNat / (width / 8))
    (hglobLe : globalsSize ≤ heapLen)
    (hmemaddrs : s.memaddrs =
      StackRemove.addresses (mc.target.getReg ms mc.lenReg) (heapLen - globalsSize))
    (htop : s.topAddr = s.baseAddr + StackRemove.bytesInWord width * BitVec.ofNat width heapLen -
      BitVec.ofNat width (globalsSize * width / 8))
    (hstart : start = ofString "main")
    (hsize : globalsSize = ((decShapesHOL panCode).map
      (sizeOfShapeWithContextHOL (holThe (decsStcnamesHOLExact [] panCode)))).sum)
    (hparams : distinctParamsHOL (functionsHOL panCode))
    (hnodup : ((functionsHOL panCode).map Prod.fst).Nodup)
    (halloc : globalsAllocatableHOL s panCode) (hcode : s.code = HolFiniteMapExact.empty)
    (hglobals : s.globals = HolFiniteMapExact.empty)
    (hlocals : s.locals = HolFiniteMapExact.empty) (heids : sizeOfEidsHOL panCode < 2 ^ width)
    (heshapes : s.eshapes = HolFiniteMapExact.empty)
    (hfail : PanSemStateFiniteExact.semanticsDecls s start panCode ≠ .fail) :
    let wst := WordToStack.Native.Initialization.makeInit ac k sst wcode worac
    ∃ s0, panDeclsInit s panCode = some s0 ∧
      ∀ kk r s1 o, panRun s0 start kk = (r, s1) → SrcOutcome r o → s1.clock = 0 →
        ∃ kw r' t1, kw ≤ (Sc + 2) * (kk + 1) + 3 ∧
          wordRun wst BvlToBvi.initGlobalsLocation kw = (r', t1) ∧
          WordOutcome r' o ∧ t1.ffi = s1.ffi := by
  have good : goodDimindex width := hmc.1
  have hregs := hgi.1.2.2.2.1
  have hreg : ∀ r, asmRegOkExact r mc.target.config = true →
      tAsm.regs r = mc.target.getReg ms r := by
    intro r hr
    simp only [asmRegOkExact, Bool.and_eq_true, decide_eq_true_eq, Bool.not_eq_true'] at hr
    exact (hregs r hr).symm
  have r2 := hreg _ hmc.2.2.2.1
  have r3 := hreg _ hmc.2.2.2.2.1
  have r4 := hreg _ hmc.2.2.2.2.2.1
  have hmword := hgi.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  refine panToWordFromInit_clock ac k wcode worac s isa panCode start globalsSize heapLen
    (mc.target.getReg ms mc.ptr2Reg) (mc.target.getReg ms mc.len2Reg) Sc hSc hcrepB wconf col
    wprog hwtw hwcode hA hfmi
    ?_ ?_ ?_ (hbase ▸ hlt) ?_ ?_ ?_ hheapLt (hbase ▸ halign) ?_ ?_ ?_ ?_ ?_ hheapLen hglobLe
    (hbase ▸ hmemaddrs) htop hstart hsize hparams hnodup halloc hcode hglobals hlocals heids
    heshapes hfail
  · simp [LabToTarget.makeInit, r2, hbase]
  · simp [LabToTarget.makeInit, r3]
  · simp [LabToTarget.makeInit, r4]
  · rw [← hbase, BitVec.mul_comm]; exact hlo
  · rw [BitVec.mul_comm]; exact hhi
  · rw [← hbase, BitVec.add_comm, Nat.mul_comm]; exact hheap
  · intro a ha
    exact hpm a (decide_eq_true ha)
  · intro a ha
    obtain ⟨w, -, hw⟩ := hmword a
    rw [Compiler.Backend.LabToTarget.holByteAlign_of_aligned good a ha] at hw
    exact ⟨w, hw⟩
  · funext a
    have := congrFun hsdm a
    simp only [LabToTarget.makeInit] at this ⊢
    rw [← this, decide_eq_true_eq]
  · exact hbe
  · exact hffi.symm

end Wrappers

end InitECandidate.Solver.Assembly
