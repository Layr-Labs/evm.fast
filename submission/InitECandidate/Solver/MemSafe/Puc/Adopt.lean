import InitECandidate.Solver.MemSafe.Puc.Store

/-!
# Puc: adopting `te` and `m`

Copies of F3's `pa_adopt_te` / `pa_adopt_m` (`Ptx/PtM11.lean`, `Ptx/PtQ2.lean`) for the fact sets of
`process_unchecked_system_transaction`: the cells read are recorded `memw` facts (`te[0] = vm_system_address`,
`te[144] = te[152] = 0`; `m[8] = te`, `m[96] = data_n`, `m[152] = aa`, `m[160] = ak`, ...), the gas bound is `M - 2`
for any `M` (F3's version fixes `2^24`: `SYSTEM_TRANSACTION_GAS` is `3 * 10^7`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Puc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

/-- The facts that survive adopting `te`: the safe ones and the new object. -/
def SAt (S : FS) (wt : BitVec 64) : FS := fun f => (S f ∧ SafeK f) ∨ f = Fct.obj wt tTE 200

/-- **`te` joins the typing as a `tTE` record.** -/
theorem pu_adopt_te {E : PtE σ} {En : Env} {S : FS} {u : State σ} {wt vmw : BitVec 64}
    (hfb : S (Fct.fbuf wt 200)) (hpp : S (Fct.prop (BlkP wt 200)))
    (hm0 : S (Fct.memw (wt + BitVec.ofNat 64 0) vmw)) (hm144 : S (Fct.memw (wt + BitVec.ofNat 64 144) 0))
    (hm152 : S (Fct.memw (wt + BitVec.ofNat 64 152) 0)) (hvo : S (Fct.obj vmw tB24 0)) (h : PA E En S u) :
    PA E En (SAt S wt) u := by
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := h
  have hord0 := ptRun_ord0 hr
  have hord := ptRun_ord hr
  have hm := ptRun_mono hr
  have hfb' := hL _ hfb
  obtain ⟨hw8, hwb, hwe⟩ := hL _ hpp
  have hlive := fbuf_end_le hL hord0 hord hfb hpp (by norm_num) (by norm_num)
  obtain ⟨hm0', -⟩ := hL _ hm0
  obtain ⟨hm144', -⟩ := hL _ hm144
  obtain ⟨hm152', -⟩ := hL _ hm152
  have hsd : ∃ o ∈ Γ, o.base = rd u.memory wt ∧ o.ty = tB24 := by
    obtain ⟨o, ho, hb, ht, -⟩ := hL _ hvo
    refine ⟨o, ho, ?_, ht⟩
    have : rd u.memory (wt + BitVec.ofNat 64 0) = rd u.memory wt := by simp
    rw [← this, hm0']; exact hb
  have hSA : SubArr Γ (rd u.memory (wt + BitVec.ofNat 64 144)) (rd u.memory (wt + BitVec.ofNat 64 152)).toNat tAUTH 120 := by
    rw [hm144', hm152']
    exact Or.inl rfl
  have hG'' := g_adopt_te (ptRun_G hr) (ptRun_ptrs hr) hord0 hfb' ⟨hw8, hwb, hwe⟩ hlive hsd hSA
  obtain ⟨q, hq, -, hLay, -⟩ := ptRun_G hr
  obtain rfl : q = p := Option.some.inj (hq.symm.trans (ptRun_ptrs hr))
  have hbytes := fresh_bytes hLay hfb' (by norm_num) hwb hwe hlive hord hord0
  let x : Obj := ⟨wt, tTE, 200⟩
  have hfr : ∀ a : BitVec 64, x.lo ≤ a.toNat → a.toNat < x.hi → Fresh E.p0 q a := by
    intro a h1 h2
    have h1' : wt.toNat ≤ a.toNat := h1
    have h2' : a.toNat < wt.toNat + 200 := h2
    exact Or.inl ⟨(hbytes a.toNat h1' h2').1, (hbytes a.toNat h1' h2').2.1⟩
  have hr'' := ptRun_adopt hr hG'' hfr
  refine ⟨⟨D, Γ ++ [x], q, hr'', hD, fun f hf => ?_⟩, hlk⟩
  rcases hf with ⟨hS, hsafe⟩ | rfl
  · exact holds_adopt hord0 hord hm hfr hsafe (hL f hS)
  · exact ⟨x, List.mem_append_right _ (List.mem_singleton.mpr rfl), rfl, rfl, le_refl _⟩

/-- **`m` joins the typing as a `tMSGh` object**, and the call's precondition holds. -/
theorem pu_adopt_m {E : PtE σ} {En : Env} {S : FS} {u : State σ} {M : Nat}
    {wm wt vmw T N n aaw akw : BitVec 64}
    (hfb : S (Fct.fbuf wm 176)) (hpp : S (Fct.prop (BlkP wm 176)))
    (m8 : S (Fct.memw (wm + BitVec.ofNat 64 8) wt)) (m16 : S (Fct.memw (wm + BitVec.ofNat 64 16) vmw))
    (m24 : S (Fct.memw (wm + BitVec.ofNat 64 24) T)) (m32 : S (Fct.memw (wm + BitVec.ofNat 64 32) T))
    (m40 : S (Fct.memw (wm + BitVec.ofNat 64 40) (BitVec.ofNat 64 30000000)))
    (m96 : S (Fct.memw (wm + BitVec.ofNat 64 96) N)) (m120 : S (Fct.memw (wm + BitVec.ofNat 64 120) n))
    (m152 : S (Fct.memw (wm + BitVec.ofNat 64 152) aaw)) (m160 : S (Fct.memw (wm + BitVec.ofNat 64 160) akw))
    (hote : S (Fct.obj wt tTE 200)) (hoaa : S (Fct.obj aaw tHTh20 0)) (hoak : S (Fct.obj akw tHTh52 0))
    (hovm : S (Fct.obj vmw tB24 0)) (hbT : S (Fct.bufok0 T 20)) (hN : S (Fct.prop (N.toNat < 2 ^ 32)))
    (hn : S (Fct.prop (n.toNat + 63 < 2 ^ 64))) (hT0 : S (Fct.prop (T ≠ 0)))
    (hM : 30000000 + 2 ≤ M) (h : PA E En S u) :
    ∃ (D : BitVec 64 → Option (BitVec 64)) (Γ : Gam) (p : Ptrs),
      PtRun D E.Γ0 E.s0 E.p0 (Γ ++ [⟨wm, tMSGh, 176⟩]) u p ∧ (∀ a, D a ≠ none → E.WSet a) ∧
      HoldsAll E.p0 (Γ ++ [⟨wm, tMSGh, 176⟩]) p u (SAm S wm) ∧ LKE En u ∧
      Entry.FoPre M wm (Γ ++ [⟨wm, tMSGh, 176⟩]) u ∧
      (fld u.memory wm 24 = 0 → TgtB (Γ ++ [⟨wm, tMSGh, 176⟩]) u.memory wm) := by
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := h
  have hord0 := ptRun_ord0 hr
  have hord := ptRun_ord hr
  have hmono := ptRun_mono hr
  have hfb' := hL _ hfb
  obtain ⟨hw8, hwb, hwe⟩ := hL _ hpp
  have hlive := fbuf_end_le hL hord0 hord hfb hpp (by norm_num) (by norm_num)
  have h8 := (hL _ m8).1
  have h16 := (hL _ m16).1
  have h24 := (hL _ m24).1
  have h32 := (hL _ m32).1
  have h40 := (hL _ m40).1
  have h96 := (hL _ m96).1
  have h120 := (hL _ m120).1
  have h152 := (hL _ m152).1
  have h160 := (hL _ m160).1
  have hG1 : ∃ o ∈ Γ, o.base = rd u.memory (wm + BitVec.ofNat 64 8) ∧ o.ty = tTE := by
    obtain ⟨o, ho, hb, ht, -⟩ := hL _ hote
    exact ⟨o, ho, by rw [h8]; exact hb, ht⟩
  have hG19 : ∃ o ∈ Γ, o.base = rd u.memory (wm + BitVec.ofNat 64 152) ∧ o.ty = tHTh20 := by
    obtain ⟨o, ho, hb, ht, -⟩ := hL _ hoaa
    exact ⟨o, ho, by rw [h152]; exact hb, ht⟩
  have hG20 : ∃ o ∈ Γ, o.base = rd u.memory (wm + BitVec.ofNat 64 160) ∧ o.ty = tHTh52 := by
    obtain ⟨o, ho, hb, ht, -⟩ := hL _ hoak
    exact ⟨o, ho, by rw [h160]; exact hb, ht⟩
  have hN' : N.toNat < 2 ^ 32 := hL _ hN
  have hG' := g_adopt_m (ptRun_G hr) (ptRun_ptrs hr) hord0 hfb' ⟨hw8, hwb, hwe⟩ hlive hG1 hG19 hG20
    (by rw [h96]; exact hN')
  obtain ⟨q, hq, -, hLay, -⟩ := ptRun_G hr
  obtain rfl : q = p := Option.some.inj (hq.symm.trans (ptRun_ptrs hr))
  have hbytes := fresh_bytes hLay hfb' (by norm_num) hwb hwe hlive hord hord0
  let x : Obj := ⟨wm, tMSGh, 176⟩
  have hfr : ∀ a : BitVec 64, x.lo ≤ a.toNat → a.toNat < x.hi → Fresh E.p0 q a := by
    intro a h1 h2
    have h1' : wm.toNat ≤ a.toNat := h1
    have h2' : a.toNat < wm.toNat + 176 := h2
    exact Or.inl ⟨(hbytes a.toNat h1' h2').1, (hbytes a.toNat h1' h2').2.1⟩
  have hr'' := ptRun_adopt hr hG' hfr
  have hxmem : x ∈ Γ ++ [x] := List.mem_append_right _ (List.mem_singleton.mpr rfl)
  have hHold : HoldsAll E.p0 (Γ ++ [x]) q u (SAm S wm) := by
    intro f hf
    rcases hf with ⟨hS, hsafe⟩ | rfl
    · exact holds_adopt hord0 hord hmono hfr hsafe (hL f hS)
    · exact ⟨x, hxmem, rfl, rfl, le_refl _⟩
  have hbk : ∀ (v : BitVec 64) (m : Nat), S (Fct.bufok0 v m) → BufOK guestC (Γ ++ [x]) q v.toNat m :=
    fun v m h => (holds_adopt hord0 hord hmono hfr (f := Fct.bufok0 v m) trivial (hL _ h)).1
  have hT0' : T ≠ 0 := hL _ hT0
  have htc : fld u.memory wm 24 = 0 → TgtB (Γ ++ [x]) u.memory wm := by
    intro h0
    exfalso
    apply hT0'
    have : fld u.memory wm 24 = T := by
      show rd u.memory (wm + BitVec.ofNat 64 24) = T
      exact h24
    rw [← this]; exact h0
  refine ⟨D, Γ, q, hr'', hD, hHold, hlk, ?_, htc⟩
  have hx1 : ∃ M' : Obj, MsgObj (Γ ++ [x]) wm M' := ⟨x, hxmem, rfl, Or.inl rfl, le_refl _⟩
  obtain ⟨q', hq', hord', hL', -⟩ := ptRun_G hr''
  obtain rfl : q = q' := (Option.some.inj (hq'.symm.trans (ptRun_ptrs hr''))).symm
  refine ⟨⟨hx1, fun p' hp' k hk' => ?_⟩, ⟨wm, rfl, ⟨x, hxmem, rfl, Or.inl rfl, le_refl _⟩, ?_⟩,
    hr''.2.2.2.2.2.2.2.2.2.1, hr''.2.2.2.2.2.2.2.2.2.2.1, ptRun_jr hr'', ?_⟩
  · obtain rfl : p' = q := Option.some.inj (hp'.symm.trans (ptRun_ptrs hr''))
    simp only [msgXOffs, List.mem_cons, List.not_mem_nil, or_false] at hk'
    rcases hk' with rfl | rfl
    · show BufOK guestC (Γ ++ [x]) p' (rd u.memory (wm + BitVec.ofNat 64 16)).toNat 20
      rw [h16]
      obtain ⟨o, ho, hb, ht, -⟩ := hL _ hovm
      have := bufOK_tB24' hord' hL' (x := o) (List.mem_append_left _ ho) ht
      rwa [hb] at this
    · show BufOK guestC (Γ ++ [x]) p' (rd u.memory (wm + BitVec.ofNat 64 32)).toNat 20
      rw [h32]; exact hbk T 20 hbT
  · show (rd u.memory (wm + BitVec.ofNat 64 120)).toNat + 63 < 2 ^ 64
    rw [h120]; exact hL _ hn
  · show (rd u.memory (wm + BitVec.ofNat 64 40)).toNat + 2 ≤ M
    rw [h40]
    have : (BitVec.ofNat 64 30000000).toNat = 30000000 := by decide
    omega

end InitECandidate.Solver.MemSafe.Puc
