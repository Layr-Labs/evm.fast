import InitECandidate.Solver.Compiler.CrepToLoop.Assembly
import InitECandidate.Solver.Compiler.CrepToLoop.Simp
import Flapjack.Pancake.CrepToLoop.Proofs.StateRelImpSemantics
import Batteries.Tactic.OpenPrivate

/-!
# Bounded crep → loop entry simulation, at the `semantics_wrapper_eq` level

Flapjack connects crep → loop into the chain by `crepToLoopStateRelImpSemantics`
(`CrepToLoop/Proofs/StateRelImpSemantics.lean`), which applies `crepToLoopSemanticsWrapper_eq`
to the clock-indexed entry runs `absf k` (crep `Call NONE start []` from clock `k`) and
`concf k` (loop `Call NONE (SOME lc) [] NONE` from clock `k`). Its per-clock premise
`∀ k r ev, absf k = (r, ev) → r ≠ RunError → ∃ k', concf (k + k') = (r, ev)` is supplied by
`code_rel_evaluate_call_correct`. Here both are bounded:

* `codeRelEvaluateCallCorrect_bounded`: Flapjack's `crepToLoopCodeRelEvaluateCallCorrect`
  (same premises and conclusion) under `3 ≤ S` and "every `crep_arith`-simplified body of
  `s_code` has `csize ≤ S`", with `k ≤ (S + 1) * (s.clock - s'.clock) + 3`.
* `crepToLoop_perClock_bounded`: under the premises of `crepToLoopStateRelImpSemantics` plus
  `3 ≤ S` and `∀ e ∈ crep_code, csize (crepSimpProgHOL e.2.2) ≤ S`, the per-clock premise
  holds with `k' ≤ (S + 1) * (k - s_k.clock) + 3`, where `s_k` is the final crep state of
  `absf k`'s run.
* `crepToLoop_perClock_bounded_of_code`: the same with the bound on the original bodies,
  `∀ e ∈ crep_code, csize e.2.2 ≤ S` (`csize_simp`: simplification never increases `csize`).
* `crepAbsf_wrapper`, `loopConcf_wrapper`: `crepAbsf`/`loopConcf` are exactly the families
  whose `crepToLoopSemanticsWrapper` is `crepSemantics s start` / `LoopSemStateFiniteExact.semantics t lc`.
-/

namespace InitECandidate.Solver.Compiler.CrepToLoop

open Flapjack Flapjack.Pancake.CrepToLoop.Proofs.NCompileCorrect
open Flapjack.Basis.Pure.MlString Flapjack.Compiler.Encoders.Asm

set_option autoImplicit false

open private crepSimpProgHOL_call_none_nil compileHOLExact_call_none_nil
  from Flapjack.Pancake.CrepToLoop.Proofs.CodeRelEvaluateCallCorrect

section
variable {width : Nat} [NeZero width] {σ : Type}

theorem fupdateList_some {α β : Type} [BEq α] [LawfulBEq α] :
    ∀ (entries : List (α × β)) (f : FiniteMap α β) (key : α) (v : β),
      FUPDATE_LIST f entries key = some v → f key = some v ∨ (key, v) ∈ entries
  | [], f, key, v, h => Or.inl (by simpa [FUPDATE_LIST] using h)
  | e :: es, f, key, v, h => by
      have h' : FUPDATE_LIST (FUPDATE f e) es key = some v := by
        simpa [FUPDATE_LIST, List.foldl_cons] using h
      rcases fupdateList_some es _ key v h' with h1 | h1
      · simp only [FUPDATE] at h1
        split at h1
        · rename_i hk
          have hk' : e.1 = key := beq_iff_eq.mp hk
          simp only [Option.some.injEq] at h1
          right
          rw [← hk', ← h1]
          exact List.mem_cons_self
        · exact Or.inl h1
      · exact Or.inr (List.mem_cons_of_mem _ h1)

theorem alistToFmapCodeExact_lookup_mem
    (crep_code : List (MlString × List Nat × CrepProgHOL width)) (f : MlString)
    (ns : List Nat) (p : CrepProgHOL width)
    (h : (alistToFmapCodeExact crep_code).lookup f = some (ns, p)) :
    (f, ns, p) ∈ crep_code := by
  have h' : FUPDATE_LIST (HolFiniteMapExact.empty.lookup) crep_code.reverse f = some (ns, p) := h
  rcases fupdateList_some _ _ f (ns, p) h' with h1 | h1
  · simp [HolFiniteMapExact.empty] at h1
  · exact List.mem_reverse.mp h1

/-- The code bound for the `crep_arith`-simplified code table. -/
theorem codeBoundedC_simp (S : Nat) (s : CrepSemHOLState width σ)
    (h : ∀ f ns p, s.code.lookup f = some (ns, p) → csize (crepSimpProgHOL p) ≤ S) :
    CodeBoundedC S (crepSimpMapcsHOL s) := by
  intro f ns p hl
  simp only [crepSimpMapcsHOL, HolFiniteMapExact.lookup_map2] at hl
  cases hc : s.code.lookup f with
  | none => rw [hc] at hl; simp at hl
  | some v =>
    rw [hc] at hl
    simp only [Option.map_some, Option.some.injEq, Prod.mk.injEq] at hl
    obtain ⟨_, rfl⟩ := hl
    exact h f v.1 v.2 hc

/-- Bounded `code_rel_evaluate_call_correct`. -/
theorem codeRelEvaluateCallCorrect_bounded (S : Nat) (hS : 3 ≤ S)
    (nctxt : CrepToLoopContextExact)
    (s_code : HolFiniteMapExact MlString (List Nat × CrepProgHOL width))
    (t_code : Spt (List Nat × HolLoopProg width))
    (start : MlString) (s : CrepSemHOLState width σ)
    (res : Option (CrepResultHOLExact width)) (s' : CrepSemHOLState width σ)
    (t : LoopSemStateFiniteExact width σ)
    (crep_code : List (MlString × List Nat × CrepProgHOL width)) (lc : Nat)
    (prog : CrepProgHOL width)
    (hbody : ∀ f ns p, s_code.lookup f = some (ns, p) → csize (crepSimpProgHOL p) ≤ S) :
    crepToLoopCodeRel2Exact nctxt s_code t_code →
    evalCrepSemHOLProgExact s (.call none start []) = (res, s') →
    s.be = t.be ∧ s.shMemaddrs = (fun address => t.shMdomain address = true) ∧
      s.memaddrs = (fun address => t.mdomain address = true) ∧ s.clock = t.clock ∧
      s.ffi = t.ffi ∧ s.baseAddr = t.baseAddr ∧ s.topAddr = t.topAddr ∧
      crepToLoopMemRelHOLExact s.memory t.memory s.memaddrs ∧
      crepToLoopGlobalsRelHOLExact s.globals t.globals ∧
      s.locals = HolFiniteMapExact.empty ∧
      s.code = s_code ∧ t.code = t_code →
    (crepToLoopMakeFuncsExactHOL crep_code).lookup start =
      some (findLabExact nctxt start, 0) →
    findLabExact nctxt start = lc ∧
      s.code = alistToFmapCodeExact crep_code ∧
      nctxt.funcs = crepToLoopMakeFuncsExactHOL crep_code ∧
      holAlookup crep_code start = some ([], prog) ∧
      crepToLoopDistinctVarsExact nctxt.vars ∧
      crepToLoopCtxtMaxExact nctxt.vmax nctxt.vars →
    res ≠ some .error →
    ∃ (k : Nat) (res' : Option (LoopSemStateFiniteExact.LoopResultExact width))
      (t' : LoopSemStateFiniteExact width σ),
      LoopSemStateFiniteExact.evaluate
          (.call none (some (findLabExact nctxt start)) [] none)
          { t with clock := t.clock + k } = (res', t') ∧
      crepToLoopStateRelExact s' t' ∧
      res' = resultToLoop res ∧
      k ≤ (S + 1) * (s.clock - s'.clock) + 3 := by
  intro hcode2 he ⟨hbe, hsh, hmd, hclk, hffi, hbase, htop, hmem, hglob, hloc, hsc, htc⟩
    _hmf ⟨_hlc, _halist, _hfuncs, _halookup, hdistinct, hmax⟩ hne
  have hsimp := crepArithSimpProgCorrect (.call none start []) s res s' he hne
  rw [crepSimpProgHOL_call_none_nil] at hsimp
  have hcodeRel : crepToLoopCodeRelExact nctxt (crepSimpMapcsHOL s).code t.code := by
    have h : crepToLoopCodeRelExact nctxt
        (s_code.map2 (fun entry =>
          match entry with
          | (_, parameters, program) => (parameters, crepSimpProgHOL program))) t_code :=
      hcode2
    rw [← hsc, ← htc] at h
    exact h
  have hlocals : crepToLoopLocalsRelExact nctxt .ln (crepSimpMapcsHOL s).locals t.locals := by
    refine ⟨hdistinct, hmax, ?_, ?_⟩
    · intro n hn
      simp [sptMem, sptDomain, sptLookup] at hn
    · intro vname value hlookup
      change s.locals.lookup vname = some value at hlookup
      rw [hloc] at hlookup
      simp [HolFiniteMapExact.empty] at hlookup
  have hstate : crepToLoopStateRelExact (crepSimpMapcsHOL s) t :=
    ⟨hmd, hsh, hclk, hbe, hffi, hbase, htop⟩
  have hcb : CodeBoundedC S (crepSimpMapcsHOL s) :=
    codeBoundedC_simp S s (fun f ns p hl => hbody f ns p (hsc ▸ hl))
  obtain ⟨ck, res1, t1, hrun, hstate', _, _, _, hres, _, hb⟩ :=
    crepToLoop_ncompile_correct_bounded S (.call none start []) (crepSimpMapcsHOL s) res
      (crepSimpMapcsHOL s') t nctxt .ln (by simp [csize, esizeL]; omega) hcb
      ⟨hsimp, hne, hstate, hmem, hglob, hcodeRel, hlocals⟩
  rw [compileHOLExact_call_none_nil, LoopSemStateFiniteExact.evaluate_Seq_Skip] at hrun
  refine ⟨ck, res1, t1, hrun, hstate', hres, ?_⟩
  simpa [crepSimpMapcsHOL, csize, esizeL] using hb

/-- The crep result classification of `crep_sem_is_wrapper`. -/
def crepEntryClassB : Option (CrepResultHOLExact width) → CrepToLoopSemanticsRunRes HolOutcome
  | some .timeOut => .Incomplete
  | some (.finalFfi e) => .CompleteResult (HolOutcome.ffiOutcome e)
  | some (.return _) => .CompleteResult HolOutcome.success
  | _ => .RunError

/-- The loop result classification of `loop_sem_is_wrapper`. -/
def loopEntryClassB :
    Option (LoopSemStateFiniteExact.LoopResultExact width) → CrepToLoopSemanticsRunRes HolOutcome
  | some .timeOut => .Incomplete
  | some (.finalFfi e) => .CompleteResult (HolOutcome.ffiOutcome e)
  | some (.result _) => .CompleteResult HolOutcome.success
  | _ => .RunError

theorem loopEntryClassB_resultToLoop (r : Option (CrepResultHOLExact width)) :
    loopEntryClassB (resultToLoop r) = crepEntryClassB r := by
  rcases r with _ | r
  · rfl
  · cases r <;> rfl

/-- The crep clock-indexed entry family (`absf` of `crepToLoopStateRelImpSemantics`). -/
noncomputable def crepAbsf (s : CrepSemHOLState width σ) (start : MlString) :
    Nat → CrepToLoopSemanticsRunRes HolOutcome × List HolIoEvent :=
  (Prod.map crepEntryClassB (fun st : CrepSemHOLState width σ => st.ffi.ioEvents)) ∘
    (fun k => evalCrepSemHOLProgExact { s with clock := k } (.call none start []))

/-- The loop clock-indexed entry family (`concf` of `crepToLoopStateRelImpSemantics`). -/
def loopConcf (t : LoopSemStateFiniteExact width σ) (lc : Nat) :
    Nat → CrepToLoopSemanticsRunRes HolOutcome × List HolIoEvent :=
  (Prod.map loopEntryClassB (fun st : LoopSemStateFiniteExact width σ => st.ffi.ioEvents)) ∘
    (fun k => LoopSemStateFiniteExact.evaluate
      (.call none (some lc) [] none : HolLoopProg width) { t with clock := k })

theorem crepAbsf_wrapper (s : CrepSemHOLState width σ) (start : MlString) :
    crepSemantics s start = crepToLoopSemanticsWrapper (crepAbsf s start) := by
  rw [crepSemIsWrapper]; rfl

theorem loopConcf_wrapper (t : LoopSemStateFiniteExact width σ) (lc : Nat) :
    LoopSemStateFiniteExact.semantics t lc = crepToLoopSemanticsWrapper (loopConcf t lc) := by
  rw [loopSemIsWrapper]; rfl

/-- **Bounded per-clock premise of `crepToLoopSemanticsWrapper_eq`.** Under the premises
of Flapjack's `crepToLoopStateRelImpSemantics`, plus `3 ≤ S` and a bound `S` on the
`csize` of every `crep_arith`-simplified body, every non-`RunError` crep entry run from clock
`k` is matched by the loop entry run from clock `k + k'` with
`k' ≤ (S + 1) * (k - s_k.clock) + 3`, `s_k` the final state of the crep run. -/
theorem crepToLoop_perClock_bounded (S : Nat) (hS : 3 ≤ S)
    (s : CrepSemHOLState width σ) (t : LoopSemStateFiniteExact width σ)
    (crep_code : List (MlString × List Nat × CrepProgHOL width))
    (start : MlString) (lc : Nat) (c : AsmArchitecture)
    (hbody : ∀ e ∈ crep_code, csize (crepSimpProgHOL e.2.2) ≤ S)
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
    ∀ k r ev, crepAbsf s start k = (r, ev) → r ≠ .RunError →
      ∃ k', k' ≤ (S + 1) *
          (k - (evalCrepSemHOLProgExact { s with clock := k } (.call none start [])).2.clock) + 3 ∧
        loopConcf t lc (k + k') = (r, ev) := by
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
    exact hbody _ (alistToFmapCodeExact_lookup_mem crep_code f ns p hl)
  intro k r ev habs hr
  rcases hev : evalCrepSemHOLProgExact { s with clock := k } (.call none start [])
    with ⟨res, s1⟩
  have habs' : (crepEntryClassB res, s1.ffi.ioEvents) = (r, ev) := by
    have h := habs
    simp only [crepAbsf, Function.comp, Prod.map, hev] at h
    exact h
  simp only [Prod.mk.injEq] at habs'
  obtain ⟨rfl, rfl⟩ := habs'
  have hne : res ≠ some .error := by
    intro h
    subst h
    exact hr rfl
  have hmf' : (crepToLoopMakeFuncsExactHOL crep_code).lookup start =
      some (findLabExact nctxt start, 0) := by
    rw [hlc]
    exact hmf
  obtain ⟨k', res', t', hrun, hsr, hres, hk⟩ :=
    codeRelEvaluateCallCorrect_bounded S hS nctxt s.code t.code start
      { s with clock := k } res s1 { t with clock := k } crep_code lc prog hcodeB hcode2 hev
      ⟨hbe, hsh, hmd, rfl, hffi, hbase, htop, hmem, hglob, hloc, rfl, rfl⟩ hmf'
      ⟨hlc, hscode, rfl, hprog, hdv, hcm⟩ hne
  refine ⟨k', ?_, ?_⟩
  · simpa using hk
  rw [hlc] at hrun
  have hrun' : LoopSemStateFiniteExact.evaluate (.call none (some lc) [] none : HolLoopProg width)
      { t with clock := k + k' } = (res', t') := by
    have heq : ({ { t with clock := k } with clock := k + k' } :
        LoopSemStateFiniteExact width σ) = { t with clock := k + k' } := by
      cases t; rfl
    rw [← heq]
    exact hrun
  simp only [loopConcf, Function.comp, Prod.map, hrun', hres, loopEntryClassB_resultToLoop]
  rw [hsr.2.2.2.2.1]

/-- `crepToLoop_perClock_bounded` with the code bound on the original crep bodies. -/
theorem crepToLoop_perClock_bounded_of_code (S : Nat) (hS : 3 ≤ S)
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
    ∀ k r ev, crepAbsf s start k = (r, ev) → r ≠ .RunError →
      ∃ k', k' ≤ (S + 1) *
          (k - (evalCrepSemHOLProgExact { s with clock := k } (.call none start [])).2.clock) + 3 ∧
        loopConcf t lc (k + k') = (r, ev) :=
  crepToLoop_perClock_bounded S hS s t crep_code start lc c
    (fun e he => Nat.le_trans (csize_simp _) (hbody e he)) h

end

end InitECandidate.Solver.Compiler.CrepToLoop
