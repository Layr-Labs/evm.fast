import InitECandidate.Solver.MemSafe.Ini.Head

/-!
# The frozen node DB: `NdbR` from two frozen objects

`FrzTy tF`: the facts about the frozen block type (all-`prot`, untagged heap type of minimum size 0, a record type
without a record entry, not a node type). `ndbR_frz`: if the header `[T, T+88)` and the node array are objects of
type `tF` in `Γ'` and every leaf value is a slice record of `Γ'`, then `NdbR Γ' m T`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

structure FrzTy (tF : Nat) : Prop where
  recOK : RecTyOK tF
  reg : (Types.guestC.ty tF).region = .heap
  prot : ∀ k, (Types.guestC.ty tF).slot k = .prot
  min : (Types.guestC.ty tF).minSz = 0
  tag : Types.guestC.tags.lookup tF = none
  nrec : tF ∉ recTys
  nn : NotNodeTy tF

theorem rcell_frz {tF : Nat} {Γ' : Gam} {x : Obj} {a : BitVec 64} (hF : FrzTy tF) (hx : x ∈ Γ')
    (ht : x.ty = tF) {k : Nat} (hk : x.HasSlot k) (ha : a = x.cell k)
    (hb : x.lo + 8 * k + 8 ≤ heapEnd) : RCell Γ' a :=
  ⟨x, hx, ht ▸ hF.recOK, by rw [ht]; exact hF.reg, k, hk, by rw [ht]; exact hF.prot k, ha, hb,
    by rw [ht]; exact hF.nn⟩

theorem rch_live {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T : BitVec 64}
    {L : BitVec 64 → Prop} (hsh : Spec.Inv.Shape m d be T L) {n : BitVec 64}
    (h : Rch m T n) (hn : n ≠ 0) : L n := by
  induction h with
  | root => exact (hsh.root_live hn).1
  | @left x hr hx0 hk ih => exact (hsh.internal x (ih hx0) hk).1
  | @right x hr hx0 hk ih => exact (hsh.internal x (ih hx0) hk).2.1

theorem node_cell_eq (N0 n : BitVec 64) (off : Nat) (hn : N0.toNat + 32 * (n.toNat + 1) ≤ 2 ^ 64)
    (hoff : off % 8 = 0) (hlt : off < 32) :
    N0 + n * BitVec.ofNat 64 32 + BitVec.ofNat 64 off = N0 + BitVec.ofNat 64 (8 * (4 * n.toNat + off / 8)) := by
  apply BitVec.eq_of_toNat_eq
  have h1 : (n * BitVec.ofNat 64 32).toNat = n.toNat * 32 := by
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 32) (by omega),
      Nat.mod_eq_of_lt (by omega)]
  have hN := N0.isLt
  have h2 : (N0 + n * BitVec.ofNat 64 32).toNat = N0.toNat + n.toNat * 32 := by
    rw [BitVec.toNat_add, h1, Nat.mod_eq_of_lt (by omega)]
  rw [BitVec.toNat_add, h2, BitVec.toNat_add, BitVec.toNat_ofNat, BitVec.toNat_ofNat,
    Nat.mod_eq_of_lt (a := off) (by omega), Nat.mod_eq_of_lt (a := 8 * (4 * n.toNat + off / 8)) (by omega)]
  have : 8 * (4 * n.toNat + off / 8) = n.toNat * 32 + off := by omega
  rw [this, Nat.add_assoc]

/-- **A node DB made of two frozen objects.** -/
theorem ndbR_frz {tF : Nat} {Γ' : Gam} {t : State σ} {T : BitVec 64} (hF : FrzTy tF)
    (hwf : Spec.Inv.TableWF t T)
    (hh : (⟨T, tF, 88⟩ : Obj) ∈ Γ')
    (hn : (⟨Spec.Inv.hdr t.memory T 40, tF, 32 * (Spec.Inv.CAP t.memory T + 1)⟩ : Obj) ∈ Γ')
    (hhi : T.toNat + 88 ≤ heapEnd)
    (hni : (Spec.Inv.hdr t.memory T 40).toNat + 32 * (Spec.Inv.CAP t.memory T + 1) ≤ heapEnd)
    (hSL : ∀ w, Spec.Inv.LeafVal t.memory T w → SlRec Γ' t.memory w) : NdbR Γ' t.memory T := by
  obtain ⟨hsep, L, hsh, hex⟩ := hwf
  have h64 : (Spec.Inv.hdr t.memory T 40).toNat + 32 * (Spec.Inv.CAP t.memory T + 1) ≤ 2 ^ 64 := by
    have : heapEnd < 2 ^ 64 := by decide
    omega
  refine ⟨?_, ?_, ?_, fun n hr hn0 => ?_⟩
  · exact rcell_frz hF hh rfl (k := 0) (by unfold Obj.HasSlot; simp) rfl (by simp [Obj.lo]; omega)
  · exact rcell_frz hF hh rfl (k := 5) (by unfold Obj.HasSlot; simp) rfl (by simp [Obj.lo]; omega)
  · exact rcell_frz hF hh rfl (k := 7) (by unfold Obj.HasSlot; simp) rfl (by simp [Obj.lo]; omega)
  · have hl := rch_live hsh hr hn0
    obtain ⟨hr1, hr2⟩ := hsh.live_range n hl
    have hcell : ∀ off, off % 8 = 0 → off < 32 → RCell Γ' (ndA t.memory T n off) := by
      intro off ho hlt
      refine rcell_frz hF hn rfl (k := 4 * n.toNat + off / 8) ?_ ?_ ?_
      · unfold Obj.HasSlot; simp only; omega
      · unfold ndA
        exact node_cell_eq _ _ off (by omega) ho hlt
      · simp only [Obj.lo]; omega
    refine ⟨hcell 24 (by omega) (by omega), hcell 8 (by omega) (by omega), fun hk => ?_,
      fun hk => hcell 16 (by omega) (by omega)⟩
    obtain ⟨j, hj, hjo⟩ := hsh.leaf_ordered n hl hk
    exact hSL _ ⟨j, hj, by show Spec.Inv.LEFT t.memory T (Spec.Inv.ORD t.memory T j) = Spec.Inv.LEFT t.memory T n; rw [hjo]⟩

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.ndbR_frz
