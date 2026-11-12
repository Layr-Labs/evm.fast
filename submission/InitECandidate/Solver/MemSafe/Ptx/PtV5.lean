import InitECandidate.Solver.MemSafe.Ptx.PtV4

/-!
# F3h: the re-anchor, part 4: `TlPre (mkCtx ..)`
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

theorem b24_scalar (k : Nat) : (guestC.ty tB24).slot k = .scalar := by
  have : guestC.ty tB24 = b24Ty := rfl
  rw [this]; simp [TyD.slot, b24Ty]

theorem vinR_keep {Γe Γ' : Gam} {u t : State σ} {p q : Ptrs} (hp : ptrsOf u = some p) (hq : ptrsOf t = some q)
    (hordp : p.Ordered) (hkeep : KeepH guestC Γe Γ' u t) {vp vl : BitVec 64} (h : Hooks.VInR tVAL Γe vp vl) :
    Hooks.VInR tVAL (keepG Γ') vp vl := by
  rcases h with h | ⟨x, hx, ht, h1, h2⟩
  · exact Or.inl h
  · obtain ⟨-, hsurv, -⟩ := hkeep p q hp hq hordp
    obtain ⟨x', hx', hb, ht', hs⟩ := hsurv x hx (by rw [ht]; decide)
    refine Or.inr ⟨x', mem_keepG.mpr ⟨hx', by rw [ht', ht]; decide, by rw [ht', ht]; decide⟩, ht'.trans ht, ?_, ?_⟩
    · simp only [Obj.lo] at h1 ⊢; rw [hb]; exact h1
    · simp only [Obj.lo, Obj.hi] at h2 ⊢; rw [hb]; omega

section pre
variable {E : PtE σ} {D : BitVec 64 → Option (BitVec 64)} {Γe Γ' : Gam} {u t : State σ} {p q : Ptrs}
  {sender rp rl outw : BitVec 64}

/-- **`TlPre` of the re-anchored tail.** -/
theorem mk_pre (hP : PtPreB E) (hOH : OwnerHeap E.Γ0) (W : WalkEnd E D Γe u p sender rp rl)
    (hG' : G guestC (HR σ) Γ' t) (hq : ptrsOf t = some q) (hord : q.Ordered) (hL : Layout guestC q Γ')
    (hev : ∃ e, gword t nmEv = some e ∧ e.toNat < nullMax) (hcc : ∃ c, gword t nmCC = some c ∧ c.toNat < nullMax)
    (hkeep : KeepH guestC Γe Γ' u t) (hbk : BKeep guestC Γe u t)
    (hglt : ∀ g, cW.contains g = false → t.globals.lookup g = u.globals.lookup g)
    (hout : OutIn Γ' outw) (hcase : OutCol t.memory outw ∨ OutChild Γ' t outw) :
    TlPre (mkCtx E Γ' t q hq hord hL outw sender (rd t.memory (outw + BitVec.ofNat 64 24))) := by
  have hB := anchor_B hP hOH W.run W.hD hG' hq hev hcc hkeep hbk hglt
  have hext := ptRun_ext W.run
  have hp := ptRun_ptrs W.run
  have hordp := ptRun_ord W.run
  obtain ⟨p', hp', -, hLe', -⟩ := ptRun_G W.run
  have hpp : p' = p := Option.some.inj (hp'.symm.trans hp)
  have hLe : Layout guestC p Γe := hpp ▸ hLe'
  obtain ⟨hp1, hsurv, hnew⟩ := hkeep p q hp hq hordp
  set d := rd t.memory (outw + BitVec.ofNat 64 24) with hd
  -- the sender buffer
  obtain ⟨os, hos, hbs, hts, hsz⟩ := W.snd
  have hbufS : BufOK guestC Γe p sender.toNat 20 := by
    intro a hov
    left
    have hos8 := (hLe.1 os hos).1
    have hso := Struct.obj_bounds hordp hLe hos
    have hreg : (guestC.ty os.ty).region = .heap := by rw [hts]; decide
    obtain ⟨h8, h1, h2⟩ := hov
    have hlo : os.lo = sender.toNat := by simp only [Obj.lo]; rw [hbs]
    have hin1 : os.lo ≤ a.toNat := by omega
    have hin2 : a.toNat < os.hi := by simp only [Obj.hi]; rw [hbs]; omega
    obtain ⟨k, hk, hak⟩ := cell_of_range hordp hLe hos hin1 hin2 h8
    exact ⟨os, hos, k, hk, by rw [hts]; exact b24_scalar k, hak⟩
  have hrS : heapBase ≤ sender.toNat ∧ sender.toNat + 20 ≤ heapEnd := by
    have hso := Struct.obj_bounds hordp hLe hos
    have hreg : (guestC.ty os.ty).region = .heap := by rw [hts]; decide
    have h1 := hso.1
    have h2 := hso.2.2.1 hreg
    have h3 := hordp
    unfold Ptrs.Ordered at h3
    simp only [Obj.lo, Obj.hi] at h1 h2
    rw [hbs] at h1 h2
    omega
  obtain ⟨hsndB, hsndY⟩ := buf_of_cells (d := d) hG' (hq := hq) hord hL (bufcells hLe hordp hL hord hp hq hkeep hrS hbufS)
  -- the coinbase buffer
  have hcoinEq : rd t.memory (E.be + BitVec.ofNat 64 32) = rd E.s0.memory (E.be + BitVec.ofNat 64 32) := by
    obtain ⟨ob, hob, hobb, hobt, hobs⟩ := hP.beObj
    have hk : ob.HasSlot 4 := by unfold Obj.HasSlot; omega
    have hcell : E.be + BitVec.ofNat 64 32 = ob.cell 4 := by unfold Obj.cell; rw [hobb]
    rw [hcell, rd_blk_t hext hbk hob (by rw [hobt]; simp [blockTys]) hk, ← hcell]
    exact rd_beB hP W.run W.hD (off := 32) (by norm_num) (by norm_num)
  obtain ⟨hcoinB, hcoinY⟩ := buf_of_cells (d := d) hG' (hq := hq) hord hL
    (bufcells hLe hordp hL hord hp hq hkeep W.coinR W.coin)
  refine
    { B := hB
      outO := ?_
      lstF := ?_
      delF := ?_
      mv := ?_
      snd := hsndB
      coin := ?_
      sndY := hsndY
      coinY := ?_
      txSl := ?_
      ts := ?_
      heap0 := fun o ho => (mem_keepG.mp ho).2.1
      own0 := ownerHeap_keepG Γ' }
  · obtain ⟨o, ho, hb, ht, hs⟩ := hout
    exact ⟨o, mem_keepG.mpr ⟨ho, by rw [ht]; decide, by rw [ht]; decide⟩, hb, ht, hs⟩
  · intro hne
    rcases hcase with hcol | ⟨-, herr, hok⟩
    · exact absurd hcol.2.2.2.2.1 hne
    · by_cases hz : rd t.memory (outw + BitVec.ofNat 64 32) = 0
      · obtain ⟨⟨L, hLo⟩, -, hrb⟩ := hok hz
        exact lstPreF_mk hG' hB hLo (hrb q hq)
      · exact absurd (herr hz).2.1 hne
  · intro hne
    rcases hcase with hcol | ⟨-, herr, hok⟩
    · exact absurd hcol.2.2.2.2.2 hne
    · by_cases hz : rd t.memory (outw + BitVec.ofNat 64 32) = 0
      · obtain ⟨-, ⟨D', hD', hdb, hdt⟩, -⟩ := hok hz
        exact delPreF_mk hG' hD' hdt hdb
      · exact absurd (herr hz).2.2 hne
  · intro hne
    rcases hcase with hcol | ⟨hm, -, -⟩
    · exact absurd hcol.1 hne
    · exact hm
  · show BufOK guestC (keepG Γ') q (rd t.memory (E.be + BitVec.ofNat 64 32)).toNat 20
    rw [hcoinEq]; exact hcoinB
  · show ∀ a, Overlap (rd t.memory (E.be + BitVec.ofNat 64 32)).toNat 20 a → ¬ YSet Γ' t d a
    rw [hcoinEq]; exact hcoinY
  · show Hooks.VInR tVAL (keepG Γ') (rd t.memory (E.txs + E.idx * BitVec.ofNat 64 16))
      (rd t.memory (E.txs + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 8))
    obtain ⟨oT, hoT, hbT, htT, hsT⟩ := hP.txsObj
    have hTb : oT.ty ∈ blockTys := by rw [htT]; simp [blockTys]
    have hcell : ∀ j : Nat, E.txs + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 (8 * j) =
        oT.cell (2 * E.idx.toNat + j) := fun j => by
      unfold Obj.cell; rw [hbT, BitVec.add_assoc, bv_idx16]
    have hk0 : oT.HasSlot (2 * E.idx.toNat + 0) := by unfold Obj.HasSlot; omega
    have hk1 : oT.HasSlot (2 * E.idx.toNat + 1) := by unfold Obj.HasSlot; omega
    have e0 : rd t.memory (E.txs + E.idx * BitVec.ofNat 64 16) = rp := by
      have h0 := hcell 0
      simp only [Nat.mul_zero, BitVec.ofNat_eq_ofNat, Nat.add_zero] at h0
      rw [show E.txs + E.idx * BitVec.ofNat 64 16 = oT.cell (2 * E.idx.toNat + 0) from by simpa using h0,
        rd_blk_t hext hbk hoT hTb hk0, ← show E.txs + E.idx * BitVec.ofNat 64 16 = oT.cell (2 * E.idx.toNat + 0) from by simpa using h0]
      exact W.c1
    have e1 : rd t.memory (E.txs + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 8) = rl := by
      have h1 := hcell 1
      rw [show E.txs + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 8 = oT.cell (2 * E.idx.toNat + 1) from h1,
        rd_blk_t hext hbk hoT hTb hk1, ← show E.txs + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 8 =
          oT.cell (2 * E.idx.toNat + 1) from h1]
      exact W.c2
    rw [e0, e1]
    exact vinR_keep hp hq hordp hkeep W.txv
  · obtain ⟨w, hw, o, ho, hb, ht⟩ := W.ts
    obtain ⟨o', ho', hb', ht', -⟩ := hsurv o ho (by rw [ht]; decide)
    refine ⟨w, ?_, o', mem_keepG.mpr ⟨ho', by rw [ht', ht]; decide, by rw [ht', ht]; decide⟩, hb'.trans hb, ht'.trans ht⟩
    show gword t nmTs = some w
    unfold gword at hw ⊢
    rw [hglt nmTs (by decide)]; exact hw

end pre

end InitECandidate.Solver.MemSafe.Ptx
