import InitECandidate.Solver.MemSafe.Ptx.PtV2

/-!
# F3h: the re-anchor, part 2: the context `mkCtx` and the log list / delete table facts
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- **The tail's context** after the call. -/
def mkCtx (E : PtE σ) (Γ' : Gam) (t : State σ) (q : Ptrs) (hq : ptrsOf t = some q) (hord : q.Ordered)
    (hL : Layout guestC q Γ') (outw sender d : BitVec 64) : TlCtx σ :=
  ⟨anchorE E Γ' t q, q, hq, hord, outw, sender, YSet Γ' t d,
    fun a ha => ⟨(yset_out hord hL ha).1, (yset_out hord hL ha).2.1⟩, fun a ha => (yset_out hord hL ha).2.2⟩

section mk
variable {E : PtE σ} {Γ' : Gam} {t : State σ} {q : Ptrs} {hq : ptrsOf t = some q} {hord : q.Ordered}
  {hL : Layout guestC q Γ'} {outw sender d lw : BitVec 64}

/-- A cell of a list-typed object of `Γ'` is kept or frozen in the context. -/
theorem kc_lst (hG' : G guestC (HR σ) Γ' t) (hB : PtPreB (anchorE E Γ' t q)) {o : Obj} (ho : o ∈ Γ')
    (hty : LstTy o.ty) {k : Nat} (hk : o.HasSlot k) :
    KC (mkCtx E Γ' t q hq hord hL outw sender d) (o.cell k) := by
  rcases lst_cell_dichotomy (d := d) hG' ho hty hk with hkeep | hy
  · left
    refine ⟨⟨o, hkeep, (mem_keepG.mp hkeep).2.1, lstTy_nst hty, k, hk, lstTy_prot hty k, rfl⟩, fun h => ?_⟩
    exact not_wset_ty (E := anchorE E Γ' t q) hB hkeep (lstTy_ne_blocks hty).1 (lstTy_ne_blocks hty).2 hk
      ((mkCtx E Γ' t q hq hord hL outw sender d).wt_wset h)
  · right; exact hy

theorem recOK_keepG {m : Mem} {h0 : Nat} {x : BitVec 64} (h : RecOK Γ' m h0 x) : RecOK (keepG Γ') m h0 x := by
  obtain ⟨⟨h1, h2, o, ho, hb, ht, hs⟩, h3⟩ := h
  exact ⟨⟨h1, h2, o, mem_keepG.mpr ⟨ho, by rw [ht]; decide, by rw [ht]; decide⟩, hb, ht, hs⟩, h3⟩

/-- **`LstPreF` of the log list** of the post-call typing. -/
theorem lstPreF_mk (hG' : G guestC (HR σ) Γ' t) (hB : PtPreB (anchorE E Γ' t q)) {L : Obj}
    (hLo : LstObj Γ' lw L) (hrb : RecsBelow Γ' t.memory q.hp lw) :
    LstPreF (mkCtx E Γ' t q hq hord hL outw sender d) lw := by
  obtain ⟨hLm, hLb, hLt, hLe⟩ := hLo
  have hs0 : L.HasSlot 0 := by
    have := Hooks.lst_size (gamOK_of_layout hL) hLm hLt
    unfold Obj.HasSlot; omega
  have hs1 : L.HasSlot 1 := by
    have := Hooks.lst_size (gamOK_of_layout hL) hLm hLt
    unfold Obj.HasSlot; omega
  have hc0 : L.cell 0 = lw := by unfold Obj.cell; rw [hLb]; simp
  have hc1 : L.cell 1 = lw + 8 := by unfold Obj.cell; rw [hLb]; rfl
  obtain ⟨x, hx, hxt, hxb, hxs, hNC, hxhi⟩ := Bal.lst_arr Hooks.lstHooks_guestR hG' hLm hLt
  have hlt : LstTy L.ty := Or.inl ⟨hLt, hLe⟩
  have hxl : LstTy x.ty := Or.inr (Or.inl hxt)
  have hN : Hooks.lN t.memory L = rd t.memory (lw + 8) := by unfold Hooks.lN; rw [hc1]
  have hP : Hooks.lP t.memory L = rd t.memory lw := by unfold Hooks.lP; rw [hc0]
  rw [hLe] at hxs
  have hxb' : x.base = rd t.memory lw := hxb.trans hP
  have hbd := (Struct.obj_bounds hord hL hx)
  have hnb : (rd t.memory (lw + 8)).toNat ≤ 2 ^ 25 := by
    have h1 := hbd.1
    simp only [Obj.lo, Obj.hi] at h1 hxhi
    rw [hN] at hNC
    unfold heapBase scratchEnd at *
    omega
  refine ⟨?_, ?_, ?_, hnb, ?_, ?_⟩
  · intro i hi
    exact recOK_keepG (hrb i hi)
  · have := kc_lst (d := d) (outw := outw) (sender := sender) (hq := hq) (hord := hord) (hL := hL) hG' hB hLm hlt hs0
    rwa [hc0] at this
  · have := kc_lst (d := d) (outw := outw) (sender := sender) (hq := hq) (hord := hord) (hL := hL) hG' hB hLm hlt hs1
    rwa [hc1] at this
  · intro i hi
    have hi' : i < (rd t.memory (lw + 8)).toNat := hi
    rw [hN] at hNC
    have hk : x.HasSlot i := by unfold Obj.HasSlot; omega
    have := kc_lst (d := d) (outw := outw) (sender := sender) (hq := hq) (hord := hord) (hL := hL) hG' hB hx hxl hk
    have e : lgArr t.memory lw i = x.cell i := by
      unfold lgArr lgP Obj.cell; rw [hxb']
    show KC (mkCtx E Γ' t q hq hord hL outw sender d) (lgArr t.memory lw i)
    rw [e]; exact this
  · intro c hc
    obtain ⟨M, hM, hMt, k, hk, -, hcM⟩ := wset_cellB hB (fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩ : Ext (keepG Γ') (keepG Γ'))
      ((mkCtx E Γ' t q hq hord hL outw sender d).wt_wset hc)
    have hMΓ : M ∈ Γ' := (mem_keepG.mp hM).1
    refine ⟨fun he => ?_, fun he => ?_⟩
    · rw [hcM, ← hc0] at he
      have := (cell_inj hord hL hMΓ hLm hk hs0 he).1
      subst this
      exact lst_not_block hLt (by simpa using hMt)
    · rw [hcM, ← hc1] at he
      have := (cell_inj hord hL hMΓ hLm hk hs1 he).1
      subst this
      exact lst_not_block hLt (by simpa using hMt)

/-- **`DelPreF` of the delete table** of the post-call typing. -/
theorem delPreF_mk (hG' : G guestC (HR σ) Γ' t) {D : Obj} (hD : D ∈ Γ') (hty : D.ty = tHTs20) (hb : D.base = d) :
    DelPreF (mkCtx E Γ' t q hq hord hL outw sender d) d := by
  subst hb
  refine ⟨yset_hdr hG' hD hty (off := 8) (by norm_num) (by norm_num),
    yset_hdr hG' hD hty (off := 24) (by norm_num) (by norm_num),
    yset_hdr hG' hD hty (off := 32) (by norm_num) (by norm_num),
    yset_hdr hG' hD hty (off := 48) (by norm_num) (by norm_num), ?_, ?_, ?_, del_cnt_le hG' hD hty⟩
  · intro i hi
    exact yset_ord hG' hD hty hq hi
  · intro i hi
    exact keyBuf_dropped hG' hD hty hq hi
  · intro i hi a hov hy
    exact hy.2 ⟨⟨D, hD, rfl, hty⟩, i, hi, hov⟩

end mk

end InitECandidate.Solver.MemSafe.Ptx
