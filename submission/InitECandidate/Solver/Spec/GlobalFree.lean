import InitECandidate.Solver.Spec.HoareExt

/-!
# A global-write footprint checker

`gwFreeB g S p`: the program `p` never writes the global `g` — no `g = e`, no
`!ld g, a` into `g`, no call result assigned to `g` — and calls only functions listed in
`S` (exception handlers are checked too). `GwClosed g S C`: every code entry of a
function in `S` passes `gwFreeB g S` (a closed set of functions, possibly recursive).

* `gw_preserved`: from any state whose code map is `C`, evaluating a checked program
  leaves `globals.lookup g` unchanged, whatever the result (normal, `return`, exception,
  error, time-out). The proof is by induction on the clock (calls and loop iterations
  run at a strictly smaller clock) and on the program.
* `funSpec_gw`: for `f ∈ S`, the state-relational callee specification "the final
  state's `g` is the entry state's `g`", consumed by the call rules of `HoareExt.lean`.
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type}

/-- A write target that is not the global `g`. -/
def tgtOk (g : MlS) : Option (VarKind × MlS) → Bool
  | some (.global, n) => decide (n ≠ g)
  | _ => true

/-- `p` never writes the global `g` and calls only functions in `S`. -/
def gwFreeB (g : MlS) (S : List MlS) : ProgHOL 64 → Bool
  | .assign k n _ => tgtOk g (some (k, n))
  | .shMemLoad _ k n _ => tgtOk g (some (k, n))
  | .dec _ _ _ b => gwFreeB g S b
  | .seq a b => gwFreeB g S a && gwFreeB g S b
  | .ite _ a b => gwFreeB g S a && gwFreeB g S b
  | .while _ b => gwFreeB g S b
  | .call none f _ => S.contains f
  | .call (some (tgt, none)) f _ => S.contains f && tgtOk g tgt
  | .call (some (tgt, some (_, _, hp))) f _ => S.contains f && tgtOk g tgt && gwFreeB g S hp
  | .decCall _ _ f _ k => S.contains f && gwFreeB g S k
  | _ => true

/-- Every code entry of a function in `S` is checked. -/
def GwClosed (g : MlS) (S : List MlS)
    (C : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)) : Prop :=
  ∀ f, S.contains f = true → ∀ ps b rs, C f = some (ps, b, rs) → gwFreeB g S b = true

theorem lookupCode_some' {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f : MlS} {vs : List (ValueHOL 64)} {b : ProgHOL 64} {c : HolFiniteMapExact MlS (ValueHOL 64)}
    {r : ShapeHOL} (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (b, c, r)) :
    ∃ ps, code f = some (ps, b, r) := by
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body cl rs hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, -, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    split at hx
    · simp at hx
    · rename_i ps bd rr hcode
      split at hx
      · simp only [Option.some.injEq, Prod.mk.injEq] at hx
        obtain ⟨rfl, -, rfl⟩ := hx
        exact ⟨ps, hcode⟩
      · simp at hx

/-! ## Leaves -/

section leaves
variable {g : MlS}

theorem setKvar_gw {k : VarKind} {n : MlS} (h : tgtOk g (some (k, n)) = true) (v : ValueHOL 64)
    (s : PanSemStateFiniteExact 64 σ) :
    (setKvarHOLFinite k n v s).globals.lookup g = s.globals.lookup g := by
  cases k with
  | «local» => rfl
  | «global» =>
      simp only [tgtOk, decide_eq_true_eq] at h
      exact lookup_update_ne _ _ h

theorem shStore_globals (st : PanSemStateExact 64 σ) {inst : DecidablePred st.shMemaddrs}
    (w a : BitVec 64) (nb : Nat) : (shMemStoreHOLExact st w a nb).2.globals = st.globals := by
  unfold shMemStoreHOLExact
  repeat' split
  all_goals rfl

macro "gwLeaf" : tactic => `(tactic| (
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  repeat' split
  all_goals (first | rfl | skip)))

theorem gw_assign (s : PanSemStateFiniteExact 64 σ) (k : VarKind) (n : MlS) (e : ExpHOL 64)
    (h : tgtOk g (some (k, n)) = true) :
    (evaluateHOLFiniteState s (.assign k n e)).2.globals.lookup g = s.globals.lookup g := by
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  split
  · rfl
  · split
    · exact setKvar_gw h _ _
    · rfl

theorem gw_prim (s : PanSemStateFiniteExact 64 σ) n o a :
    (evaluateHOLFiniteState s (.primitive n o a)).2.globals.lookup g = s.globals.lookup g := by
  gwLeaf

theorem gw_store (s : PanSemStateFiniteExact 64 σ) a v :
    (evaluateHOLFiniteState s (.store a v)).2.globals.lookup g = s.globals.lookup g := by
  gwLeaf

theorem gw_store32 (s : PanSemStateFiniteExact 64 σ) a v :
    (evaluateHOLFiniteState s (.store32 a v)).2.globals.lookup g = s.globals.lookup g := by
  gwLeaf

theorem gw_storeB (s : PanSemStateFiniteExact 64 σ) a v :
    (evaluateHOLFiniteState s (.storeByte a v)).2.globals.lookup g = s.globals.lookup g := by
  gwLeaf

theorem gw_ext (s : PanSemStateFiniteExact 64 σ) f a b c d :
    (evaluateHOLFiniteState s (.extCall f a b c d)).2.globals.lookup g = s.globals.lookup g := by
  gwLeaf

theorem gw_raise (s : PanSemStateFiniteExact 64 σ) x e :
    (evaluateHOLFiniteState s (.raise x e)).2.globals.lookup g = s.globals.lookup g := by
  gwLeaf

theorem gw_ret (s : PanSemStateFiniteExact 64 σ) e :
    (evaluateHOLFiniteState s (.return e)).2.globals.lookup g = s.globals.lookup g := by
  gwLeaf

theorem gw_shl (s : PanSemStateFiniteExact 64 σ) o (k : VarKind) (n : MlS) a
    (h : tgtOk g (some (k, n)) = true) :
    (evaluateHOLFiniteState s (.shMemLoad o k n a)).2.globals.lookup g = s.globals.lookup g := by
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  split
  · split
    · dsimp only
      unfold shMemLoadHOLFiniteExact
      repeat' split
      all_goals first
        | rfl
        | exact setKvar_gw h _ _
    · rfl
  · rfl

theorem gw_shs (s : PanSemStateFiniteExact 64 σ) o a v :
    (evaluateHOLFiniteState s (.shMemStore o a v)).2.globals.lookup g = s.globals.lookup g := by
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  split
  · simp only [ofExact]
    rw [shStore_globals]
  · rfl

end leaves

/-! ## Calls -/

/-- The callee body of a checked call keeps `g`, runs at a smaller clock and keeps the
code map. -/
theorem gw_callee {g : MlS} {S : List MlS}
    {C : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)} (hS : GwClosed g S C)
    {k : Nat}
    (ih : ∀ m < k, ∀ (p : ProgHOL 64) (s : PanSemStateFiniteExact 64 σ), gwFreeB g S p = true →
      s.code.lookup = C → s.clock ≤ m →
      (evaluateHOLFiniteState s p).2.globals.lookup g = s.globals.lookup g)
    {s : PanSemStateFiniteExact 64 σ} {f : MlS} {vs : List (ValueHOL 64)} {body : ProgHOL 64}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {rs : ShapeHOL} (hc : s.code.lookup = C)
    (hf : S.contains f = true)
    (hlook : lookupCodeHOLFinite s.code.lookup f vs = some (body, callee, rs))
    (hclock : ¬ s.clock = 0) (hk : s.clock ≤ k) :
    (evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body).2.globals.lookup g =
        s.globals.lookup g ∧
      (evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body).2.clock < k ∧
      (evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body).2.code.lookup = C := by
  rw [hc] at hlook
  obtain ⟨ps, hcode⟩ := lookupCode_some' hlook
  have hd : (callEntryStateHOLFinite s callee).clock < k := by
    simp only [callEntryStateHOLFinite]; omega
  refine ⟨ih _ hd body _ (hS f hf ps body rs hcode) hc (Nat.le_refl _), ?_, ?_⟩
  · exact Nat.lt_of_le_of_lt (evaluateHOLFiniteState_clock_le _ body) hd
  · rw [code_preserved]; exact hc

/-! ## Preservation -/

theorem gw_level {g : MlS} {S : List MlS}
    {C : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)} (hS : GwClosed g S C)
    (k : Nat)
    (ih : ∀ m < k, ∀ (p : ProgHOL 64) (s : PanSemStateFiniteExact 64 σ), gwFreeB g S p = true →
      s.code.lookup = C → s.clock ≤ m →
      (evaluateHOLFiniteState s p).2.globals.lookup g = s.globals.lookup g) :
    ∀ (p : ProgHOL 64) (s : PanSemStateFiniteExact 64 σ), gwFreeB g S p = true →
      s.code.lookup = C → s.clock ≤ k →
      (evaluateHOLFiniteState s p).2.globals.lookup g = s.globals.lookup g
  | .skip, s, _, _, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .break, s, _, _, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .continue, s, _, _, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .annot _ _, s, _, _, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .tick, s, _, _, _ => by rw [evaluateHOLFiniteState_tick]; split <;> rfl
  | .assign k' n e, s, hp, _, _ => gw_assign s k' n e hp
  | .primitive n o a, s, _, _, _ => gw_prim s n o a
  | .store a v, s, _, _, _ => gw_store s a v
  | .store32 a v, s, _, _, _ => gw_store32 s a v
  | .storeByte a v, s, _, _, _ => gw_storeB s a v
  | .extCall f a b c d, s, _, _, _ => gw_ext s f a b c d
  | .raise x e, s, _, _, _ => gw_raise s x e
  | .return e, s, _, _, _ => gw_ret s e
  | .shMemLoad o k' n a, s, hp, _, _ => gw_shl s o k' n a hp
  | .shMemStore o a v, s, _, _, _ => gw_shs s o a v
  | .seq a b, s, hp, hc, hk => by
      simp only [gwFreeB, Bool.and_eq_true] at hp
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
      dsimp only
      have ha := gw_level hS k ih a s hp.1 hc hk
      split
      · have hc' : (evaluateHOLFiniteState s a).2.clock ≤ k :=
          Nat.le_trans (evaluateHOLFiniteState_clock_le s a) hk
        have hcode : (evaluateHOLFiniteState s a).2.code.lookup = C := by
          rw [code_preserved]; exact hc
        rw [gw_level hS k ih b _ hp.2 hcode hc', ha]
      · exact ha
  | .ite c a b, s, hp, hc, hk => by
      simp only [gwFreeB, Bool.and_eq_true] at hp
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
      dsimp only
      split
      · split
        · exact gw_level hS k ih b s hp.2 hc hk
        · exact gw_level hS k ih a s hp.1 hc hk
      · rfl
  | .dec n sh e b, s, hp, hc, hk => by
      simp only [gwFreeB] at hp
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e b)]
      dsimp only
      split
      · rfl
      · split
        · exact gw_level hS k ih b (setVarHOLFinite n _ s) hp hc hk
        · rfl
  | .while c b, s, hp, hc, hk => by
      simp only [gwFreeB] at hp
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c b)]
      dsimp only
      split
      · split
        · split
          · rfl
          · rename_i hclock
            have hd : (decClockHOLFinite s).clock < k := by
              simp only [decClockHOLFinite]; omega
            have hb := ih _ hd b (decClockHOLFinite s) hp hc (Nat.le_refl _)
            have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) b).2.clock < k :=
              Nat.lt_of_le_of_lt (evaluateHOLFiniteState_clock_le _ b) hd
            have hcode : (evaluateHOLFiniteState (decClockHOLFinite s) b).2.code.lookup = C := by
              rw [code_preserved]; exact hc
            have hw : gwFreeB g S (.while c b) = true := hp
            split
            · rw [ih _ hlt (.while c b) _ hw hcode (Nat.le_refl _), hb]; rfl
            · rw [ih _ hlt (.while c b) _ hw hcode (Nat.le_refl _), hb]; rfl
            · exact hb
            · exact hb
        · rfl
      · rfl
  | .call none f args, s, hp, hc, hk => by
      simp only [gwFreeB] at hp
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.call none f args)]
      dsimp only
      split
      · rfl
      · split
        · rfl
        · rename_i body callee rs hlook
          split
          · rfl
          · rename_i hclock
            obtain ⟨hbg, -, -⟩ := gw_callee hS ih hc hp hlook hclock hk
            generalize evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E at hbg ⊢
            obtain ⟨r, st⟩ := E
            rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
            all_goals (repeat' split)
            all_goals exact hbg
  | .call (some (tgt, none)) f args, s, hp, hc, hk => by
      simp only [gwFreeB, Bool.and_eq_true] at hp
      obtain ⟨hf, htgt⟩ := hp
      rcases tgt with _ | ⟨kk, nn⟩
      all_goals
        rw [evaluateHOLFiniteState_eq_evaluate_def s _]
        dsimp only
        split
        · rfl
        · split
          · rfl
          · rename_i body callee rs hlook
            split
            · rfl
            · rename_i hclock
              obtain ⟨hbg, -, -⟩ := gw_callee hS ih hc hf hlook hclock hk
              generalize evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
                at hbg ⊢
              obtain ⟨r, st⟩ := E
              dsimp only at hbg
              rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
              all_goals (repeat' split)
              all_goals first
                | exact hbg
                | exact (setKvar_gw htgt _ _).trans hbg
  | .call (some (tgt, some (eid, hv, hpr))) f args, s, hp, hc, hk => by
      simp only [gwFreeB, Bool.and_eq_true] at hp
      obtain ⟨⟨hf, htgt⟩, hhp⟩ := hp
      rcases tgt with _ | ⟨kk, nn⟩
      all_goals
        rw [evaluateHOLFiniteState_eq_evaluate_def s _]
        dsimp only
        split
        · rfl
        · split
          · rfl
          · rename_i body callee rs hlook
            split
            · rfl
            · rename_i hclock
              obtain ⟨hbg, hst, hcode⟩ := gw_callee hS ih hc hf hlook hclock hk
              generalize evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
                at hbg hst hcode ⊢
              obtain ⟨r, st⟩ := E
              dsimp only at hbg hst hcode
              rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
              all_goals (repeat' split)
              all_goals first
                | exact hbg
                | exact (setKvar_gw htgt _ _).trans hbg
                | exact (ih st.clock hst hpr (setVarHOLFinite hv v { st with locals := s.locals })
                    hhp hcode (Nat.le_refl _)).trans hbg
  | .decCall rn sh f args cont, s, hp, hc, hk => by
      simp only [gwFreeB, Bool.and_eq_true] at hp
      obtain ⟨hf, hk'⟩ := hp
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn sh f args cont)]
      dsimp only
      split
      · rfl
      · split
        · rfl
        · rename_i body callee rs hlook
          split
          · rfl
          · rename_i hclock
            obtain ⟨hbg, hst, hcode⟩ := gw_callee hS ih hc hf hlook hclock hk
            generalize evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
              at hbg hst hcode ⊢
            obtain ⟨r, st⟩ := E
            dsimp only at hbg hst hcode
            rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
            all_goals (repeat' split)
            all_goals first
              | exact hbg
              | exact (ih st.clock hst cont (setVarHOLFinite rn v { st with locals := s.locals })
                  hk' hcode (Nat.le_refl _)).trans hbg

/-- A checked program keeps the global `g`, from any state with code map `C`. -/
theorem gw_preserved {g : MlS} {S : List MlS}
    {C : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)} (hS : GwClosed g S C)
    (p : ProgHOL 64) (s : PanSemStateFiniteExact 64 σ) (hp : gwFreeB g S p = true)
    (hc : s.code.lookup = C) :
    (evaluateHOLFiniteState s p).2.globals.lookup g = s.globals.lookup g := by
  suffices H : ∀ k (p : ProgHOL 64) (s : PanSemStateFiniteExact 64 σ), gwFreeB g S p = true →
      s.code.lookup = C → s.clock ≤ k →
      (evaluateHOLFiniteState s p).2.globals.lookup g = s.globals.lookup g from
    H _ p s hp hc (Nat.le_refl _)
  intro k
  induction k using Nat.strongRecOn with
  | _ k ih => exact gw_level hS k ih

/-- **Footprint spec.** A function of a closed checked set keeps the global `g`. -/
theorem funSpec_gw {X : Ctx 64} {g : MlS} {S : List MlS} (hS : GwClosed g S X.code.lookup)
    {f : MlS} (hf : S.contains f = true) :
    FunSpec σ X f (fun _ s _ t => t.globals.lookup g = s.globals.lookup g) := by
  intro vs body callee rs hl s hs _ r _
  obtain ⟨ps, hcode⟩ := lookupCode_some' hl
  exact gw_preserved hS body s (hS f hf ps body rs hcode) (by rw [hs.1])

end InitECandidate.Solver.Spec
