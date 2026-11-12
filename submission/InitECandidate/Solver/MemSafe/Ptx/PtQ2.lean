import InitECandidate.Solver.MemSafe.Ptx.PtQ1

/-!
# F3f: the state at the `process_message_call` entry: `m` adopted, `FoPre`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- **The state at the call**: `m` is a `tMSGh` object, `FoPre` holds. -/
theorem pa_adopt_m {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv wm aaw akw v32 v96 v120 mg : BitVec 64} {nbl : Nat} {u : State σ} {M : Nat}
    (K : MsK E En S rp rl buf n CV w wt wa ak nv nkv wm nbl
      (MsL [(40, mg), (24, rd E.s0.memory (E.tx + BitVec.ofNat 64 152)), (16, w), (8, wt)] v32 v96 v120 aaw akw))
    (hoa : S (Fct.obj aaw tHTh20 0)) (hoak : S (Fct.obj akw tHTh52 0)) (hb32 : S (Fct.bufok0 v32 20))
    (htg : S (tgtF (rd E.s0.memory (E.tx + BitVec.ofNat 64 152)) v32))
    (hp120 : S (Fct.prop (v120.toNat + 63 < 2 ^ 64))) (hd96 : S (Fct.prop (v96.toNat < 2 ^ 32))) (hmg : S (Fct.prop (mg.toNat ≤ 2 ^ 24)))
    (hM : 2 ^ 24 + 2 ≤ M) (hpa : PA E En S u) :
    ∃ (D : BitVec 64 → Option (BitVec 64)) (Γ : Gam) (p : Ptrs),
      PtRun D E.Γ0 E.s0 E.p0 (Γ ++ [⟨wm, tMSGh, 176⟩]) u p ∧ (∀ a, D a ≠ none → E.WSet a) ∧
      HoldsAll E.p0 (Γ ++ [⟨wm, tMSGh, 176⟩]) p u (SAm S wm) ∧ LKE En u ∧
      Entry.FoPre M wm (Γ ++ [⟨wm, tMSGh, 176⟩]) u ∧
      (fld u.memory wm 24 = 0 → TgtB (Γ ++ [⟨wm, tMSGh, 176⟩]) u.memory wm) := by
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
  have hord0 := ptRun_ord0 hr
  have hord := ptRun_ord hr
  have hmono := ptRun_mono hr
  have hfb := hL _ K.hfbm
  obtain ⟨hw8, hwb, hwe⟩ := hL _ K.hppm
  have hlive := fbuf_end_le hL hord0 hord K.hfbm K.hppm (by norm_num) (by norm_num)
  have mw : ∀ (off : Nat) (x : BitVec 64), (off, x) ∈ MsL [(40, mg), (24, rd E.s0.memory (E.tx + BitVec.ofNat 64 152)), (16, w), (8, wt)] v32 v96 v120 aaw akw →
      rd u.memory (wm + BitVec.ofNat 64 off) = x := fun off x h => (hL _ (K.hL (off, x) h).2.2).1
  have h8 := mw 8 wt (by simp [MsL])
  have h16 := mw 16 w (by simp [MsL])
  have h32 := mw 32 v32 (by simp [MsL])
  have h40 := mw 40 mg (by simp [MsL])
  have h120 := mw 120 v120 (by simp [MsL])
  have h96 := mw 96 v96 (by simp [MsL])
  have h152 := mw 152 aaw (by simp [MsL])
  have h160 := mw 160 akw (by simp [MsL])
  have hG1 : ∃ o ∈ Γ, o.base = rd u.memory (wm + BitVec.ofNat 64 8) ∧ o.ty = tTE := by
    obtain ⟨o, ho, hb, ht, -⟩ := hL _ K.A.hobjte
    exact ⟨o, ho, by rw [h8]; exact hb, ht⟩
  have hG19 : ∃ o ∈ Γ, o.base = rd u.memory (wm + BitVec.ofNat 64 152) ∧ o.ty = tHTh20 := by
    obtain ⟨o, ho, hb, ht, -⟩ := hL _ hoa
    exact ⟨o, ho, by rw [h152]; exact hb, ht⟩
  have hG20 : ∃ o ∈ Γ, o.base = rd u.memory (wm + BitVec.ofNat 64 160) ∧ o.ty = tHTh52 := by
    obtain ⟨o, ho, hb, ht, -⟩ := hL _ hoak
    exact ⟨o, ho, by rw [h160]; exact hb, ht⟩
  have hG' := g_adopt_m (ptRun_G hr) (ptRun_ptrs hr) hord0 hfb ⟨hw8, hwb, hwe⟩ hlive hG1 hG19 hG20
    (by rw [h96]; exact hL _ hd96)
  obtain ⟨q, hq, -, hLay, -⟩ := ptRun_G hr
  obtain rfl : q = p := Option.some.inj (hq.symm.trans (ptRun_ptrs hr))
  have hbytes := fresh_bytes hLay hfb (by norm_num) hwb hwe hlive hord hord0
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
  have htc : fld u.memory wm 24 = 0 → TgtB (Γ ++ [x]) u.memory wm := by
    intro h0
    have h24 := mw 24 (rd E.s0.memory (E.tx + BitVec.ofNat 64 152)) (by simp [MsL])
    have hT0 : rd E.s0.memory (E.tx + BitVec.ofNat 64 152) = 0 := by rw [← h24]; exact h0
    have hS : S (Fct.obj v32 tB24 24) := by
      have := htg; unfold tgtF at this; rw [if_pos hT0] at this; exact this
    obtain ⟨o, ho, hob, hot, hos⟩ := hL _ hS
    refine ⟨⟨x, hxmem, rfl, rfl, le_refl _⟩, o, List.mem_append_left _ ho, ?_, hot, hos⟩
    show o.base = rd u.memory (wm + BitVec.ofNat 64 32)
    rw [h32]; exact hob
  refine ⟨D, Γ, q, hr'', hD, hHold, hlk, ?_, htc⟩
  have hx1 : ∃ M' : Obj, MsgObj (Γ ++ [x]) wm M' := ⟨x, hxmem, rfl, Or.inl rfl, le_refl _⟩
  refine ⟨⟨hx1, fun p' hp' k hk' => ?_⟩, ⟨wm, rfl, ⟨x, hxmem, rfl, Or.inl rfl, le_refl _⟩, ?_⟩,
    hr''.2.2.2.2.2.2.2.2.2.1, hr''.2.2.2.2.2.2.2.2.2.2.1, ptRun_jr hr'', ?_⟩
  · obtain rfl : p' = q := Option.some.inj (hp'.symm.trans (ptRun_ptrs hr''))
    simp only [msgXOffs, List.mem_cons, List.not_mem_nil, or_false] at hk'
    rcases hk' with rfl | rfl
    · show BufOK guestC (Γ ++ [x]) p' (rd u.memory (wm + BitVec.ofNat 64 16)).toNat 20
      rw [h16]; exact bufOK_le' (hbk w 24 K.A.C0.bsd) (by norm_num)
    · show BufOK guestC (Γ ++ [x]) p' (rd u.memory (wm + BitVec.ofNat 64 32)).toNat 20
      rw [h32]; exact hbk v32 20 hb32
  · show (rd u.memory (wm + BitVec.ofNat 64 120)).toNat + 63 < 2 ^ 64
    rw [h120]; exact hL _ hp120
  · show (rd u.memory (wm + BitVec.ofNat 64 40)).toNat + 2 ≤ M
    rw [h40]
    have : mg.toNat ≤ 2 ^ 24 := hL _ hmg
    omega

end InitECandidate.Solver.MemSafe.Ptx
