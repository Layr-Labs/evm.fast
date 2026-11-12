import InitECandidate.Solver.MemSafe.Init.Rules

/-!
# Init: the `heap_mark` / temporary `alloc` / stores / `heap_release` block of `evm_init`

The block leaves all globals unchanged, so `WI` carries over to the rest of the body.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

def storeOnlyB : ProgHOL 64 → Bool
  | .store _ _ => true
  | .storeByte _ _ => true
  | .seq a b => storeOnlyB a && storeOnlyB b
  | _ => false

theorem storeOnly_eval : ∀ (p : ProgHOL 64), storeOnlyB p = true → ∀ s : State σ,
    ((evaluateHOLFiniteState s p).1 = none ∨ (evaluateHOLFiniteState s p).1 = some .error) ∧
      ∃ m, (evaluateHOLFiniteState s p).2 = { s with memory := m }
  | .store a v, _, s => by
      rw [evaluateHOLFiniteState_store]
      repeat' split
      all_goals first | exact ⟨Or.inl rfl, _, rfl⟩ | exact ⟨Or.inr rfl, s.memory, rfl⟩
  | .storeByte a v, _, s => by
      rw [evaluateHOLFiniteState_storeByte]
      repeat' split
      all_goals first | exact ⟨Or.inl rfl, _, rfl⟩ | exact ⟨Or.inr rfl, s.memory, rfl⟩
  | .seq a b, h, s => by
      simp only [storeOnlyB, Bool.and_eq_true] at h
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
      dsimp only
      obtain ⟨ha, m, hm⟩ := storeOnly_eval a h.1 s
      split
      · rename_i hn
        obtain ⟨hb, m', hm'⟩ := storeOnly_eval b h.2 (evaluateHOLFiniteState s a).2
        refine ⟨hb, m', ?_⟩
        rw [hm', hm]
      · rename_i r hr
        exact ⟨by rw [hr] at ha; rcases ha with ha | ha <;> simp_all, m, hm⟩
  | .skip, h, _ => by simp [storeOnlyB] at h
  | .dec .., h, _ => by simp [storeOnlyB] at h
  | .assign .., h, _ => by simp [storeOnlyB] at h
  | .primitive .., h, _ => by simp [storeOnlyB] at h
  | .store32 .., h, _ => by simp [storeOnlyB] at h
  | .ite .., h, _ => by simp [storeOnlyB] at h
  | .while .., h, _ => by simp [storeOnlyB] at h
  | .break, h, _ => by simp [storeOnlyB] at h
  | .continue, h, _ => by simp [storeOnlyB] at h
  | .call .., h, _ => by simp [storeOnlyB] at h
  | .decCall .., h, _ => by simp [storeOnlyB] at h
  | .extCall .., h, _ => by simp [storeOnlyB] at h
  | .raise .., h, _ => by simp [storeOnlyB] at h
  | .return .., h, _ => by simp [storeOnlyB] at h
  | .shMemLoad .., h, _ => by simp [storeOnlyB] at h
  | .shMemStore .., h, _ => by simp [storeOnlyB] at h
  | .tick, h, _ => by simp [storeOnlyB] at h
  | .annot .., h, _ => by simp [storeOnlyB] at h

theorem hoare_storeOnly {B : ProgHOL 64} (hB : storeOnlyB B = true) (t2 : State σ) :
    Hoare σ guestCtx (fun t => t = t2) B
      (fun r t => r = none ∧ t.globals = t2.globals ∧ t.locals = t2.locals) := by
  intro s hs hp ht
  subst hp
  obtain ⟨hr, m, hm⟩ := storeOnly_eval B hB s
  refine ⟨?_, by rw [hm], by rw [hm]⟩
  rcases hr with hr | hr
  · exact hr
  · rw [hr] at ht; exact absurd ht (by simp)

def stores : List (ProgHOL 64) → ProgHOL 64 → ProgHOL 64
  | [], k => k
  | s :: l, k => .seq s (stores l k)

theorem hoare_stores {g : HolFiniteMapExact MlS (ValueHOL 64)} {l : HolFiniteMapExact MlS (ValueHOL 64)}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} {k : ProgHOL 64}
    (hk : Hoare σ guestCtx (fun t => t.globals = g ∧ t.locals = l) k Q) :
    ∀ L : List (ProgHOL 64), (∀ s ∈ L, storeOnlyB s = true) →
      Hoare σ guestCtx (fun t => t.globals = g ∧ t.locals = l) (stores L k) Q
  | [], _ => hk
  | s :: L, hL => by
      refine Spec.hoare_seq (R := fun r t => r = none ∧ t.globals = g ∧ t.locals = l) ?_
        (fun r t _ hr _ hq => absurd hq.1 hr) (Spec.hoare_pre (hoare_stores hk L (fun x hx => hL x (List.mem_cons_of_mem _ hx))) fun t _ ht => ht.2)
      intro t ht hp hT
      obtain ⟨hr, m, hm⟩ := storeOnly_eval s (hL s List.mem_cons_self) t
      refine ⟨?_, by rw [hm]; exact hp.1, by rw [hm]; exact hp.2⟩
      rcases hr with hr | hr
      · exact hr
      · rw [hr] at hT; exact absurd hT (by simp)

def splitSt : ProgHOL 64 → Option (List (ProgHOL 64) × MlS × MlS × ProgHOL 64)
  | .seq a b =>
      match a with
      | .call (some (none, none)) fr [.var .local m'] => some ([], fr, m', b)
      | _ => if storeOnlyB a then (splitSt b).map (fun r => (a :: r.1, r.2.1, r.2.2.1, r.2.2.2)) else none
  | _ => none

theorem splitSt_eq : ∀ (X : ProgHOL 64) (L : List (ProgHOL 64)) (fr m' : MlS) (rest : ProgHOL 64),
    splitSt X = some (L, fr, m', rest) →
      X = stores L (.seq (.call (some (none, none)) fr [.var .local m']) rest) ∧ ∀ s ∈ L, storeOnlyB s = true
  | .seq a b, L, fr, m', rest, h => by
      unfold splitSt at h
      split at h
      · have h0 := Option.some.inj h
        simp only [Prod.mk.injEq] at h0
        obtain ⟨h1, h2, h3, h4⟩ := h0
        subst h1 h2 h3 h4
        simp [stores]
      · rename_i hn
        split at h
        · rename_i hs
          obtain ⟨r, hr, hr2⟩ := Option.map_eq_some_iff.mp h
          obtain ⟨hX, hL⟩ := splitSt_eq b r.1 r.2.1 r.2.2.1 r.2.2.2 hr
          simp only [Prod.mk.injEq] at hr2
          obtain ⟨h1, h2, h3, h4⟩ := hr2
          subst h1 h2 h3 h4
          refine ⟨by simp [stores, hX], ?_⟩
          intro s hs'
          rcases List.mem_cons.mp hs' with rfl | hs'
          · exact hs
          · exact hL s hs'
        · simp at h
  | .skip, _, _, _, _, h => by simp [splitSt] at h
  | .dec .., _, _, _, _, h => by simp [splitSt] at h
  | .assign .., _, _, _, _, h => by simp [splitSt] at h
  | .primitive .., _, _, _, _, h => by simp [splitSt] at h
  | .store .., _, _, _, _, h => by simp [splitSt] at h
  | .store32 .., _, _, _, _, h => by simp [splitSt] at h
  | .storeByte .., _, _, _, _, h => by simp [splitSt] at h
  | .ite .., _, _, _, _, h => by simp [splitSt] at h
  | .while .., _, _, _, _, h => by simp [splitSt] at h
  | .break, _, _, _, _, h => by simp [splitSt] at h
  | .continue, _, _, _, _, h => by simp [splitSt] at h
  | .call .., _, _, _, _, h => by simp [splitSt] at h
  | .decCall .., _, _, _, _, h => by simp [splitSt] at h
  | .extCall .., _, _, _, _, h => by simp [splitSt] at h
  | .raise .., _, _, _, _, h => by simp [splitSt] at h
  | .return .., _, _, _, _, h => by simp [splitSt] at h
  | .shMemLoad .., _, _, _, _, h => by simp [splitSt] at h
  | .shMemStore .., _, _, _, _, h => by simp [splitSt] at h
  | .tick, _, _, _, _, h => by simp [splitSt] at h
  | .annot .., _, _, _, _, h => by simp [splitSt] at h

theorem rule_mark {pn : List MlS} {m s1 : MlS} (hms : m ≠ s1) {sh1 sh2 : ShapeHOL} {e : ExpHOL 64}
    {w : BitVec 64} (hav : argVal e = some w) {L : List (ProgHOL 64)} (hL : ∀ s ∈ L, storeOnlyB s = true)
    {rest : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : ∀ r t l, Q r t → Q r { t with locals := l })
    (hrest : Hoare σ guestCtx (fun s => ∃ Γ, WI Γ pn s) rest Q) :
    Hoare σ guestCtx (fun s => ∃ Γ, WI Γ pn s)
      (.decCall m sh1 (nm "heap_mark") [] (.decCall s1 sh2 (nm "alloc") [e]
        (stores L (.seq (.call (some (none, none)) (nm "heap_release") [.var .local m]) rest)))) Q := by
  refine Spec.hoare_decCallS (markSpec'_heap_mark guestCtx_code) ?_
  intro s0 hs0 hP vs hvs callee v st hR hst hsh
  obtain rfl : vs = [] := (Option.some.inj hvs).symm
  obtain ⟨-, hg1, hv⟩ := hR (by simp [Good]) rfl
  have hv1 : s0.globals.lookup gHeap = some v := hv v rfl
  obtain ⟨Γ, hW⟩ := hP
  obtain ⟨p, hp, ord0, -⟩ := id hW
  obtain ⟨a, b, c, ha, -, -, -⟩ := AllocImpl.ptrsOf_some hp
  have hvw : v = .val (.word a) := mark_val_word hv1 ha
  subst hvw
  refine Spec.hoare_decCallS (allocSpec_alloc (σ := σ) (X := guestCtx) guestCtx_code) ?_
  intro t1 ht1 hP1 vs' hvs' callee' v' st' hR' hst' hsh'
  subst hP1
  have hvs'' : vs' = [.val (.word w)] := by
    have : evs (setVarHOLFinite m (.val (.word a)) { st with locals := s0.locals }) [e] = some [.val (.word w)] :=
      evs_cons (ev_argVal hav) evs_nil
    rw [this] at hvs'; exact (Option.some.inj hvs').symm
  have hptr : ptrsOf (callEntryStateHOLFinite (setVarHOLFinite m (.val (.word a)) { st with locals := s0.locals }) callee') = some p := by
    refine (AllocImpl.ptrsOf_congr (s := s0) (t := _) ?_).trans hp
    show st.globals = s0.globals
    exact hg1
  obtain ⟨-, ho, p', hp', hord', hmono, hq⟩ := hR' (by simp [Good]) w p hvs'' hptr ord0
  set t2 := setVarHOLFinite s1 v' { st' with locals := (setVarHOLFinite m (.val (.word a)) { st with locals := s0.locals }).locals } with ht2
  refine Spec.hoare_pre (hoare_stores (g := t2.globals) (l := t2.locals) ?_ L hL) (fun t _ ht => by subst ht; exact ⟨rfl, rfl⟩)
  refine Spec.hoare_seq (R := fun r t => r = none ∧ t.globals = s0.globals) ?_
    (fun r t _ hr _ hq => absurd hq.1 hr) ?_
  · refine Spec.hoare_callD (releaseSpec_heap_release (σ := σ) (X := guestCtx) guestCtx_code) ?_
    intro t3 ht3 hP3 vs3 hvs3 callee3 v3 st4 hR3 hst4
    obtain ⟨hg3, hl3⟩ := hP3
    have hlk : t3.locals.lookup m = some (.val (.word a)) := by
      rw [hl3, ht2]
      show ((s0.locals.update (m, .val (.word a))).update (s1, v')).lookup m = _
      rw [lookup_update_ne _ _ hms.symm]
      exact lookup_update_self _ _ _
    have : evs t3 [.var .local m] = some [.val (.word a)] := evs_cons (by rw [ev_var_local]; exact hlk) evs_nil
    rw [this] at hvs3
    obtain rfl := (Option.some.inj hvs3).symm
    obtain ⟨-, hh, hoo⟩ := hR3 (by simp [Good]) a rfl
    refine ⟨rfl, ?_⟩
    apply AllocImpl.hfm_ext
    funext g
    show st4.globals.lookup g = s0.globals.lookup g
    by_cases hg : g = gHeap
    · subst hg; rw [hh]; exact (AllocImpl.lookup_of_gword ha).symm
    · rw [hoo g hg]
      show t3.globals.lookup g = _
      rw [hg3, ht2]
      show st'.globals.lookup g = _
      rw [ho g hg]
      show st.globals.lookup g = _
      rw [hg1]
      rfl
  · refine Spec.hoare_conseq hrest ?_ ?_
    · intro t _ ht
      obtain ⟨-, hg⟩ := ht
      exact ⟨Γ, wi_congr hg hW⟩
    · intro r t _ _ hq
      exact hQ _ _ _ (hQ _ _ _ hq)

end InitECandidate.Solver.MemSafe.Init
