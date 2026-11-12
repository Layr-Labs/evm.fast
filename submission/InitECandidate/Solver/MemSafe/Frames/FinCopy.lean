import InitECandidate.Solver.MemSafe.Frames.FinOk

/-!
# `finish_child`: the output copy of a call

```
var 1 actual = min(out_size, lds 1 (child + EV_OUTPUT_N));
if actual != 0 { memcpy(MEM_PTR(out_start), lds 1 (ev + EV_RETDATA), actual); }
```

`bufOK_mem`: a range inside the scalar memory object of the parent is a writable buffer (the
outRange fact of the chain gives `out_start + out_size ≤ MEM_LEN`). **`finCopy_hoare`**.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- A range of a scalar object is a buffer of scalar cells. -/
theorem scell_mem {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {x : Obj} (hx : x ∈ Γ) (hsc : ∀ k, (C.ty x.ty).slot k = .scalar) {len : Nat}
    (hlen : len ≤ x.size) (h8 : len % 8 = 0) {os n : Nat} (hon : os + n ≤ len) {a : BitVec 64}
    (ha : Overlap (x.lo + os) n a) : SCell C Γ a := by
  obtain ⟨ha8, ha1, ha2⟩ := ha
  have hx8 := (lay_obj hL hx).1
  have hlo : x.lo ≤ a.toNat := by omega
  have hhi : a.toNat + 8 ≤ x.lo + len := by omega
  have hk : x.HasSlot ((a.toNat - x.lo) / 8) := by unfold Obj.HasSlot; omega
  refine ⟨x, hx, (a.toNat - x.lo) / 8, hk, hsc _, ?_⟩
  apply BitVec.eq_of_toNat_eq
  rw [(cell_toNat hord hL hx hk).1]
  omega

theorem not_prot_of_scell {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {a : BitVec 64} (h : SCell C Γ a) : ¬ ProtCell C Γ a := by
  rintro ⟨o', ho', k', hk', hpr', rfl⟩
  obtain ⟨o, ho, k, hk, hsc, he⟩ := h
  obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he.symm
  rw [hsc] at hpr'; cases hpr'

theorem minF_le_left (a b : BitVec 64) : (minF a b).toNat ≤ a.toNat := by
  unfold minF; split
  · exact le_refl _
  · rename_i h; rw [BitVec.lt_def] at h; omega

section steps
variable {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {Ic : Gam → Mem → Nat → BitVec 64 → BitVec 64 → Prop} {W : FinGw} (Hy : FinHyps σ X C H tEV tCK P R Ic W)
  {sw : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {L : Locs}

include Hy

/-- **The output copy.** -/
theorem finCopy_hoare {os osz : BitVec 64}
    (hLos : L.lookup (nm "out_start") = some (.val (.word os)))
    (hLosz : L.lookup (nm "out_size") = some (.val (.word osz)))
    (hout : osz = 0 ∨ os.toNat + osz.toNat ≤ (fld sw.memory e' 32).toNat) :
    HoareG σ X (BS C H tEV tCK P R sw e c e' c' rest L (GasB sw e e') false) finCopy
      (fun ro u => (ro = none ∧ BS C H tEV tCK P R sw e c e' c' rest L (GasB sw e e') false u) ∨
        (ro ≠ none ∧ PAb C H ro u)) := by
  have hF := fin_hF Hy
  have hH := hF.hooks
  refine hoareG_decCall (FunSpec.and (min_spec Hy.code) (funSpec_dom _)) ?_ ?_
  · intro s _ hbs vs hvs callee v st ⟨hR, hd, hbe⟩ _ _
    obtain ⟨a0, b0, rfl, hr, hm, hg⟩ := hR (by simp [Good])
    simp only [PanSemResultExact.returned.injEq] at hr
    subst hr
    obtain ⟨hfl, Γu, hB, hrd, hsp, hgs⟩ := hbs
    have ha0 : a0 = osz := by
      obtain ⟨v1, r1, h1, h2, -⟩ := evs_cons_inv hvs
      simp only [List.cons.injEq] at h1
      rw [← h1.1, ev_lv, hfl _ (by simp [finNames]), hLosz] at h2
      cases h2; rfl
    subst ha0
    -- the state of the body
    let t0 := setVarHOLFinite (nm "actual") (.val (.word (minF a0 b0))) { st with locals := s.locals }
    have hBt : BS C H tEV tCK P R sw e c e' c' rest L (GasB sw e e') false t0 := by
      have hB' := finB_congr hH hB (t := t0) hm hg hd hbe
      have hrd0 : RetOK C Γu t0.memory e' := by
        rw [show t0.memory = st.memory from rfl, hm]; exact hrd
      refine ⟨fun y hy => ?_, Γu, hB', hrd0, (fun h => by cases h), ?_⟩
      · have hxy : nm "actual" ≠ y := fun h => by rw [← h] at hy; exact absurd hy (by decide)
        rw [lk_set_ne _ _ hxy]; exact hfl y hy
      · unfold GasB at hgs ⊢
        rw [show t0.memory = st.memory from rfl, hm]; exact hgs
    have hact : t0.locals.lookup (nm "actual") = some (.val (.word (minF a0 b0))) := lk_set_self _ _ _
    refine hoareG_conseq (P := fun t => t = t0)
      (Q := fun ro u => (ro = none ∧ BS C H tEV tCK P R sw e c e' c' rest L (GasB sw e e') false u) ∨
        (ro ≠ none ∧ PAb C H ro u)) ?_ (fun t _ ht => ht) (fun r t _ _ h => ?_)
    rotate_left
    · rcases h with ⟨h0, hfl', Γ2, hB2, hrd2, hsp2, hgs2⟩ | ⟨h0, hab⟩
      · refine Or.inl ⟨h0, fun y hy => ?_, Γ2, finB_locals hH hB2 _, hrd2, hsp2, hgs2⟩
        have hxy : nm "actual" ≠ y := fun h => by rw [← h] at hy; exact absurd hy (by decide)
        show (t.locals.resVarEq (nm "actual", s.locals.lookup (nm "actual"))).lookup y = L.lookup y
        rw [lookup_resVarEq_ne _ _ hxy]
        exact hfl' y hy
      · exact Or.inr ⟨h0, pab_locals hH hab _⟩
    refine hoareG_pre (P := fun t => t = t0 ∧ BS C H tEV tCK P R sw e c e' c' rest L (GasB sw e e') false t)
      ?_ (fun t _ ht => ⟨ht, ht ▸ hBt⟩)
    refine hoareG_ite ?_ (hoareG_skip fun u _ ⟨⟨_, h⟩, _⟩ => Or.inl ⟨rfl, h⟩)
    refine hoareG_pre (P := fun t => t.locals.lookup (nm "actual") = some (.val (.word (minF a0 b0))) ∧
      minF a0 b0 ≠ 0 ∧ BS C H tEV tCK P R sw e c e' c' rest L (GasB sw e e') false t) ?_ ?_
    rotate_left
    · rintro u _ ⟨⟨rfl, hbu⟩, w, hw, hw0⟩
      refine ⟨hact, fun h0 => hw0 ?_, hbu⟩
      have := ev_cmp0 (ev_lv_eq hact) hw
      rw [this, h0]; decide
    -- the memcpy
    have hks : ∀ k ∈ ([] : List Nat), 8 * k + 8 ≤ 280 := by simp
    refine hoareG_finCallD (sw := sw) (e := e) (c := c) (e' := e') (c' := c') (rest := rest) hF
      Hy.xcfg Hy.evX Hy.mc hks (by simp) Hy.gwmcE Hy.pgJ Hy.jmc fun u _ ⟨hlu, hne, hbu⟩ vs hvs => ?_
    obtain ⟨hfl, Γu, hB, hrd, -, hgs⟩ := hbu
    obtain ⟨p0, hp0, hord, hL, -, -, -, hW⟩ := hB.G
    obtain ⟨o, ho, hob, hot⟩ := (hB.objs (e', c') (by simp)).1
    have hob' : o.base = e' := hob
    obtain ⟨x, hx, hxb, hxsc, hxlen, hx8⟩ := Hy.memObj Γu u o ho hot (hW o ho)
    rw [hob'] at hxb hxlen hx8
    have hlen4 : fld u.memory e' 32 = fld sw.memory e' 32 := hB.evp 4 (by simp [parKeep])
    -- the argument values
    obtain ⟨v1, r1, rfl, h1, h2⟩ := evs_cons_inv hvs
    obtain ⟨v2, r2, rfl, h3, h4⟩ := evs_cons_inv h2
    obtain ⟨v3, r3, rfl, h5, h6⟩ := evs_cons_inv h4
    rw [evs_nil] at h6; cases h6
    obtain ⟨y, z, hy, hz, rfl⟩ := ev_op_add_inv h1
    obtain ⟨hy', -⟩ := ev_gLoad_eq hB.ev hy
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hy'
    subst hy'
    rw [ev_lv, hfl _ (by simp [finNames]), hLos] at hz
    cases hz
    obtain ⟨hv3, -⟩ := ev_gLoad_eq hB.ev h3
    subst hv3
    rw [ev_lv, hlu] at h5
    cases h5
    -- the range
    have hosz : a0 ≠ 0 := by
      intro h0
      apply hne
      apply BitVec.eq_of_toNat_eq
      have := minF_le_left a0 b0
      have h0' : a0.toNat = 0 := by rw [h0]; rfl
      show (minF a0 b0).toNat = (0 : BitVec 64).toNat
      have hz : (0 : BitVec 64).toNat = 0 := rfl
      omega
    have hrng : os.toNat + (minF a0 b0).toNat ≤ (fld u.memory e' 32).toNat := by
      rw [hlen4]
      rcases hout with h | h
      · exact absurd h hosz
      · have := minF_le_left a0 b0; omega
    have hxhi := obj_hi_lt hord hL hx
    have hdst : (fld u.memory e' 24 + os).toNat = x.lo + os.toNat := by
      rw [BitVec.toNat_add, Nat.mod_eq_of_lt]
      · unfold Obj.lo; rw [hxb]
      · unfold Obj.lo at *; unfold Obj.hi at hxhi; rw [← hxb]
        have : scratchEnd < 2 ^ 64 := by decide
        omega
    have hbuf : ∀ a, Overlap (fld u.memory e' 24 + os).toNat (1 * (minF a0 b0).toNat + 0) a →
        SCell C Γu a := by
      intro a ha
      rw [hdst] at ha
      exact scell_mem hord hL hx hxsc hxlen hx8 (by omega) (by simpa using ha)
    refine ⟨Γu, hB, fun p hp => ?_, fun _ => trivial, fun a ha => ?_, fun callee r st Γ' hq =>
      ⟨hq.1, hq.2, ?_⟩⟩
    rotate_left 2
    · intro hk0
      have hk : ∀ a, ProtCell C Γu a → ¬ PWtop tEV tCK [] [] u Γu a → st.memory a = u.memory a :=
        hk0
      refine ⟨fin_par_keep hF hB hk hks (by simp), fun v _ hB' hext => ?_⟩
      have keepj : ∀ j ∈ evProtSlots, fld st.memory e' (8 * j) = fld u.memory e' (8 * j) :=
        fun j hj => fin_slot_keep hF hB hk hks (Or.inl rfl) hj fun _ => by simp
      refine ⟨fun y hy => hfl y hy, Γ', finB_locals hH hB' _,
        retOK_ext hext (keepj 18 (by simp [evProtSlots])) (keepj 27 (by simp [evProtSlots])) hrd,
        (fun h => by cases h), ?_⟩
      unfold GasB at hgs ⊢
      show (fld st.memory e' 64).toNat + (fld st.memory e' 192).toNat ≤ _
      rw [keepj 8 (by simp [evProtSlots]), keepj 24 (by simp [evProtSlots])]
      exact hgs
    · obtain rfl := ptrs_some hp0 hp
      refine ⟨by simp [sgMc], fun i pt v hpt hv => ?_⟩
      match i, hpt, hv with
      | 0, hpt, hv =>
          simp [sgMc] at hpt hv; subst hpt; subst hv
          exact ⟨_, _, rfl, rfl, fun a ha => Or.inl (hbuf a ha)⟩
      | 1, hpt, _ => simp [sgMc] at hpt; subst hpt; trivial
      | 2, hpt, _ => simp [sgMc] at hpt; subst hpt; trivial
      | n + 3, hpt, _ => simp [sgMc] at hpt
    · obtain ⟨i, w, hw, h⟩ := ha
      rcases h with ⟨n, hn, -⟩ | ⟨j, c1, d, x1, hn, hx1, hov⟩
      · match i, hn with
        | 0, hn => simp [sgMc] at hn
        | 1, hn => simp [sgMc] at hn
        | 2, hn => simp [sgMc] at hn
        | n + 3, hn => simp [sgMc] at hn
      · match i, hn, hw with
        | 0, hn, hw =>
            simp [sgMc] at hn
            obtain ⟨rfl, rfl, rfl⟩ := hn
            simp [argW, wordOf] at hw hx1
            subst hw; subst hx1
            exact not_prot_of_scell hord hL (hbuf a hov)
        | 1, hn, _ => simp [sgMc] at hn
        | 2, hn, _ => simp [sgMc] at hn
        | n + 3, hn, _ => simp [sgMc] at hn
  · intro s _ hbs vs hvs callee r st ⟨hR, _, _⟩ _ habn
    obtain ⟨a0, b0, -, hr, -⟩ := hR (good_of_abn habn)
    exact absurd hr (not_returned_of_abn habn _)

end steps

end InitECandidate.Solver.MemSafe.Frames
