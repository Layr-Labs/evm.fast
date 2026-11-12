import InitECandidate.Solver.MemSafe.Ptx.PtT7

/-!
# F3g: the receipt's log list facts (`LogsK` for the tail's states)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- A `prot` cell of an object of `Γ` is a list cell as `LogsK` wants it. -/
theorem cellOK_prot {Γ : Gam} {p : Ptrs} (hL : Layout guestC p Γ) (hord : p.Ordered) {o : Obj} (ho : o ∈ Γ) {k : Nat}
    (hk : o.HasSlot k) (hpr : (guestC.ty o.ty).slot k = .prot) : CellOK Γ p p.hp (o.cell k) := by
  obtain ⟨he1, -⟩ := cell_toNat hord hL ho hk
  have hin := cell_in hord hL ho hk
  have hal8 : (o.cell k).toNat % 8 = 0 := by
    rw [he1]; have := (hL.1 o ho).1; omega
  refine ⟨?_, Helpers.allocated_of_inObj hL hin, ?_⟩
  · rcases inObj_hp_or hL hord hin with h | h
    · left; have := hord.2.2.2.2.2.1; omega
    · right; exact h
  · rintro ⟨o', ho', k', hk', hnp, he⟩
    obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
    exact hnp hpr

section lg
variable {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {u : State σ} {Γ : Gam} {p : Ptrs}

theorem cellOK_z (h : TlS A ref Z O u Γ p) {c : BitVec 64} (hc : Z c) : CellOK Γ p p.hp c := by
  obtain ⟨o, ho, -, -, k, hk, hpr, rfl⟩ := h.hZ c hc
  exact cellOK_prot (tl_layout h) (tl_ord h) ho hk hpr

/-- **A fresh empty list** (header cells kept, `N = 0`) satisfies `LogsK`. -/
theorem logsK_fresh (h : TlS A ref Z O u Γ p) {l : BitVec 64} (h0 : Z l) (h8 : Z (l + 8)) (hN : ref (l + 8) = 0) :
    LogsK Γ p u.memory p.hp l := by
  have hn : lgN u.memory l = 0 := by
    unfold lgN; rw [h.keep _ h8, hN]; rfl
  refine ⟨fun i hi => ?_, cellOK_z h h0, cellOK_z h h8, fun i hi => ?_, by rw [hn]; omega⟩
  · rw [h.keep _ h8, hN] at hi; simp at hi
  · rw [hn] at hi; omega

end lg

theorem lstTy_ne_blocks {t : Nat} (h : LstTy t) : t ≠ tBO ∧ t ≠ tBOS := by
  rcases h with ⟨h, -⟩ | h | h
  · simp only [Hooks.lstTys, List.mem_cons, List.not_mem_nil, or_false] at h
    rcases h with rfl | rfl | rfl | rfl | rfl <;> decide
  · rcases h with rfl | rfl <;> decide
  · subst h; decide

/-- List cells and record cells are kept by the first part of the tail. -/
theorem za_lst {K : TlCtx σ} (hP : TlPre K) {o : Obj} (ho : o ∈ K.E.Γ0) (hty : LstTy o.ty) {k : Nat}
    (hk : o.HasSlot k) : Za K (o.cell k) :=
  ⟨⟨o, ho, hP.heap0 o ho, lstTy_nst hty, k, hk, lstTy_prot hty k, rfl⟩,
    fun h => not_wset_ty hP.B ho (lstTy_ne_blocks hty).1 (lstTy_ne_blocks hty).2 hk (K.wt_wset h)⟩

/-- A frozen cell is a `CellOK` list cell. -/
theorem cellOK_y {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {u : State σ}
    {Γ : Gam} {p : Ptrs} (h : TlS K.A ref Z O u Γ p) {c : BitVec 64} (hc : K.Y c) : CellOK Γ p p.hp c := by
  obtain ⟨hn, hal⟩ := tl_yout h hc
  have h8 := K.hY8 c hc
  have hord := tl_ord h
  refine ⟨?_, hal, fun hw => hn (inObj_of_wcell hord (tl_layout h) hw)⟩
  unfold Ptrs.Allocated at hal
  have := hord
  unfold Ptrs.Ordered at this
  omega

/-- A kept cell (kept `prot` cell or frozen cell) is a `CellOK` list cell. -/
theorem cellOK_kc {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {u : State σ}
    {Γ : Gam} {p : Ptrs} (h : TlS K.A ref Z O u Γ p) {c : BitVec 64} (hc : KC K c) : CellOK Γ p p.hp c := by
  rcases hc with ⟨⟨o, ho, -, -, k, hk, hpr, rfl⟩, -⟩ | hy
  · obtain ⟨o', ho', hb, ht, hs⟩ := h.ext o ho
    have hk' : o'.HasSlot k := by unfold Obj.HasSlot at *; omega
    have := cellOK_prot (tl_layout h) (tl_ord h) ho' hk' (by rw [ht]; exact hpr)
    rwa [show o'.cell k = o.cell k by unfold Obj.cell; rw [hb]] at this
  · exact cellOK_y h hy

/-- A kept cell holds its anchor value (for a state with the first part's kept set). -/
theorem kc_rd {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {u : State σ}
    {Γ : Gam} {p : Ptrs} (h : TlS K.A ref Z O u Γ p) (hz : ∀ a, Za K a → Z a ∧ ref a = K.ref0 a) {c : BitVec 64}
    (hc : KC K c) : rd u.memory c = rd K.E.s0.memory c := by
  rcases hc with hc | hc
  · obtain ⟨hZ, hr⟩ := hz c hc
    rw [h.keep c hZ, hr]; rfl
  · exact h.kY c hc

/-- **The log list of a successful call satisfies `LogsK` at every later state of the first part of the tail.** -/
theorem logsK_desc {K : TlCtx σ} (hP' : TlPre K) {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {u : State σ}
    {Γ : Gam} {p : Ptrs} (h : TlS K.A ref Z O u Γ p) (hz : ∀ a, Za K a → Z a ∧ ref a = K.ref0 a)
    {lw : BitVec 64} (hF : LstPreF K lw) : LogsK Γ p u.memory p.hp lw := by
  have hkc := fun c hc => kc_rd h hz (c := c) hc
  have hc0 := hkc _ hF.c0
  have hc8 := hkc _ hF.c8
  have hN : lgN u.memory lw = lgN K.E.s0.memory lw := by unfold lgN; rw [hc8]
  have hP : lgP u.memory lw = lgP K.E.s0.memory lw := by unfold lgP; rw [hc0]
  have hel : ∀ i, i < lgN K.E.s0.memory lw →
      rd u.memory (rd K.E.s0.memory lw + BitVec.ofNat 64 (8 * i)) =
        rd K.E.s0.memory (rd K.E.s0.memory lw + BitVec.ofNat 64 (8 * i)) := fun i hi => hkc _ (hF.arr i hi)
  have hkeep : ∀ o ∈ K.E.Γ0, LstTy o.ty → ∀ k, o.HasSlot k →
      rd u.memory (o.cell k) = rd K.E.s0.memory (o.cell k) := by
    intro o ho hty k hk
    have hza := za_lst hP' ho hty hk
    obtain ⟨hZ, hr⟩ := hz _ hza
    rw [h.keep _ hZ, hr]; rfl
  refine ⟨?_, cellOK_kc h hF.c0, cellOK_kc h hF.c8, fun i hi => ?_, by rw [hN]; exact hF.nb⟩
  · intro i hi
    rw [hc8] at hi
    have hi' : i < lgN K.E.s0.memory lw := hi
    rw [hc0, hel i hi']
    exact recOK_step h.ext hkeep h.mono.1 (hF.rb i hi')
  · rw [hN] at hi
    have e : lgArr u.memory lw i = lgArr K.E.s0.memory lw i := by unfold lgArr; rw [hP]
    rw [e]
    exact cellOK_kc h (hF.arr i hi)

end InitECandidate.Solver.MemSafe.Ptx
