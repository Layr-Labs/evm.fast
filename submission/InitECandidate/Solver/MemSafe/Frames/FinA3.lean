import InitECandidate.Solver.MemSafe.Frames.FinA2

/-!
# `finish_child`: the handler of `create_finish`

`pa_exact`: a call with an exact effect on the child's driver slots not raising its weight;
`pa_refill`, `pa_halt`, `pa_store`; **`finH_hoare`**.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem pa_ev {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {s0 : State σ} {e c : BitVec 64}
    {rest : List Frame} {L0 : Locs} {u : State σ} (h : PA C H tEV tCK P R s0 e c rest L0 u) :
    gword u nmEv = some e := by
  obtain ⟨-, -, Γa, -, hch, -⟩ := h
  obtain ⟨e1, c1, rest1, hfs1, hev, -⟩ := hch.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs1
  obtain ⟨⟨rfl, rfl⟩, rfl⟩ := hfs1
  exact hev

section steps
variable {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {Ic : Gam → Mem → Nat → BitVec 64 → BitVec 64 → Prop} {W : FinGw} (Hy : FinHyps σ X C H tEV tCK P R Ic W)
  {s0 : State σ} {e c : BitVec 64} {rest : List Frame} {L0 : Locs}

include Hy

/-- **An exact child-side call** writing driver slots of the running record. -/
theorem pa_exact {f : MlS} {args : List (ExpHOL 64)} {Mf : BitVec 64 → Mem → BitVec 64 → Mem}
    (hf : FunSpec σ X f (fun vs s r t => Good (some r) → r = .returned (.val (.word 0)) ∧
      ∀ e0, gword s nmEv = some e0 → t.globals = s.globals ∧ ∃ x, t.memory = Mf x s.memory e0))
    (hmod : ∀ x m e0, ModifiesOnly (fun a => ∃ j ∈ evDriverSlots, a = e0 + BitVec.ofNat 64 (8 * j))
      m (Mf x m e0))
    (hgas : ∀ x m e0, (fld (Mf x m e0) e0 64).toNat + (fld (Mf x m e0) e0 192).toNat ≤
      (fld m e0 64).toNat + (fld m e0 192).toNat)
    (h104 : ∀ x m e0, fld (Mf x m e0) e0 104 = fld m e0 104) :
    HoareG σ X (PA C H tEV tCK P R s0 e c rest L0) (callD f args)
      (fun ro u => (ro = none ∧ PA C H tEV tCK P R s0 e c rest L0 u) ∨ (ro ≠ none ∧ PAb C H ro u)) := by
  have hF := fin_hF Hy
  refine hoareG_callD (FunSpec.and hf (funSpec_dom _)) ?_ ?_
  · intro s _ hpa vs _ callee v st ⟨hR, hd, hbe⟩ _
    obtain ⟨-, hE⟩ := hR (by simp [Good])
    have hev0 : gword s nmEv = some e := pa_ev hpa
    have hev : gword (callEntryStateHOLFinite s callee) nmEv = some e := hev0
    obtain ⟨hg, x, hm⟩ := hE e hev
    have hmod' : ModifiesOnly (fun a => ∃ j ∈ evDriverSlots, a = e + BitVec.ofNat 64 (8 * j))
        s.memory ({ st with locals := s.locals } : State σ).memory := by
      show ModifiesOnly _ s.memory st.memory
      rw [hm]; exact hmod x _ e
    refine Or.inl ⟨rfl, pa_top hF Hy.xcfg Hy.msgTy hpa hmod' hg hd hbe rfl ?_ ?_⟩
    · show (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤ _
      rw [hm]; exact hgas x _ e
    · show fld st.memory e 104 = _
      rw [hm]; exact h104 x _ e
  · intro s _ hpa vs _ callee r st ⟨hR, _, _⟩ _ habn
    obtain ⟨rfl, -⟩ := hR (good_of_abn habn)
    exact absurd rfl (not_returned_of_abn habn _)

theorem pa_refill :
    HoareG σ X (PA C H tEV tCK P R s0 e c rest L0) (callD (nm "refill_frame_state_gas") [])
      (fun ro u => (ro = none ∧ PA C H tEV tCK P R s0 e c rest L0 u) ∨ (ro ≠ none ∧ PAb C H ro u)) := by
  refine pa_exact Hy (Mf := fun S m e0 => refillMem m e0 S) ?_ ?_ ?_ ?_
  · refine FunSpec.mono (refill_spec Hy.code) fun vs s r t hR hg => ?_
    obtain ⟨e1, S, he1, hr, hgl, hm⟩ := hR hg
    refine ⟨hr, fun e0 he0 => ⟨hgl, S, ?_⟩⟩
    rw [he1, Option.some.injEq] at he0; rw [hm, he0]
  · intro S m e0
    unfold refillMem
    exact modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _)
      ⟨8, by simp [evDriverSlots], rfl⟩ _) ⟨9, by simp [evDriverSlots], rfl⟩ _)
      ⟨24, by simp [evDriverSlots], rfl⟩ _
  · intro S m e0
    have g64 : fld (refillMem m e0 S) e0 64 = fld m e0 64 + fld m e0 192 := by
      unfold refillMem
      rw [fld_upd_ne' (ne_off (i := 64) (j := 192) (by decide) (by decide) (by decide)),
        fld_upd_ne' (ne_off (i := 64) (j := 72) (by decide) (by decide) (by decide)), fld_upd_eq]
    have g192 : fld (refillMem m e0 S) e0 192 = 0 := by unfold refillMem; rw [fld_upd_eq]
    rw [g64, g192]
    have := toNat_add_le (fld m e0 64) (fld m e0 192)
    have h0 : (0 : BitVec 64).toNat = 0 := rfl
    omega
  · intro S m e0
    unfold refillMem
    rw [fld_upd_ne' (ne_off (i := 104) (j := 192) (by decide) (by decide) (by decide)),
      fld_upd_ne' (ne_off (i := 104) (j := 72) (by decide) (by decide) (by decide)),
      fld_upd_ne' (ne_off (i := 104) (j := 64) (by decide) (by decide) (by decide))]

theorem pa_halt {a : ExpHOL 64} :
    HoareG σ X (PA C H tEV tCK P R s0 e c rest L0) (callD (nm "frame_halt") [a])
      (fun ro u => (ro = none ∧ PA C H tEV tCK P R s0 e c rest L0 u) ∨ (ro ≠ none ∧ PAb C H ro u)) := by
  refine pa_exact Hy (Mf := fun err m e0 => haltMem m e0 err) ?_ ?_ ?_ ?_
  · refine FunSpec.mono (halt_spec Hy.code) fun vs s r t hR hg => ?_
    obtain ⟨e1, err, -, he1, hr, hgl, hm⟩ := hR hg
    refine ⟨hr, fun e0 he0 => ⟨hgl, err, ?_⟩⟩
    rw [he1, Option.some.injEq] at he0; rw [hm, he0]
  · intro err m e0
    unfold haltMem
    exact modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _)
      ⟨23, by simp [evDriverSlots], rfl⟩ _) ⟨8, by simp [evDriverSlots], rfl⟩ _)
      ⟨20, by simp [evDriverSlots], rfl⟩ _
  · intro err m e0
    have g64 : fld (haltMem m e0 err) e0 64 = 0 := by
      unfold haltMem
      rw [fld_upd_ne' (ne_off (i := 64) (j := 160) (by decide) (by decide) (by decide)), fld_upd_eq]
    have g192 : fld (haltMem m e0 err) e0 192 = fld m e0 192 := by
      unfold haltMem
      rw [fld_upd_ne' (ne_off (i := 192) (j := 160) (by decide) (by decide) (by decide)),
        fld_upd_ne' (ne_off (i := 192) (j := 64) (by decide) (by decide) (by decide)),
        fld_upd_ne' (ne_off (i := 192) (j := 184) (by decide) (by decide) (by decide))]
    rw [g64, g192]
    have h0 : (0 : BitVec 64).toNat = 0 := rfl
    omega
  · intro err m e0
    unfold haltMem
    rw [fld_upd_ne' (ne_off (i := 104) (j := 160) (by decide) (by decide) (by decide)),
      fld_upd_ne' (ne_off (i := 104) (j := 64) (by decide) (by decide) (by decide)),
      fld_upd_ne' (ne_off (i := 104) (j := 184) (by decide) (by decide) (by decide))]

/-- `st ev + k, x` for a driver slot `k = 8 j` other than the weight slots. -/
theorem pa_store {k j : Nat} (hk : k = 8 * j) (hj : j ∈ evDriverSlots) (hj8 : j ≠ 8)
    (hj24 : j ≠ 24) (hj13 : j ≠ 13) {a : ExpHOL 64}
    (hval : ∀ s v, PA C H tEV tCK P R s0 e c rest L0 s → ev s a = some v → ∃ x, v = .val (.word x)) :
    HoareG σ X (PA C H tEV tCK P R s0 e c rest L0) (stG "ev" k a)
      (fun ro u => (ro = none ∧ PA C H tEV tCK P R s0 e c rest L0 u) ∨ (ro ≠ none ∧ PAb C H ro u)) := by
  have hF := fin_hF Hy
  subst hk
  refine hoareG_stG fun s _ hpa g0 v hg0 hv => ?_
  rw [pa_ev hpa, Option.some.injEq] at hg0
  subst hg0
  have hj' : j ≤ 24 := by simp [evDriverSlots] at hj; omega
  obtain ⟨x, rfl⟩ := hval s v hpa hv
  refine ⟨x, rfl, fun _ => Or.inl ⟨rfl, pa_top hF Hy.xcfg Hy.msgTy hpa
    (modifiesOnly_upd (modifiesOnly_refl _ _) ⟨j, hj, rfl⟩ _) rfl rfl rfl rfl ?_ ?_⟩⟩
  · show (fld (upd s.memory (e + BitVec.ofNat 64 (8 * j)) x) e 64).toNat +
        (fld (upd s.memory (e + BitVec.ofNat 64 (8 * j)) x) e 192).toNat ≤
      (fld s.memory e 64).toNat + (fld s.memory e 192).toNat
    rw [fld_upd_ne' (ne_off (i := 64) (j := 8 * j) (by decide) (by omega) (by omega)),
      fld_upd_ne' (ne_off (i := 192) (j := 8 * j) (by decide) (by omega) (by omega))]
  · show fld (upd s.memory (e + BitVec.ofNat 64 (8 * j)) x) e 104 = fld s.memory e 104
    rw [fld_upd_ne' (ne_off (i := 104) (j := 8 * j) (by decide) (by omega) (by omega))]

/-- **Eon: `st ev + 128, x`** (`EV_OUTPUT_N`, a word below `2^32`). -/
theorem pa_storeOut {x : BitVec 64} (hx : x.toNat < 2 ^ 32) {a : ExpHOL 64}
    (hval : ∀ s v, PA C H tEV tCK P R s0 e c rest L0 s → ev s a = some v → v = .val (.word x)) :
    HoareG σ X (PA C H tEV tCK P R s0 e c rest L0) (stG "ev" 128 a)
      (fun ro u => (ro = none ∧ PA C H tEV tCK P R s0 e c rest L0 u) ∨ (ro ≠ none ∧ PAb C H ro u)) := by
  have hF := fin_hF Hy
  refine hoareG_stG fun s _ hpa g0 v hg0 hv => ?_
  rw [pa_ev hpa, Option.some.injEq] at hg0
  subst hg0
  have hvx := hval s v hpa hv
  subst hvx
  refine ⟨x, rfl, fun _ => Or.inl ⟨rfl, pa_top16 hF Hy.xcfg Hy.msgTy hpa
    (modifiesOnly_upd (modifiesOnly_refl _ _) ⟨16, by simp [evDriverSlots16], rfl⟩ _) ?_ rfl rfl rfl rfl ?_ ?_⟩⟩
  · show (rd (upd s.memory (e + BitVec.ofNat 64 128) x) (e + BitVec.ofNat 64 128)).toNat < 2 ^ 32
    rw [rd_upd, if_pos rfl]; exact hx
  · show (fld (upd s.memory (e + BitVec.ofNat 64 128) x) e 64).toNat +
        (fld (upd s.memory (e + BitVec.ofNat 64 128) x) e 192).toNat ≤
      (fld s.memory e 64).toNat + (fld s.memory e 192).toNat
    rw [fld_upd_ne' (ne_off (i := 64) (j := 128) (by decide) (by omega) (by omega)),
      fld_upd_ne' (ne_off (i := 192) (j := 128) (by decide) (by omega) (by omega))]
  · show fld (upd s.memory (e + BitVec.ofNat 64 128) x) e 104 = fld s.memory e 104
    rw [fld_upd_ne' (ne_off (i := 104) (j := 128) (by decide) (by omega) (by omega))]

end steps

end InitECandidate.Solver.MemSafe.Frames
