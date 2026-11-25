import InitECandidate.Solver.Improvements.AcceptedBitLengthReturn
import InitECandidate.Solver.MemSafe.Mod.Eval

/-! A bounded exponent yields either the sentinel -1 or a small unsigned bit index. -/
set_option autoImplicit false
set_option maxRecDepth 100000
namespace TopBitReturn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ExpHOL ProgHOL)
open InitECandidate.Solver.Spec InitECandidate.Solver.SourceCost
open InitECandidate.Solver.MemSafe.Mod
variable {σ : Type} {X : Ctx 64}

def expr : ExpHOL 64 := .op .sub [.op .add [.panop .mul [.op .sub [.op .sub [lv (nm "nbytes"),cw 1],lv (nm "i")],cw 8],lv (nm "bl")],cw 1]

def small (w : BitVec 64) := w = -1 ∨ w.toNat ≤ 8247

theorem arithmetic {n i b : BitVec 64} (hn : n.toNat ≤ 1024) (hi : i.toNat < n.toNat)
    (hb : b.toNat ≤ 64) : small ((n-1-i)*8+b-1) := by
  unfold small
  have hn0 : 1 ≤ n := by change (1 : Nat) ≤ n.toNat; omega
  have hsub : (n-1).toNat = n.toNat - 1 := BitVec.toNat_sub_of_le hn0
  have hi' : i ≤ n-1 := by rw [BitVec.le_def,hsub]; omega
  have hsub2 := BitVec.toNat_sub_of_le hi'
  have hsum : ((n-1-i)*8 + b).toNat ≤ 8248 := by
    rw [BitVec.toNat_add,BitVec.toNat_mul,hsub2,hsub]
    change (((n.toNat-1-i.toNat)*8 % (2^64) + b.toNat) % (2^64)) ≤ 8248
    have hm : (n.toNat - 1 - i.toNat) * 8 < 2^64 := by omega
    rw [Nat.mod_eq_of_lt hm,Nat.mod_eq_of_lt (by omega)]
    omega
  by_cases h : (n-1-i)*8+b = 0
  · left; rw [h]; rfl
  · right
    have hp : 1 ≤ (n-1-i)*8+b := by bv_omega
    rw [BitVec.toNat_sub_of_le hp]
    change ((n-1-i)*8+b).toNat - 1 ≤ 8247
    omega

theorem return_cost_index {s : PanSemStateFiniteExact 64 σ} {n i b : BitVec 64}
    (hn : s.locals.lookup (nm "nbytes") = some (.val (.word n)))
    (hi : s.locals.lookup (nm "i") = some (.val (.word i)))
    (hb : s.locals.lookup (nm "bl") = some (.val (.word b)))
    (hc : n.toNat ≤ 1024) (hlt : i.toNat < n.toNat) (hbl : b.toNat ≤ 64) :
    Hoare σ X (fun t => t = s) (.return expr)
      (RetP (fun v => ∃ w : BitVec 64, v = .val (.word w) ∧ small w)) := by
  apply hoare_return
  intro t _ h v hv
  subst t
  unfold expr at hv
  rw [ev_sub2 (ev_add2 (ev_mul2 (ev_sub2 (ev_sub2 (AcceptedBitLengthReturn.ev_lw hn) (ev_cw _ 1))
      (AcceptedBitLengthReturn.ev_lw hi)) (ev_cw _ 8)) (AcceptedBitLengthReturn.ev_lw hb)) (ev_cw _ 1)] at hv
  cases hv
  intro w heq
  cases heq
  exact ⟨_,rfl,arithmetic hc hlt hbl⟩

#print axioms arithmetic
#print axioms return_cost_index
end TopBitReturn
