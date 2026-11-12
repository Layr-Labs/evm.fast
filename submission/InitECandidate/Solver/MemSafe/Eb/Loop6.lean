import InitECandidate.Solver.MemSafe.Eb.Loop5
import InitECandidate.Solver.MemSafe.Eb.Puc

/-!
# `execute_block`: loop part 6 (the loop ledger `Led` and `PtPreD`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

def nmBe : MlS := nm "be"

/-- What the loop knows of the block objects, in the fact set `S` (the cells read are classified by `Ycl`). -/
structure Led (S : FS) (w t r lg rl be0 c0 wd0 ntx0 nwd0 iv : BitVec 64) : Prop where
  gbo : S (Fct.gobj nmBo w tBO)
  obo : S (Fct.obj w tBO 88)
  otxs : S (Fct.obj t tBOS (16 * ntx0.toNat + 16))
  orcs : S (Fct.obj r tBOS (16 * ntx0.toNat + 16))
  olg : S (Fct.obj lg tLSTh 0)
  orl : S (Fct.obj rl tLSTh 0)
  c24 : S (Fct.cellv (w + BitVec.ofNat 64 24) t)
  c32 : S (Fct.cellv (w + BitVec.ofNat 64 32) r)
  c40 : S (Fct.cellv (w + BitVec.ofNat 64 40) lg)
  c72 : S (Fct.cellv (w + BitVec.ofNat 64 72) rl)
  gbe : S (Fct.gval nmBe be0)
  obe : S (Fct.obj be0 tBOS 120)
  cbe : S (Fct.cellv (be0 + BitVec.ofNat 64 32) c0)
  ibe : S (Fct.inval c0 20)
  owd : S (Fct.obj wd0 tBOS (16 * nwd0.toNat))
  bal : BalS S
  wt : S (Fct.prop (w ≠ t))
  wr : S (Fct.prop (w ≠ r))
  wb : S (Fct.prop (w ≠ be0))
  ww : S (Fct.prop (w ≠ wd0))
  tr : S (Fct.prop (t ≠ r))
  tb : S (Fct.prop (t ≠ be0))
  rb : S (Fct.prop (r ≠ be0))
  tw : S (Fct.prop (t ≠ wd0))
  rw : S (Fct.prop (r ≠ wd0))
  bw : S (Fct.prop (be0 ≠ wd0))
  bt : ntx0.toNat < 2 ^ 50
  bt24 : ntx0.toNat < 2 ^ 24
  bwd : nwd0.toNat < 2 ^ 50
  rd : ∀ f, S f → (∀ a v, f ≠ Fct.pcv a v) → ∀ y, f.reads y → Ycl w t r be0 wd0 nwd0 iv y

theorem geo_of_led {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {S : FS} {w t r lg rl be0 c0 wd0 ntx0 nwd0 iv : BitVec 64}
    (h : Led S w t r lg rl be0 c0 wd0 ntx0 nwd0 iv) (hL : HoldsAll p0 Γ p u S) :
    Geo Γ w t r be0 wd0 ntx0 nwd0 := by
  obtain ⟨o1, h1, h2, h3, h4⟩ := hL _ h.obo
  obtain ⟨o2, i1, i2, i3, i4⟩ := hL _ h.otxs
  obtain ⟨o3, j1, j2, j3, j4⟩ := hL _ h.orcs
  obtain ⟨o4, k1, k2, k3, k4⟩ := hL _ h.obe
  obtain ⟨o5, l1, l2, l3, l4⟩ := hL _ h.owd
  exact ⟨⟨o1, h1, h2, h3, h4⟩, ⟨o2, i1, i2, i3, i4⟩, ⟨o3, j1, j2, j3, j4⟩, ⟨o4, k1, k2, k3, k4⟩, ⟨o5, l1, l2, l3, l4⟩,
    hL _ h.wt, hL _ h.wr, hL _ h.wb, hL _ h.ww, hL _ h.tr, hL _ h.tb, hL _ h.rb, hL _ h.tw, hL _ h.rw, hL _ h.bw,
    h.bt, h.bwd⟩

theorem ptPre_of_led {Γ : Gam} {p : Ptrs} {u : State σ} {S : FS} {M : Nat} {p0 : Ptrs}
    {w t r lg rl be0 c0 wd0 ntx0 nwd0 iv T : BitVec 64}
    (h : Led S w t r lg rl be0 c0 wd0 ntx0 nwd0 iv) (hL : HoldsAll p0 Γ p u S)
    (hp : ptrsOf u = some p) (hord : p.Ordered) (hL0 : Layout guestC p Γ) (hJ : JrNZ u) (hE : EvCc u)
    (hM : 2 ^ 24 + 2 ≤ M) (hT : ∃ o ∈ Γ, o.base = T ∧ o.ty = tTX) (hbuf : Rec.TxBuf Γ p u.memory T 152)
    (hlt : iv.toNat < ntx0.toNat) : PtPreD M Γ u p T iv w be0 t r := by
  obtain ⟨-, o1, ho1, hb1, ht1⟩ := hL _ h.gbo
  obtain ⟨oT, hoT, hbT, htT, hsT⟩ := hL _ h.otxs
  obtain ⟨oR, hoR, hbR, htR, hsR⟩ := hL _ h.orcs
  obtain ⟨oL, hoL, hbL, htL, -⟩ := hL _ h.olg
  obtain ⟨oL2, hoL2, hbL2, htL2, -⟩ := hL _ h.orl
  obtain ⟨oB, hoB, hbB, htB, hsB⟩ := hL _ h.obe
  obtain ⟨x, hx, htx, hx1, hx2⟩ := hL _ h.ibe
  have c24 := (hL _ h.c24).1
  have c32 := (hL _ h.c32).1
  have c40 := (hL _ h.c40).1
  have c72 := (hL _ h.c72).1
  have cbe := (hL _ h.cbe).1
  exact ⟨hp, hJ, hE.1, hE.2, hM, hT, hbuf, (hL _ h.gbo).1, ⟨o1, ho1, hb1, ht1⟩, c24,
    ⟨oT, hoT, hbT, htT, by omega⟩, c32, ⟨oR, hoR, hbR, htR, by omega⟩,
    ⟨oL, hoL, hbL.trans c40.symm, htL⟩, ⟨oL2, hoL2, hbL2.trans c72.symm, htL2⟩, hL _ h.gbe,
    ⟨oB, hoB, hbB, htB, hsB⟩, by show BufOK guestC Γ p (rd u.memory (be0 + BitVec.ofNat 64 32)).toNat 20; rw [cbe]; exact Rec.bufOK_of_tval hord hL0 hx htx hx1 hx2,
    (hL _ h.tb).symm, (hL _ h.rb).symm, hL _ h.tr, balG_of_balS h.bal hL⟩

/-- `ptPre_of_led` with the buffers at the ghost allocator. -/
theorem ptPreE_of_led {Γ : Gam} {p : Ptrs} {u : State σ} {S : FS} {M : Nat} {p0 : Ptrs}
    {w t r lg rl be0 c0 wd0 ntx0 nwd0 iv T : BitVec 64}
    (h : Led S w t r lg rl be0 c0 wd0 ntx0 nwd0 iv) (hL : HoldsAll p0 Γ p u S)
    (hp : ptrsOf u = some p) (hord : p.Ordered) (hL0 : Layout guestC p Γ) (hJ : JrNZ u) (hE : EvCc u)
    (hM : 2 ^ 24 + 2 ≤ M) (hT : ∃ o ∈ Γ, o.base = T ∧ o.ty = tTX) (hHO : ∀ o ∈ Γ, (guestC.ty o.ty).region = .heap)
    (hbuf : Rec.TxBuf Γ (Exb.gp0 p) u.memory T 152) (hlt : iv.toNat < ntx0.toNat) :
    PtPreD M Γ u p T iv w be0 t r ∧
      (heapBase ≤ (rd u.memory (be0 + BitVec.ofNat 64 32)).toNat ∧
        (rd u.memory (be0 + BitVec.ofNat 64 32)).toNat + 20 ≤ heapEnd) ∧
      Rec.TxBuf Γ (Exb.gp0 p) u.memory T 152 ∧
      BufOK guestC Γ (Exb.gp0 p) (rd u.memory (be0 + BitVec.ofNat 64 32)).toNat 20 := by
  have hbuf' : Rec.TxBuf Γ p u.memory T 152 :=
    ⟨hbuf.1.imp id (bufOK_of_gp0 hord), fun i hi => bufOK_of_gp0 hord (hbuf.2 i hi)⟩
  refine ⟨ptPre_of_led h hL hp hord hL0 hJ hE hM hT hbuf' hlt, ?_, hbuf, ?_⟩
  all_goals
    obtain ⟨x, hx, htx, hx1, hx2⟩ := hL _ h.ibe
    have cbe := (hL _ h.cbe).1
    have hlive := (hL0.1 x hx).2.2.2.2
    rw [show (guestC.ty x.ty).region = .heap by rw [htx]; decide] at hlive
    simp only [Region.Live] at hlive
  · show heapBase ≤ (rd u.memory (be0 + BitVec.ofNat 64 32)).toNat ∧ _
    rw [cbe]
    simp only [Obj.lo, Obj.hi] at hx1 hx2 hlive
    unfold Ptrs.Ordered at hord
    omega
  · rw [cbe]
    exact Rec.bufOK_of_tval (Exb.gp0_ord hord) (layout_gp0 hHO hL0) hx htx hx1 hx2

end InitECandidate.Solver.MemSafe.Eb
