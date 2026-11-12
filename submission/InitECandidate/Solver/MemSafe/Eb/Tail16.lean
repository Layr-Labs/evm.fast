import InitECandidate.Solver.MemSafe.Eb.Tail15

/-!
# `execute_block`: from `validate_block_access_list_gas_limit` (ebS40) to the end
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

variable {σ : Type}

/-- The facts the tail after `process_general_purpose_requests` reads. -/
structure TlK (S : FS) (w t r wd0 ntx0 nwd0 pl0 : BitVec 64) (k : Nat) : Prop where
  gbo : S (Fct.gobj nmBo w tBO)
  slt : S (Fct.sla t ntx0.toNat)
  slr : S (Fct.sla r ntx0.toNat)
  slw : S (Fct.sla wd0 nwd0.toNat)
  gwd : S (Fct.gval (nm "wd_rlp_slices") wd0)
  pwd : S (Fct.pcv (pl0 + BitVec.ofNat 64 56) nwd0)
  c64 : S (Fct.cellv (w + BitVec.ofNat 64 64) (BitVec.ofNat 64 k))
  hk : k ≤ 5
  bt : ntx0.toNat < 2 ^ 50
  bwd : nwd0.toNat < 2 ^ 50

theorem tlK_mono {S S' : FS} {w t r wd0 ntx0 nwd0 pl0 : BitVec 64} {k : Nat}
    (h : TlK S w t r wd0 ntx0 nwd0 pl0 k) (hs : ∀ f, S f → S' f) : TlK S' w t r wd0 ntx0 nwd0 pl0 k :=
  ⟨hs _ h.gbo, hs _ h.slt, hs _ h.slr, hs _ h.slw, hs _ h.gwd, hs _ h.pwd, hs _ h.c64, h.hk, h.bt, h.bwd⟩

/-- The names of the tracked entry locals. -/
def EnT (En : Env) (t r ntx0 pl0 : BitVec 64) : Prop :=
  En (nm "txs") = some (.val (.word t)) ∧ En (nm "rcs") = some (.val (.word r)) ∧
  En (nm "ntx") = some (.val (.word ntx0)) ∧ En (nm "pl") = some (.val (.word pl0))

theorem enT_set {En : Env} {t r ntx0 pl0 : BitVec 64} (h : EnT En t r ntx0 pl0) {x : MlS}
    (hx : x ≠ nm "txs" ∧ x ≠ nm "rcs" ∧ x ≠ nm "ntx" ∧ x ≠ nm "pl") (v : ValueHOL 64) :
    EnT (En.set x v) t r ntx0 pl0 := by
  obtain ⟨h1, h2, h3, h4⟩ := h
  refine ⟨?_, ?_, ?_, ?_⟩
  · rw [env_set_ne _ _ (fun e => hx.1 e.symm)]; exact h1
  · rw [env_set_ne _ _ (fun e => hx.2.1 e.symm)]; exact h2
  · rw [env_set_ne _ _ (fun e => hx.2.2.1 e.symm)]; exact h3
  · rw [env_set_ne _ _ (fun e => hx.2.2.2 e.symm)]; exact h4

end InitECandidate.Solver.MemSafe.Eb
