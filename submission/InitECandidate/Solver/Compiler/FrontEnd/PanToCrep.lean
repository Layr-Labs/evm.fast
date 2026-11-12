import InitECandidate.Solver.Compiler.FrontEnd.Basic
import Flapjack.Pancake.Proofs.PanToCrep.StateRelImpSemanticsTop

/-!
# `pan_to_crep` (with `crep_inline`) at the clock level

`pan_to_crep$compile_prog` is `compile_to_crep` followed by crep_inline's `compile_inl_top`
(`compileProgDeclsHOLW`). Flapjack's semantics proofs drop the clock at both steps:

* `stateRelImpSemanticsToCrep` (`Pancake/Proofs/PanToCrep/StateRelImpSemantics.lean`) matches
  each source entry run with the target entry run at the same clock (`refine ⟨0, _⟩`) via
  `pcCompileCorrect`, whose `panToCrepStateRelFiniteExact` contains clock and FFI equality
  (`toCrep_runStep`);
* crep_inline's `entry_agree` (`Pancake/Proofs/CrepInline/StateRelImpSemantics.lean`) via
  `evaluateCallSameResultStateExact`, whose `crepInlineStateRelCodeExact` contains clock and FFI
  equality (`crepInline_runStep`).

Both passes are lock-step (offset `0`). `panToCrep_lockStep` is the declarations form
(`stateRelImpSemanticsDeclsPanToCrep`, same hypotheses except non-`Fail`).
-/

namespace InitECandidate.Solver.Compiler.FrontEnd

open Flapjack Flapjack.Pancake.PanLang Flapjack.CrepInlineStateRelImpSemantics
open Flapjack.CrepInlineCanonical Flapjack.CrepInlineExact

set_option autoImplicit false

variable {width : Nat} {σ : Type} [NeZero width]

/-- The entry run of `crepSemantics t start` at clock `k`. -/
noncomputable abbrev crepRun (t : CrepSemHOLState width σ) (start : MlS) (k : Nat) :
    Option (CrepResultHOLExact width) × CrepSemHOLState width σ :=
  evalCrepSemHOLProgExact { t with clock := k } (.call none start [])

/-- The result correspondence of `pcCompileCorrect` (exception numbers left existential). -/
def panCrepRes : Option (PanSemResultExact width) → Option (CrepResultHOLExact width) → Prop
  | none, r' => r' = none
  | some .error, _ => False
  | some .timeOut, r' => r' = some .timeOut
  | some .break, r' => r' = some (.break 0)
  | some .continue, r' => r' = some (.continue 0)
  | some (.returned rv), r' => r' = some (.return (flattenHOL rv))
  | some (.exception _ _), r' => ∃ n, r' = some (.exception n)
  | some (.finalFfi f), r' => r' = some (.finalFfi f)

theorem panCrepRes_ne_error {r : Option (PanSemResultExact width)}
    {r' : Option (CrepResultHOLExact width)} (h : panCrepRes r r') : r' ≠ some .error := by
  rcases r with _ | (_ | _ | _ | _ | _ | _ | _) <;> simp only [panCrepRes] at h
  all_goals first
    | (subst h; simp)
    | (obtain ⟨n, rfl⟩ := h; simp)

/-- **Uniform per-clock statement, Pan → Crep**: every Pan entry run at clock `k` that is neither
`Error` nor `TimeOut` is matched by the Crep entry run at clock `k + c` with the related result
and the same final clock and FFI state. -/
def PanCrepRunStep (s : PanSemStateFiniteExact width σ) (start : MlS)
    (t : CrepSemHOLState width σ) (start' : MlS) (c : Nat) : Prop :=
  ∀ k r s1, panRun s start k = (r, s1) → PanTerminates r →
    ∃ r' t1, crepRun t start' (k + c) = (r', t1) ∧ panCrepRes r r' ∧ t1.clock = s1.clock ∧
      t1.ffi = s1.ffi

/-- **Uniform per-clock statement, Crep → Crep** (identical results). -/
def CrepRunStep (s : CrepSemHOLState width σ) (start : MlS) (t : CrepSemHOLState width σ)
    (start' : MlS) (c : Nat) : Prop :=
  ∀ k r s1, crepRun s start k = (r, s1) → r ≠ some .error →
    ∃ t1, crepRun t start' (k + c) = (r, t1) ∧ t1.clock = s1.clock ∧ t1.ffi = s1.ffi

theorem PanRunStep.trans_crep {s t : PanSemStateFiniteExact width σ} {u : CrepSemHOLState width σ}
    {a b d : MlS} {f : Option (PanSemResultExact width) → Option (PanSemResultExact width)}
    {c c' : Nat} (h1 : PanRunStep s a t b f c) (hf : PanResMapOk f)
    (h2 : PanCrepRunStep t b u d c') :
    ∀ k r s1, panRun s a k = (r, s1) → PanTerminates r →
      ∃ r' t1, crepRun u d (k + (c + c')) = (r', t1) ∧ panCrepRes (f r) r' ∧
        t1.clock = s1.clock ∧ t1.ffi = s1.ffi := by
  intro k r s1 hrun hr
  obtain ⟨t1, ht, hc, hffi⟩ := h1 k r s1 hrun hr
  obtain ⟨r', u1, hu, hrel, hc', hffi'⟩ := h2 (k + c) (f r) t1 ht (hf r hr)
  exact ⟨r', u1, by rw [← Nat.add_assoc]; exact hu, hrel, hc'.trans hc, hffi'.trans hffi⟩

theorem PanCrepRunStep.trans {s : PanSemStateFiniteExact width σ} {t u : CrepSemHOLState width σ}
    {a b d : MlS} {c c' : Nat} (h1 : PanCrepRunStep s a t b c) (h2 : CrepRunStep t b u d c') :
    PanCrepRunStep s a u d (c + c') := by
  intro k r s1 hrun hr
  obtain ⟨r', t1, ht, hrel, hc, hffi⟩ := h1 k r s1 hrun hr
  obtain ⟨u1, hu, hc', hffi'⟩ := h2 (k + c) r' t1 ht (panCrepRes_ne_error hrel)
  exact ⟨r', u1, by rw [← Nat.add_assoc]; exact hu, hrel, hc'.trans hc, hffi'.trans hffi⟩

/-- `compile_to_crep` entry runs (the first bullet of `stateRelImpSemanticsToCrep`, with the
clock kept; its hypotheses other than non-`Fail` are kept). -/
theorem toCrep_runStep (s : PanSemStateFiniteExact width σ) (t : CrepSemHOLState width σ)
    (pan_code : List (DeclHOL width)) (start : MlS)
    (hsr : panToCrepStateRelFiniteExact s t)
    (hdist : ((functionsHOL pan_code).map Prod.fst).Nodup)
    (hscode : s.code = HolFiniteMapExact.empty.updateList (functionsHOL pan_code).reverse)
    (htcode : t.code =
      HolFiniteMapExact.empty.updateList (compileToCrepExactHOLW pan_code).reverse)
    (hloc : s.locals = HolFiniteMapExact.empty)
    (hlocal : ∀ entry ∈ functionsHOL pan_code, localisedProgHOL entry.2.2.1 = true)
    (hsize : sizeOfEidsHOL pan_code < 2 ^ width)
    (hdom : ∀ key, (s.eshapes.lookup key).isSome =
      ((getEidsFromDeclsHOL pan_code).lookup key).isSome) :
    PanCrepRunStep s start t start 0 := by
  intro k res s1 hev hr
  dsimp only [panRun, crepRun] at hev ⊢
  let ctxt : PanToCrepContextExact width :=
    mkCtxtExactHOL HolFiniteMapExact.empty (makeFuncsExactHOL (functionsHOL pan_code)) 0
      (getEidsFromDeclsHOL pan_code)
  have hsr' : panToCrepStateRelFiniteExact ({ s with clock := k } : PanSemStateFiniteExact width σ)
      ({ t with clock := k } : CrepSemHOLState width σ) := by
    obtain ⟨h1, h2, h3, h4, h5, _, h7, h8, h9, h10⟩ := hsr
    exact ⟨h1, h2, h3, h4, h5, rfl, h7, h8, h9, h10⟩
  have hcode : codeRelExactHOLW ctxt ({ s with clock := k } : PanSemStateFiniteExact width σ).code
      ({ t with clock := k } : CrepSemHOLState width σ).code := by
    show codeRelExactHOLW ctxt s.code t.code
    rw [hscode, htcode]
    exact mkCtxtCodeImpCodeRelExactHOLW pan_code hdist hlocal
  have hexcp : panToCrepExcpRelFiniteExact ctxt.eids
      ({ s with clock := k } : PanSemStateFiniteExact width σ).eshapes :=
    getEidsImpExcpRelExact s.eshapes pan_code ⟨hsize, hdom⟩
  have hlocals : panToCrepLocalsRelFiniteExact ctxt
      ({ s with clock := k } : PanSemStateFiniteExact width σ).locals
      ({ t with clock := k } : CrepSemHOLState width σ).locals := by
    show panToCrepLocalsRelFiniteExact ctxt s.locals t.locals
    rw [hloc]
    exact mkCtxtImpLocalsRelExact _ _ _
  obtain ⟨res1, t1, hrun, hsr1, _, _, hres⟩ :=
    pcCompileCorrect (.call none start []) { s with clock := k } res s1 { t with clock := k } ctxt
      ⟨hev, hr.1, hsr', hcode, hexcp, hlocals, by simp [localisedProgHOL, everyExpListHOL]⟩
  have hcomp : compileProgExactHOLW ctxt (.call none start [] : ProgHOL width) =
      (.call none start [] : CrepProgHOL width) := by
    simp [compileProgExactHOLW, compileCallNoReturnExactHOLW, compileExpExactHOLWList]
  rw [hcomp] at hrun
  refine ⟨res1, t1, hrun, ?_, hsr1.2.2.2.2.2.1.symm, hsr1.2.2.2.2.2.2.2.1.symm⟩
  rcases res with _ | (_ | _ | _ | _ | _ | ⟨eid, v⟩ | _) <;> simp only at hres <;>
    simp only [panCrepRes]
  all_goals first
    | exact hres
    | exact hres.1
    | (split at hres
       · exact hres.elim
       · exact ⟨_, hres.1⟩)

/-- crep_inline entry runs (`entry_agree` of `stateRelImpSemanticsLocalExact`, with the clock
kept; the hypotheses of `stateRelImpSemanticsExact` other than the start lookup and non-`Fail`). -/
theorem crepInline_runStep (s t : CrepSemHOLState width σ)
    (crep_code : List (CrepInlineMapHOLName × List Nat × CrepProgHOL width)) (start : MlS)
    (inl_fname : List CrepInlineMapHOLName)
    (hsr : crepInlineStateRelCodeExact s t) (hls : crepInlineLocalsStrongRelExact s t)
    (hd : (crep_code.map Prod.fst).Nodup) (hs : s.code = alistToFmapCodeExact crep_code)
    (ht : t.code = alistToFmapCodeExact (compileInlTopHOLExact inl_fname crep_code)) :
    CrepRunStep s start t start 0 := by
  have ht' : t.code = alistToFmapCodeExact (compileInlProgHOLExact
      (alistToFmapHOLExact (crep_code.filter fun triple => inl_fname.contains triple.1))
      crep_code) := by
    rw [ht, compileInlTopHOLExact]
    rw [compileInlProgHOLExactWithSupport_eq_compileInlProgHOLExact]
  have hsub : HolFiniteMapExact.submap
      (alistToFmapHOLExact (crep_code.filter fun triple => inl_fname.contains triple.1))
      s.code := by
    intro k v h
    rw [hs]
    have hm := flookup_fupdateList_reverse_mem' _ k v h
    exact flookup_fupdateList_reverse_of_mem crep_code k v hd (List.mem_filter.mp hm).1
  have hci := codeInl_of_alist s t crep_code _ hd hs ht'
  intro k r s1 hev hne
  dsimp only [crepRun] at hev ⊢
  obtain ⟨a, b, c, d, _, f, g, h, i⟩ := hsr
  have hsrk : crepInlineStateRelCodeExact { s with clock := k } { t with clock := k } :=
    ⟨a, b, c, d, rfl, f, g, h, i⟩
  obtain ⟨h1, h2⟩ := evaluateCallSameResultStateExact start [] { s with clock := k } r s1
    { t with clock := k } _ ⟨hev, hsrk, hsub, hls, hci, hne⟩
  rw [hev] at h1 h2
  refine ⟨(evalCrepSemHOLProgExact { t with clock := k } (.call none start [])).2, ?_, ?_, ?_⟩
  · exact Prod.ext h1 rfl
  · exact h2.2.2.2.2.1.symm
  · exact h2.2.2.2.2.2.2.1.symm

/-! Association-list facts (copies of private helpers of `PanToCrep/StateRelImpSemantics`). -/

private theorem list_lookup_isSome_iff' {α β : Type} [BEq α] [LawfulBEq α]
    (l : List (α × β)) (k : α) : (List.lookup k l).isSome = true ↔ k ∈ l.map Prod.fst := by
  induction l with
  | nil => simp
  | cons e l ih =>
    obtain ⟨a, b⟩ := e
    by_cases h : k = a
    · subst h; simp
    · have : (k == a) = false := by simp [h]
      simp [List.lookup_cons, this, ih, h]

private theorem list_lookup_of_mem_nodup' {α β : Type} [BEq α] [LawfulBEq α]
    (l : List (α × β)) (k : α) (v : β) (hmem : (k, v) ∈ l) (hnd : (l.map Prod.fst).Nodup) :
    List.lookup k l = some v := by
  induction l with
  | nil => simp at hmem
  | cons e l ih =>
    obtain ⟨a, b⟩ := e
    simp only [List.map_cons, List.nodup_cons] at hnd
    rcases List.mem_cons.mp hmem with h | h
    · cases h; simp
    · have hka : k ≠ a := by
        intro hk; subst hk; exact hnd.1 (List.mem_map.mpr ⟨(k, v), h, rfl⟩)
      have : (k == a) = false := by simp [hka]
      simp [List.lookup_cons, this, ih h hnd.2]

private theorem list_lookup_mem' {α β : Type} [BEq α] [LawfulBEq α]
    (l : List (α × β)) (k : α) (v : β) (h : List.lookup k l = some v) : (k, v) ∈ l := by
  induction l with
  | nil => simp at h
  | cons e l ih =>
    obtain ⟨a, b⟩ := e
    by_cases hk : k = a
    · subst hk; simp at h; subst h; simp
    · have : (k == a) = false := by simp [hk]
      simp only [List.lookup_cons, this] at h
      exact List.mem_cons_of_mem _ (ih h)

private theorem list_lookup_reverse_of_nodup' {α β : Type} [BEq α] [LawfulBEq α]
    (l : List (α × β)) (k : α) (hnd : (l.map Prod.fst).Nodup) :
    List.lookup k l.reverse = List.lookup k l := by
  have hnd' : (l.reverse.map Prod.fst).Nodup := by
    rw [List.map_reverse, List.Nodup, List.pairwise_reverse]; exact hnd.imp (fun h => Ne.symm h)
  cases h : List.lookup k l with
  | none =>
    cases h' : List.lookup k l.reverse with
    | none => rfl
    | some v =>
      have hm := list_lookup_mem' _ _ _ h'
      have := list_lookup_of_mem_nodup' l k v (List.mem_reverse.mp hm) hnd
      rw [h] at this; cases this
  | some v =>
    exact list_lookup_of_mem_nodup' _ k v (List.mem_reverse.mpr (list_lookup_mem' _ _ _ h)) hnd'

private theorem fupdateList_empty_eq_lookup' {α β : Type} [BEq α] [LawfulBEq α]
    (l : List (α × β)) (k : α) :
    FUPDATE_LIST FEMPTY l k = List.lookup k l.reverse := by
  have := FLOOKUP_FUPDATE_LIST_reverse_eq_lookup l.reverse k
  simpa [FLOOKUP] using this

private theorem alistToFmap_eq_lookup' {α β : Type} [BEq α] [LawfulBEq α]
    (l : List (α × β)) (k : α) : FLOOKUP (alistToFmap l) k = List.lookup k l := by
  induction l with
  | nil => rfl
  | cons e l ih =>
    obtain ⟨a, b⟩ := e
    change FLOOKUP (FUPDATE (alistToFmap l) (a, b)) k = _
    rw [FLOOKUP_update, ih, List.lookup_cons]
    by_cases hk : k = a
    · subst hk; simp
    · have h1 : (a == k) = false := by simp [Ne.symm hk]
      have h2 : (k == a) = false := by simp [hk]
      simp [h1, h2]

/-- **`pan_to_crep` (incl. `crep_inline`), clock level.** Hypotheses of Flapjack's
`stateRelImpSemanticsDeclsPanToCrep` except non-`Fail`: from the post-declaration state `s0` of
the source, every entry run is matched by the Crep entry run of `t` at the same clock, with the
`pcCompileCorrect` result correspondence and equal final clock and FFI state. -/
theorem panToCrep_lockStep (s : PanSemStateFiniteExact width σ) (t : CrepSemHOLState width σ)
    (pan_code : List (DeclHOL width)) (start : MlS)
    (hsr : panToCrepStateRelFiniteExact { s with structs := [] } t)
    (hdist : ((functionsHOL pan_code).map Prod.fst).Nodup)
    (hscode : s.code = HolFiniteMapExact.empty)
    (htcode : t.code = HolFiniteMapExact.empty.updateList (compileProgDeclsHOLW pan_code).reverse)
    (hloc : s.locals = HolFiniteMapExact.empty) (hesh : s.eshapes = HolFiniteMapExact.empty)
    (hlocal : ∀ entry ∈ functionsHOL pan_code, localisedProgHOL entry.2.2.1 = true)
    (hall : pan_code.all (fun x => isFunctionHOL x || isExnDeclHOL x) = true)
    (hsize : sizeOfEidsHOL pan_code < 2 ^ width) :
    ∀ s', panDeclsInit s pan_code = some s' → PanCrepRunStep s' start t start 0 := by
  intro s' hev
  have hctx : decsStcnamesHOLExact (width := width) ([] : StructContextExact) pan_code =
      some [] := by
    apply decsStcnamesHOLExact_of_functions_or_decls_or_exnDecls
    rw [List.all_eq_true] at hall ⊢
    intro x hx
    have := hall x hx
    simp only [Bool.or_eq_true] at this ⊢
    rcases this with h | h
    · exact Or.inl (Or.inl h)
    · exact Or.inr h
  unfold panDeclsInit at hev
  rw [hctx] at hev
  simp only at hev
  classical
  let s0 : PanSemStateFiniteExact width σ := { s with structs := [] }
  let p0 := PanPropsEvalStateFiniteExact.ofPanSemFinite s0
  letI hdec : DecidablePred p0.memaddrs := fun a => Classical.propDecidable _
  have hcanon : PanPropsEvalStateFiniteExact.evaluateDeclsPanPropsCanonical p0 pan_code =
      some (PanPropsEvalStateFiniteExact.ofPanSemFinite s') := by
    unfold PanPropsEvalStateFiniteExact.evaluateDeclsPanPropsCanonical
    have key : ∀ (st : PanSemStateFiniteExact width σ) (h1 h2 : DecidablePred st.memaddrs),
        @PanSemStateFiniteExact.evaluateDeclsHOLFinite width σ _ st h1 pan_code =
          @PanSemStateFiniteExact.evaluateDeclsHOLFinite width σ _ st h2 pan_code := by
      intro st h1 h2
      rw [Subsingleton.elim h1 h2]
    have hE := (key p0.toPanSemFinite inferInstance _).trans hev
    rw [hE]
    rfl
  have hshape := PanPropsEvalStateFiniteExact.evaluateDeclsOnlyFunsAndExnDeclsHOLFinite p0
    pan_code (PanPropsEvalStateFiniteExact.ofPanSemFinite s') hall hcanon
  have hs' : s' = { s0 with
      code := HolFiniteMapExact.empty.updateList (functionsHOL pan_code)
      eshapes := HolFiniteMapExact.empty.updateList (exceptionsHOL pan_code) } := by
    have h := congrArg PanPropsEvalStateFiniteExact.toPanSemFinite hshape
    simp only [PanPropsEvalStateFiniteExact.toPanSemFinite_ofPanSemFinite] at h
    rw [h]
    simp [PanPropsEvalStateFiniteExact.toPanSemFinite, p0,
      PanPropsEvalStateFiniteExact.ofPanSemFinite, s0, hscode, hesh]
  rw [hs']
  let t' : CrepSemHOLState width σ :=
    { t with code := HolFiniteMapExact.empty.updateList (compileToCrepExactHOLW pan_code).reverse }
  have h1 : PanCrepRunStep { s0 with
      code := HolFiniteMapExact.empty.updateList (functionsHOL pan_code)
      eshapes := HolFiniteMapExact.empty.updateList (exceptionsHOL pan_code) } start t' start 0 := by
    refine toCrep_runStep _ t' pan_code start ?_ hdist ?_ rfl hloc hlocal hsize ?_
    · simpa [panToCrepStateRelFiniteExact, s0, t'] using hsr
    · apply HolFiniteMapExact.ext
      funext k
      simp only [HolFiniteMapExact.lookup_updateList]
      change FUPDATE_LIST FEMPTY _ k = FUPDATE_LIST FEMPTY _ k
      rw [fupdateList_empty_eq_lookup', fupdateList_empty_eq_lookup', List.reverse_reverse,
        list_lookup_reverse_of_nodup' _ _ hdist]
    · intro key
      show ((HolFiniteMapExact.empty.updateList (exceptionsHOL pan_code)).lookup key).isSome =
        ((getEidsFromDeclsHOL pan_code).lookup key).isSome
      rw [HolFiniteMapExact.lookup_updateList,
        holFmapAsFiniteSupportResultWitness_getEidsFromDeclsHOL, alistToFmap_eq_lookup']
      change (FUPDATE_LIST FEMPTY _ key).isSome = _
      rw [fupdateList_empty_eq_lookup']
      apply Bool.eq_iff_iff.mpr
      rw [list_lookup_isSome_iff', list_lookup_isSome_iff', List.map_reverse, List.mem_reverse,
        getEidsEntriesHOL_eq_lengthBased]
      simp only
      rw [List.map_fst_zip (by simp)]
  have h2 : CrepRunStep t' start t start 0 :=
    crepInline_runStep t' t (compileToCrepExactHOLW pan_code) start
      ((functionsHOL (pan_code.filter inlinableHOL)).map Prod.fst)
      ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩ rfl
      (firstCompileToCrepAllDistinctExact pan_code hdist) rfl htcode
  exact h1.trans h2

end InitECandidate.Solver.Compiler.FrontEnd
