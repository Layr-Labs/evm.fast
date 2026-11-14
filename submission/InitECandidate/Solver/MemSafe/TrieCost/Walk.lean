import InitECandidate.Solver.MemSafe.TrieCost.While
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.TrieCost
variable {σ : Type} {X : Ctx 64}
def FixedLen (N : BitVec 64) (vs : List (ValueHOL 64)) (_ : PanSemStateFiniteExact 64 σ) : Prop :=
 ∃ A B, vs = [A,B,.val (.word N)]
theorem trie_walk_fixed (hC : X.code.lookup = guestCode) {lo : BitVec 64} {L : Nat}
 (hD : DomIn X.memaddrs lo L) (hL : L+8 ≤ 2^64) (N : BitVec 64) {Bf Bm : Nat}
 (hf : CalleeCost σ X (nm "mpt_fail") Bf) (hm : CalleeCost σ X (nm "memeq") Bm) :
 Inv.CalleeCostP σ X (nm "trie_walk") (FixedLen N)
 ((N.toNat+1)*(L+2)*(Bf+2*Bm+4)) := by
 intro vs body callee rs hl
 rw [hC] at hl
 obtain ⟨rfl,-,A,B,C,hvs,-,-,-,hA,hB,hN⟩ :=
  lookupCode_three code_trie_walk (by decide) (by decide) (by decide) hl
 intro s hs hp
 obtain ⟨hloc,U,V,hfix⟩ := hp
 have hCN : C = .val (.word N) := by
  rw [hvs] at hfix
  simp only [List.cons.injEq, and_true] at hfix
  exact hfix.2.2
 subst C
 have hn : s.locals.lookup (nm "nlen") = some (.val (.word N)) := by rw [hloc];exact hN
 have hw := tw_while_costP hC hD hL N.toNat (twLoopBody_cost hf hm)
 unfold twBody
 have hd : Inv.CostP σ X (fun t => t = s) (.dec (nm "pos") .one (cw 0)
   (.seq (.while twCond twLoopBody) ret000)) ((N.toNat+1)*(L+2)*(Bf+2*Bm+4)) := by
  apply Inv.costP_dec
  intro u hu he v hv hshape
  subst u
  have hv0 : v = .val (.word (0 : BitVec 64)) := by
   rw [ev_cw _ 0] at hv
   exact Option.some.inj hv.symm
  subst v
  have hw' := hw.pre (P' := fun t => t = setVarHOLFinite (nm "pos") (.val (.word (0 : BitVec 64))) s) (by
   intro t ht he;subst t
   have hn' : (setVarHOLFinite (nm "pos") (.val (.word (0 : BitVec 64))) s).locals.lookup (nm "nlen") = some (.val (.word N)) := by
    rw [lk_set_ne _ _ (by decide)];exact hn
   unfold twA
   rw [wl_of hn',wl_of (lk_set_self _ _ _)]
   simpa using cnt_le_n X.memaddrs (wl (setVarHOLFinite (nm "pos") (.val (.word (0 : BitVec 64))) s) (nm "nibs")) N.toNat)
  simpa only [Nat.add_zero,Nat.add_assoc,ret000] using
   (Inv.costP_seq (R := fun _ => True) hw' (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost (cost_return _)))
 exact hd s hs rfl
#print axioms trie_walk_fixed
end InitECandidate.Solver.MemSafe.TrieCost
