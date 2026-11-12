import InitECandidate.Solver.MemSafe.Ptx.PtL3

/-!
# F3e: loop 1 -- the body
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

/-- The fixed context of loop 1. -/
structure L1C (E : PtE σ) (En0 : Env) (Sb : FS) (wa wt nv w : BitVec 64) (nbl : Nat)
    (rp rl : BitVec 64) (buf n : Nat) (CV : List (BitVec 64)) : Prop where
  C0 : Cy E En0 Sb rp rl buf n CV w
  hnal : En0 (nm "nal") = some (.val (.word nv))
  hwa : En0 (nm "al_addrs") = some (.val (.word wa))
  hnv : NalOK E nv
  hnbl : nbl = (nv.toNat + 1) * 8
  hfb : Sb (Fct.fbuf wa nbl)
  hpp : Sb (Fct.prop (BlkP wa nbl))
  hord : Sb (Fct.prop (wt.toNat + 200 ≤ wa.toNat))
  harr1 : Sb (Fct.arrbuf wa nbl 1 20)
  hpt : Sb (Fct.prop (BlkP wt 200))
  hrd : RdIn Sb (Fct.arrbuf wa nbl 1 20 :: TeRd wt w)

def L1S (Sb : FS) (wa : BitVec 64) (nbl : Nat) (iv : BitVec 64) : FS :=
  addF Sb [Fct.arrbuf wa nbl (iv.toNat + 1) 20]

def L1I (E : PtE σ) (En0 : Env) (Sb : FS) (wa : BitVec 64) (nbl : Nat) (nv : BitVec 64) (t : State σ) : Prop :=
  ∃ iv nkv : BitVec 64, iv.toNat ≤ nv.toNat ∧ nkv.toNat = nsS E.s0.memory (lst0 E) iv.toNat ∧
    PA E (LE En0 iv nkv) (L1S Sb wa nbl iv) t

theorem resIns_L1I {E : PtE σ} {En0 : Env} {Sb : FS} {wa : BitVec 64} {nbl : Nat} {nv : BitVec 64}
    (hacc : En0 (nm "acc") = none) :
    ResIns (nm "acc") (fun (r : Option (PanSemResultExact 64)) (t : State σ) => r = none ∧ L1I E En0 Sb wa nbl nv t) := by
  intro r t old ⟨hr, iv, nkv, h1, h2, hpa⟩
  refine ⟨hr, iv, nkv, h1, h2, pa_res hpa ?_ old⟩
  rw [le_other iv nkv (by decide) (by decide)]; exact hacc

end InitECandidate.Solver.MemSafe.Ptx
