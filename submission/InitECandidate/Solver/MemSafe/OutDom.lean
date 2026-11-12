import InitECandidate.Solver.Spec.MemFree
import InitECandidate.Solver.MemSafe.Summary

/-!
# Memory outside the domain never changes

Every memory update of the semantics (word stores `panMemStoresHOL`, `panMemStore32HOL`, byte
stores `panMemStoreByteWord8HOL`, and the FFI result `panWriteBytearrayWord8HOL` of `extCall`)
writes only addresses of the memory domain; shared-memory stores do not touch `memory`.

`memOut_preserved`: for an address `x` outside `memaddrs`, every evaluation keeps the word at
`x`. With an aligned domain (`AlignedDom`) this turns a byte-wise modifies clause (the htab
specs' `ModifiesOnly (RegionOrFresh …)`) into a cell-wise one: unaligned addresses keep their
words (`modifiesOnly_aligned`).

Same clock-and-program induction as `Spec/MemFree.lean` (`mw_level`).
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-! ## The memory primitives -/

theorem stores_out {d : BitVec 64 → Prop} [DecidablePred d] {x : BitVec 64} (hx : ¬ d x) :
    ∀ (vs : List (HolWordLab 64)) (a : BitVec 64) (m m' : BitVec 64 → HolWordLab 64),
      panMemStoresHOL a vs d m = some m' → m' x = m x
  | [], a, m, m', h => by
      simp only [panMemStoresHOL, Option.some.injEq] at h
      rw [h]
  | v :: vs, a, m, m', h => by
      by_cases hd : d a
      · simp only [panMemStoresHOL, panMemStoreHOL, if_pos hd] at h
        rw [stores_out hx vs _ _ _ h]
        have hne : x ≠ a := fun e' => hx (e' ▸ hd)
        simp only [hne, if_false]
      · simp [panMemStoresHOL, panMemStoreHOL, if_neg hd] at h

theorem store32_out {d : BitVec 64 → Prop} [DecidablePred d] {x : BitVec 64} (hx : ¬ d x)
    {m m' : BitVec 64 → HolWordLab 64} {be : Bool} {a : BitVec 64} {v : BitVec 32}
    (h : panMemStore32HOL m d be a v = some m') : m' x = m x := by
  unfold panMemStore32HOL at h
  dsimp only at h
  split_ifs at h with h4 hd
  rw [← Option.some.inj h]
  have hne : x ≠ panByteAlignHOL a := fun e' => hx (e' ▸ hd)
  simp only [hne, if_false]

theorem storeByte_out {d : BitVec 64 → Prop} [DecidablePred d] {x : BitVec 64} (hx : ¬ d x)
    {m m' : BitVec 64 → HolWordLab 64} {be : Bool} {a : BitVec 64} {b : BitVec 8}
    (h : panMemStoreByteWord8HOL m d be a b = some m') : m' x = m x := by
  unfold panMemStoreByteWord8HOL at h
  dsimp only at h
  split_ifs at h with hd
  rw [← Option.some.inj h]
  have hne : x ≠ panByteAlignHOL a := fun e' => hx (e' ▸ hd)
  simp only [hne, if_false]

theorem writeBytes_out {d : BitVec 64 → Prop} [DecidablePred d] {x : BitVec 64} (hx : ¬ d x)
    (be : Bool) : ∀ (bs : List (BitVec 8)) (a : BitVec 64) (m : BitVec 64 → HolWordLab 64),
      panWriteBytearrayWord8HOL a bs m d be x = m x
  | [], a, m => by simp only [panWriteBytearrayWord8HOL]
  | b :: bs, a, m => by
      simp only [panWriteBytearrayWord8HOL]
      cases h : panMemStoreByteWord8HOL (panWriteBytearrayWord8HOL (a + 1) bs m d be) d be a b with
      | some m' => simp only; rw [storeByte_out hx h, writeBytes_out hx be bs (a + 1) m]
      | none => rfl

/-! ## Leaf statements -/

theorem out_store (s : PanSemStateFiniteExact 64 σ) (a v : ExpHOL 64) {x : BitVec 64}
    (hx : ¬ s.memaddrs x) : (evaluateHOLFiniteState s (.store a v)).2.memory x = s.memory x := by
  classical
  rw [evaluateHOLFiniteState_store]
  split
  · split
    · split
      · rename_i m' h
        exact stores_out hx _ _ _ _ h
      · rfl
    · rfl
  · rfl

theorem out_store32 (s : PanSemStateFiniteExact 64 σ) (a v : ExpHOL 64) {x : BitVec 64}
    (hx : ¬ s.memaddrs x) : (evaluateHOLFiniteState s (.store32 a v)).2.memory x = s.memory x := by
  classical
  rw [evaluateHOLFiniteState_store32]
  split
  · split
    · split
      · rename_i m' h
        exact store32_out hx h
      · rfl
    · rfl
  · rfl

theorem out_storeByte (s : PanSemStateFiniteExact 64 σ) (a v : ExpHOL 64) {x : BitVec 64}
    (hx : ¬ s.memaddrs x) :
    (evaluateHOLFiniteState s (.storeByte a v)).2.memory x = s.memory x := by
  classical
  rw [evaluateHOLFiniteState_storeByte]
  split
  · split
    · split
      · rename_i m' h
        exact storeByte_out hx h
      · rfl
    · rfl
  · rfl

theorem out_extCall (s : PanSemStateFiniteExact 64 σ) f a b c d {x : BitVec 64}
    (hx : ¬ s.memaddrs x) :
    (evaluateHOLFiniteState s (.extCall f a b c d)).2.memory x = s.memory x := by
  classical
  rw [evaluateHOLFiniteState_extCall_source]
  split
  · split
    · split
      · rfl
      · exact writeBytes_out hx _ _ _ _
    · rfl
  · rfl

theorem out_shMemStore (s : PanSemStateFiniteExact 64 σ) o a v :
    (evaluateHOLFiniteState s (.shMemStore o a v)).2.memory = s.memory := by
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  split
  · simp only [ofExact]
    unfold shMemStoreHOLExact
    repeat' split
    all_goals rfl
  · rfl

/-! ## The induction -/

theorem out_level (x : BitVec 64) (k : Nat)
    (ih : ∀ m < k, ∀ (p : ProgHOL 64) (s : PanSemStateFiniteExact 64 σ), s.clock ≤ m →
      ¬ s.memaddrs x → (evaluateHOLFiniteState s p).2.memory x = s.memory x) :
    ∀ (p : ProgHOL 64) (s : PanSemStateFiniteExact 64 σ), s.clock ≤ k → ¬ s.memaddrs x →
      (evaluateHOLFiniteState s p).2.memory x = s.memory x
  | .skip, s, _, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .break, s, _, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .continue, s, _, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .annot _ _, s, _, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .tick, s, _, _ => by rw [evaluateHOLFiniteState_tick]; split <;> rfl
  | .assign k' n e, s, _, _ => by rw [mw_assign s k' n e]
  | .primitive n o a, s, _, _ => by rw [mw_prim s n o a]
  | .store a v, s, _, hx => out_store s a v hx
  | .store32 a v, s, _, hx => out_store32 s a v hx
  | .storeByte a v, s, _, hx => out_storeByte s a v hx
  | .extCall f a b c d, s, _, hx => out_extCall s f a b c d hx
  | .shMemStore o a v, s, _, _ => by rw [out_shMemStore s o a v]
  | .raise x' e, s, _, _ => by rw [mw_raise s x' e]
  | .return e, s, _, _ => by rw [mw_ret s e]
  | .shMemLoad o k' n a, s, _, _ => by rw [mw_shl s o k' n a]
  | .seq a b, s, hk, hx => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
      dsimp only
      have ha := out_level x k ih a s hk hx
      split
      · have hc' : (evaluateHOLFiniteState s a).2.clock ≤ k :=
          Nat.le_trans (evaluateHOLFiniteState_clock_le s a) hk
        have hx' : ¬ (evaluateHOLFiniteState s a).2.memaddrs x := by
          rw [memaddrs_preserved]; exact hx
        rw [out_level x k ih b _ hc' hx', ha]
      · exact ha
  | .ite c a b, s, hk, hx => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
      dsimp only
      split
      · split
        · exact out_level x k ih b s hk hx
        · exact out_level x k ih a s hk hx
      · rfl
  | .dec n sh e b, s, hk, hx => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e b)]
      dsimp only
      split
      · rfl
      · split
        · exact out_level x k ih b (setVarHOLFinite n _ s) hk hx
        · rfl
  | .while c b, s, hk, hx => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c b)]
      dsimp only
      split
      · split
        · split
          · rfl
          · rename_i hclock
            have hd : (decClockHOLFinite s).clock < k := by
              simp only [decClockHOLFinite]; omega
            have hb := ih _ hd b (decClockHOLFinite s) (Nat.le_refl _) hx
            have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) b).2.clock < k :=
              Nat.lt_of_le_of_lt (evaluateHOLFiniteState_clock_le _ b) hd
            have hx' : ¬ (evaluateHOLFiniteState (decClockHOLFinite s) b).2.memaddrs x := by
              rw [memaddrs_preserved]; exact hx
            split
            · rw [ih _ hlt (.while c b) _ (Nat.le_refl _) hx', hb]; rfl
            · rw [ih _ hlt (.while c b) _ (Nat.le_refl _) hx', hb]; rfl
            · exact hb
            · exact hb
        · rfl
      · rfl
  | .call info f args, s, hk, hx => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.call info f args)]
      dsimp only
      split
      · rfl
      · split
        · rfl
        · rename_i body callee rs _
          split
          · rfl
          · rename_i hclock
            have hd : (callEntryStateHOLFinite s callee).clock < k := by
              simp only [callEntryStateHOLFinite]; omega
            have hb := ih _ hd body (callEntryStateHOLFinite s callee) (Nat.le_refl _) hx
            have hcl := evaluateHOLFiniteState_clock_le (callEntryStateHOLFinite s callee) body
            have hdm := memaddrs_preserved (callEntryStateHOLFinite s callee) body
            generalize hE : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
              at hb hcl hdm ⊢
            obtain ⟨r, st⟩ := E
            simp only [callEntryStateHOLFinite] at hb hcl hdm
            have hst : st.clock < k := by omega
            have hx' : ¬ st.memaddrs x := by rw [hdm]; exact hx
            rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
            all_goals (repeat' split)
            all_goals first
              | exact hb
              | (simp only [setKvarHOLFinite]; split <;> exact hb)
              | (rw [ih _ hst _ _ (by simp [setVarHOLFinite]) (by simpa [setVarHOLFinite] using hx')];
                 exact hb)
  | .decCall rn sh f args cont, s, hk, hx => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn sh f args cont)]
      dsimp only
      split
      · rfl
      · split
        · rfl
        · rename_i body callee rs _
          split
          · rfl
          · rename_i hclock
            have hd : (callEntryStateHOLFinite s callee).clock < k := by
              simp only [callEntryStateHOLFinite]; omega
            have hb := ih _ hd body (callEntryStateHOLFinite s callee) (Nat.le_refl _) hx
            have hcl := evaluateHOLFiniteState_clock_le (callEntryStateHOLFinite s callee) body
            have hdm := memaddrs_preserved (callEntryStateHOLFinite s callee) body
            generalize hE : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
              at hb hcl hdm ⊢
            obtain ⟨r, st⟩ := E
            simp only [callEntryStateHOLFinite] at hb hcl hdm
            have hst : st.clock < k := by omega
            have hx' : ¬ st.memaddrs x := by rw [hdm]; exact hx
            rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
            all_goals (repeat' split)
            all_goals first
              | exact hb
              | (rw [ih _ hst _ _ (by simp [setVarHOLFinite]) (by simpa [setVarHOLFinite] using hx')];
                 exact hb)

/-- **Memory outside the domain never changes.** -/
theorem memOut_preserved (p : ProgHOL 64) (s : PanSemStateFiniteExact 64 σ) {x : BitVec 64}
    (hx : ¬ s.memaddrs x) : (evaluateHOLFiniteState s p).2.memory x = s.memory x := by
  suffices H : ∀ k (p : ProgHOL 64) (s : PanSemStateFiniteExact 64 σ), s.clock ≤ k →
      ¬ s.memaddrs x → (evaluateHOLFiniteState s p).2.memory x = s.memory x from
    H _ p s (Nat.le_refl _) hx
  intro k
  induction k using Nat.strongRecOn with
  | _ k ih => exact out_level x k ih

/-- Every good run of a function keeps the words outside the memory domain. -/
theorem funSpec_out {X : Ctx 64} (f : MlS) :
    FunSpec σ X f (fun _ s _ t => ∀ x, ¬ s.memaddrs x → t.memory x = s.memory x) := by
  intro _ body _ _ _ s _ _ _ _ x hx
  exact memOut_preserved body s hx

/-- With an aligned domain, a modifies clause can be restricted to aligned addresses. -/
theorem modifiesOnly_aligned {s t : State σ} {R : BitVec 64 → Prop}
    (hal : ∀ x, s.memaddrs x → x.toNat % 8 = 0)
    (hout : ∀ x, ¬ s.memaddrs x → t.memory x = s.memory x)
    (h : ModifiesOnly R s.memory t.memory) :
    ModifiesOnly (fun a => R a ∧ a.toNat % 8 = 0) s.memory t.memory := by
  intro a ha
  by_cases h8 : a.toNat % 8 = 0
  · exact h a (fun hr => ha ⟨hr, h8⟩)
  · exact hout a (fun hd => h8 (hal a hd))

end InitECandidate.Solver.MemSafe
