import InitECandidate.Solver.Compiler.FrontEnd.PanSimp
import InitECandidate.Solver.Compiler.FrontEnd.PanStructs
import InitECandidate.Solver.Compiler.FrontEnd.PanGlobals
import InitECandidate.Solver.Compiler.FrontEnd.PanToCrep
import Flapjack.Pancake.Proofs.PanToWord.StateRelImpSemantics
import Flapjack.Pancake.PanToTarget.MainFirstSemantics

/-!
# Chain (a): Pancake source → Crep (the input of `crep_to_loop`), clock level

The first four stages of Flapjack's `panToWordStateRelImpSemantics`
(`Pancake/Proofs/PanToWord/StateRelImpSemantics.lean`, via `InitialComposition`):
`pan_simp` (`+0`), `pan_structs` (`+0`), `pan_globals` (`+1`), `pan_to_crep` with `crep_inline`
(`+0`), over the same source state, globals state `globalState` and Crep state
`crepStateHOL globalState panCode globalState.memory` as the baseline chain.

`frontEnd_chainA`: under the baseline's hypotheses (the front-end subset of the 24 conjuncts of
`panToWordStateRelImpSemantics`), the source declarations produce `s0` with
`semanticsDecls source start code = semantics s0 start`, and every source entry run from `s0` at
clock `k` whose result `r` is neither `Error` nor `TimeOut` is matched by the Crep entry run
(`crepRun`, the run family of `crepSemantics`) at clock `k + 1`, with result related to `r` by
`panCrepRes (convertResHOL r)` and the **same final clock and FFI state**.
-/

namespace InitECandidate.Solver.Compiler.FrontEnd

open Flapjack Flapjack.Pancake.PanLang Flapjack.Basis.Pure.MlString

set_option autoImplicit false

variable {width : Nat} {σ : Type} [NeZero width]

/-- The baseline compiles `mainFirstHOL decls` (`panToTargetCompileSemanticsOraclesRiscVSource`);
when `decls` has a `main` function its declarations produce the same post-declaration state, so
the source run family of `semanticsDecls s start decls` is that of `mainFirstHOL decls`
(the per-clock content of `semanticsDecls_mainFirstHOL`). -/
theorem panDeclsInit_mainFirstHOL (s : PanSemStateFiniteExact width σ)
    (program : List (DeclHOL width))
    (hasMain : ∃ fi : FunDeclHOL width, .function fi ∈ program ∧ fi.name = ofString "main") :
    panDeclsInit s (Pancake.PanToTarget.mainFirstHOL program) = panDeclsInit s program := by
  obtain ⟨before, fi, rest, rfl, distinct, moved⟩ :=
    Pancake.PanToTarget.mainFirstHOL_of_main program hasMain
  rw [moved]
  unfold panDeclsInit
  have structsSame : decsStcnamesHOLExact (width := width) [] (.function fi :: (before ++ rest)) =
      decsStcnamesHOLExact [] (before ++ .function fi :: rest) := by
    rw [Pancake.PanToTarget.decsStcnamesHOLExact_dropFunction]
    simp only [decsStcnamesHOLExact]
  rw [structsSame]
  split
  · rfl
  · rw [Pancake.PanToTarget.evaluateDeclsHOLFinite_moveFunction fi rest before distinct]

/-- **Chain (a), Pan → Crep.** Offset `+1` (the `pan_globals` entry), equal final clocks. -/
theorem frontEnd_chainA {C : Type} (source : PanSemStateFiniteExact width σ)
    (target : WordSemStateFiniteExact width C σ) (code : List (DeclHOL width)) (start : MlS)
    (globalsSize : Nat)
    (hfail : PanSemStateFiniteExact.semanticsDecls source start code ≠ .fail)
    (hdist : ((functionsHOL code).map Prod.fst).Nodup)
    (hcode : source.code = HolFiniteMapExact.empty)
    (hlocals : source.locals = HolFiniteMapExact.empty)
    (hglobals : source.globals = HolFiniteMapExact.empty)
    (heshapes : source.eshapes = HolFiniteMapExact.empty)
    (hsize : globalsSize = ((decShapesHOL code).map
      (sizeOfShapeWithContextHOL (holThe (decsStcnamesHOLExact [] code)))).sum)
    (halloc : globalsAllocatableHOL source code)
    (halign : panGlobalsByteAlignedHOL source.topAddr) (hdim : goodDimindex width)
    (hmem : ∀ address, source.memaddrs address →
      target.memory address = wlabWlocExact (source.memory address))
    (heids : sizeOfEidsHOL code < 2 ^ width) :
    let structCode := Pancake.PanStructs.CompileShapeExact.compileTopExact (panSimpDeclsHOL code)
    let panCode := compileTopExactHOL structCode start
    let globalState : PanSemStateFiniteExact width σ :=
      { source with
        topAddr := source.topAddr + panBytesInWord width * BitVec.ofNat width globalsSize
        memaddrs := fun address => source.memaddrs address ∨
          Compiler.Backend.StackRemove.addresses source.topAddr globalsSize address
        memory := wlocWlabHOL ∘ target.memory
        locals := source.locals }
    let crepState := crepStateHOL globalState panCode globalState.memory
    ∃ s0, panDeclsInit source code = some s0 ∧
      PanSemStateFiniteExact.semanticsDecls source start code =
        PanSemStateFiniteExact.semantics s0 start ∧
      ∀ k r s1, panRun s0 start k = (r, s1) → PanTerminates r →
        ∃ r' t1, crepRun crepState start (k + 1) = (r', t1) ∧ panCrepRes (convertResHOL r) r' ∧
          t1.clock = s1.clock ∧ t1.ffi = s1.ffi := by
  classical
  intro structCode panCode globalState crepState
  -- the source declarations succeed
  have hsd := semanticsDecls_eq_panDeclsInit source start code
  obtain ⟨s0, hs0⟩ : ∃ s0, panDeclsInit source code = some s0 := by
    cases h : panDeclsInit source code with
    | none => rw [h] at hsd; exact absurd hsd hfail
    | some s0 => exact ⟨s0, rfl⟩
  refine ⟨s0, hs0, by rw [hsd, hs0], ?_⟩
  -- non-`Fail` of the intermediate declaration semantics (as in Flapjack's composition)
  have hrel0 : PanSimp.stateRel source source source.code := by
    refine ⟨?_, (fun _ h => h), ?_⟩
    · cases source; rfl
    · intro f vs p sh he; simp [hcode, HolFiniteMapExact.empty] at he
  have hsimp := PanSimp.stateRelImpSemanticsDeclsHOL source source code start
    ⟨hrel0, hdist, hcode, hcode, hfail⟩
  have hsimpnf : PanSemStateFiniteExact.semanticsDecls source start (panSimpDeclsHOL code) ≠
      .fail := by rw [← hsimp]; exact hfail
  have hm : source.eshapes.map2 (fun entry =>
      Pancake.PanStructs.CompileShapeExact.compileShapeExact
        (Pancake.PanStructs.CompileShapeExact.getNamesExact
          { structs := [], locals := [], globals := [] } (panSimpDeclsHOL code)).structs entry.2) =
        source.eshapes := by
    rw [heshapes]; apply HolFiniteMapExact.ext; rfl
  have hstructeq := Pancake.Proofs.PanStructs.CompileTopSemanticsDeclsExact.compileTopSemanticsDeclsExact
    source start (panSimpDeclsHOL code) ⟨hsimpnf, hlocals, hcode, hglobals⟩
  rw [hm] at hstructeq
  have hstructnf : PanSemStateFiniteExact.semanticsDecls source start structCode ≠ .fail := by
    rw [← hstructeq]; exact hsimpnf
  have hdiststruct : ((functionsHOL structCode).map Prod.fst).Nodup := by
    dsimp only [structCode]
    rw [functionNamesStructsCompileTopHOL, functionNamesCompileProgHOL]; exact hdist
  -- `pan_simp` and `pan_structs`
  have h1 := panSimp_lockStep_self source code start hcode hdist
  have h2 := panStructs_lockStep source start (panSimpDeclsHOL code) hlocals hcode hglobals
  have hsrc : ({ source with eshapes := source.eshapes.map2 (fun entry =>
      Pancake.PanStructs.CompileShapeExact.compileShapeExact
        (Pancake.PanStructs.CompileShapeExact.getNamesExact
          { structs := [], locals := [], globals := [] } (panSimpDeclsHOL code)).structs entry.2) } :
      PanSemStateFiniteExact width σ) = source := by
    rw [hm]
  rw [hsrc] at h2
  -- `pan_globals` (hypotheses as in `InitialComposition.initialToGlobalsSemantics`)
  have hsizelist := semanticsSizeDecsStcnamesCompileStructsHOL source start (panSimpDeclsHOL code)
    ⟨hsimpnf, hglobals⟩
  have hsizecompiled : ((decShapesHOL structCode).map sizeOfShapeHOL).sum = globalsSize := by
    dsimp only [structCode]
    rw [hsizelist, decShapesCompileProgHOL, decsStcnamesHOLExact_panSimpDeclsHOL_eq]
    exact hsize.symm
  have halloc' := halloc
  dsimp only [globalsAllocatableHOL] at halloc'
  rw [← hsize] at halloc'
  obtain ⟨_, hdisjoint, htopnot, hbound⟩ := halloc'
  have hmemory : ∀ address, source.memaddrs address →
      source.memory address = (wlocWlabHOL ∘ target.memory) address := by
    intro address ha
    simp only [Function.comp_apply, hmem address ha, wlocWlabWlabWlocHOL]
  have h3 := panGlobals_lockStep source globalState structCode start
    (panBytesInWord width * BitVec.ofNat width globalsSize)
    (Compiler.Backend.StackRemove.addresses source.topAddr globalsSize)
    (wlocWlabHOL ∘ target.memory) source.locals
    ⟨hdiststruct, rfl, hcode, hglobals, halign, hdim,
      (by rw [hsizecompiled]), (by rw [hsizecompiled]),
      (fun address hs hf => hdisjoint address ⟨hs, hf⟩), hmemory,
      htopnot, (by simpa [hsizecompiled, panBytesInWord,
        Compiler.Backend.StackRemove.bytesInWord, Nat.mul_comm] using hbound),
      Pancake.PanStructs.CompileShapeExact.compileTopNoNames _, hstructnf⟩
  have h123 := (h1.trans panResMapOk_id h2).trans panResMapOk_convertResHOL h3
  obtain ⟨g0, hg0, hstep⟩ := h123 s0 hs0
  -- `pan_to_crep` with `crep_inline` (hypotheses as in `panToWordStateRelImpSemantics`)
  obtain ⟨mainBody, mainShape, hmain⟩ := semanticsDeclsHasMainPanToWordHOL source start
    structCode ⟨hcode, hdiststruct, hstructnf⟩
  have hpanSize : sizeOfEidsHOL panCode < 2 ^ width := by
    dsimp only [panCode]
    rw [sizeOfEidsCompileTopHOL structCode start [] mainBody mainShape hmain]
    dsimp only [structCode]
    rw [sizeOfEidsStructsCompileEqHOL, sizeOfEidsHOL_panSimpDeclsHOL_eq]
    exact heids
  have h4 := panToCrep_lockStep globalState crepState panCode start
    (by simp [panToCrepStateRelFiniteExact, crepState, crepStateHOL,
          globalState, hglobals, HolFiniteMapExact.empty])
    (allDistinctCompileTopHOL start structCode hdiststruct)
    hcode rfl hlocals heshapes (compileTopLocalisedHOL structCode start)
    (by apply List.all_eq_true.mpr
        intro d hd
        rcases PanGlobalsCompileDecsStructural.compile_top_only_functions_or_exnsHOL structCode
          start d hd with h | h <;> simp [h])
    hpanSize g0 hg0
  exact PanRunStep.trans_crep hstep (fun r hr => panResMapOk_convertResHOL r hr) h4

/-- **Chain (a) from the minimal run.** By Pan `evaluate_clock_sub` (`pan_min_clock`) a
terminating source run at clock `k` with final clock `s1.clock` is the run at clock
`k - s1.clock` with final clock `0`; the Crep entry run at `k - s1.clock + 1` then ends with
clock `0`, the related result and the same FFI state. So the Crep run consumes exactly one tick
more than the source run, and starts from a run with no clock left over (as `crep_to_loop` and
`loop_to_word` need for the `FinalFFI` case, see `frontEnd_chainB_min`). -/
theorem panCrep_min {s0 : PanSemStateFiniteExact width σ} {start : MlS}
    {crepState : CrepSemHOLState width σ} {start' : MlS}
    (h : ∀ k r s1, panRun s0 start k = (r, s1) → PanTerminates r →
      ∃ r' t1, crepRun crepState start' (k + 1) = (r', t1) ∧ panCrepRes (convertResHOL r) r' ∧
        t1.clock = s1.clock ∧ t1.ffi = s1.ffi)
    (k : Nat) (r : Option (PanSemResultExact width)) (s1 : PanSemStateFiniteExact width σ)
    (hrun : panRun s0 start k = (r, s1)) (hr : PanTerminates r) :
    panRun s0 start (k - s1.clock) = (r, { s1 with clock := 0 }) ∧
    ∃ r' t1, crepRun crepState start' (k - s1.clock + 1) = (r', t1) ∧
      panCrepRes (convertResHOL r) r' ∧ t1.clock = 0 ∧ t1.ffi = s1.ffi := by
  have hmin := pan_min_clock (.call none start []) s0 k r s1 hrun hr.2
  obtain ⟨r', t1, ht, hrel, hc, hf⟩ := h (k - s1.clock) r { s1 with clock := 0 } hmin hr
  exact ⟨hmin, r', t1, ht, hrel, hc, hf⟩

end InitECandidate.Solver.Compiler.FrontEnd
