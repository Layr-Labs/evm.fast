import InitECandidate.Solver.MemSafe.IvvhCost.Loop
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
set_option linter.unusedVariables false
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL ExpHOL ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Exb
open InitECandidate.Solver.MemSafe.Rec
namespace InitECandidate.Solver.MemSafe.IvvhCost
variable {σ : Type}

noncomputable def CountEq (N : BitVec 64) (s : State σ) : Prop :=
  s.locals.lookup (nm "ntx") = some (.val (.word N))

theorem count_update {s : State σ} {n : MlS} {v : ValueHOL 64} {N : BitVec 64}
    (hn : n ≠ nm "ntx") (h : CountEq N s) : CountEq N (setVarHOLFinite n v s) := by
  change (s.locals.update (n, v)).lookup (nm "ntx") = some (.val (.word N))
  exact (lookup_update_ne s.locals v hn).trans h

theorem cost_dec_transform {P P' : State σ → Prop} {n : MlS} {sh : ShapeHOL}
    {e : ExpHOL 64} {body : ProgHOL 64} {B : Nat}
    (hfact : ∀ s, InCtx s guestCtx → P s → ∀ v, ev s e = some v → P' (setVarHOLFinite n v s))
    (hk : Inv.CostP σ guestCtx P' body B) :
    Inv.CostP σ guestCtx P (.dec n sh e body) B := by
  refine Inv.costP_dec fun s hs hp v hv hsh => ?_
  exact hk.pre (fun t ht heq => by subst t; exact hfact s hs hp v hv)

theorem cost_dec_other {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {k : ProgHOL 64}
    {B : Nat} {N : BitVec 64} (hn : n ≠ nm "ntx")
    (hk : Inv.CostP σ guestCtx (CountEq N) k B) :
    Inv.CostP σ guestCtx (CountEq N) (.dec n sh e k) B :=
  cost_dec_transform (fun s hs hp v hv => count_update hn hp) hk

def loopBound : Nat := 932481128055966938727700172878097020667918267806369533006913880158373442615633953127788

theorem loopBound_eq : (ntxMax + 1) * (outerB + 1) + 0 = loopBound := by decide_cbv

theorem costP_bound_cast {X : Ctx 64} {P : State σ → Prop} {p : ProgHOL 64} {B B' : Nat}
    (hB : B = B') (h : Inv.CostP σ X P p B) : Inv.CostP σ X P p B' := by
  cases hB
  exact h

theorem tail_cost : Cost σ guestCtx ivTail 0 := by
  exact InitECandidate.Solver.MemSafe.BalCost.Analyzer.cost_guest_costA (by decide_cbv)

theorem loop_tail_cost {N : BitVec 64} (hN : N.toNat ≤ ntxMax) :
    Inv.CostP σ guestCtx (CapturedCountInv (nm "i") (lv (nm "ntx")) N ntxMax)
      (.seq ivLoop ivTail) loopBound := by
  exact costP_bound_cast loopBound_eq
    (Inv.costP_seq (R := fun _ => True) (loop_cost hN)
      (fun s hs hp hg hr => trivial) (Inv.costP_of_cost tail_cost))

def endI : ProgHOL 64 := .dec (nm "i") .one (cw 0) (.seq ivLoop ivTail)

theorem endI_cost {N : BitVec 64} (hN : N.toNat ≤ ntxMax) :
    Inv.CostP σ guestCtx (CountEq N) endI loopBound := by
  unfold endI
  apply cost_dec_transform _ (loop_tail_cost hN)
  intro s hs hp v hv
  rw [ev_cw] at hv
  cases hv
  refine ⟨?_, (0 : BitVec 64), lookup_update_self _ _ _, by simp⟩
  change CountEq N (setVarHOLFinite (nm "i") (.val (.word (0 : BitVec 64))) s)
  exact count_update (n := nm "i") (v := .val (.word (0 : BitVec 64))) (by decide +kernel) hp

def afterN : ProgHOL 64 :=
  .dec (nm "vh") .one (.load .one (.op .add [lv (nm "si"), cw 8]))
    (.dec (nm "nvh") .one (.load .one (.op .add [lv (nm "si"), cw 16]))
      (.dec (nm "k") .one (cw 0) endI))

theorem afterN_cost {N : BitVec 64} (hN : N.toNat ≤ ntxMax) :
    Inv.CostP σ guestCtx (CountEq N) afterN loopBound := by
  unfold afterN
  exact cost_dec_other (by decide +kernel) (cost_dec_other (by decide +kernel)
    (cost_dec_other (by decide +kernel) (endI_cost hN)))

theorem lv_single {m : HolFiniteMapExact MlS (ValueHOL 64)} {n : MlS} {v : ValueHOL 64} (h : m.lookup n = some v) :
    Trie.LV [(n, v)] m := by
  intro p hp
  simp only [List.mem_singleton] at hp
  subst p
  exact h

theorem body_cost {SI PL N : BitVec 64} {M0 : Mem}
    (hPL : PL = rd M0 (SI + BitVec.ofNat 64 0))
    (hN : N = rd M0 (PL + BitVec.ofNat 64 40)) (hNb : N.toNat ≤ ntxMax) :
    Inv.CostP σ guestCtx (fun s => Trie.LV [(nm "si", .val (.word SI))] s.locals ∧ s.memory = M0)
      ivBody loopBound := by
  unfold ivBody
  refine cost_dec_transform (P' := fun s => s.locals.lookup (nm "pl") = some (.val (.word PL)) ∧ s.memory = M0) ?_ ?_
  · intro s hs hp v hv
    have hvPL := iv_load hp.1 (X := SI) (by simp) hv
    rw [hp.2, ← hPL] at hvPL
    subst v
    exact ⟨lookup_update_self _ _ _, hp.2⟩
  refine cost_dec_transform (P' := fun s => s.locals.lookup (nm "pl") = some (.val (.word PL)) ∧ s.memory = M0) ?_ ?_
  · intro s hs hp v hv
    refine ⟨?_, hp.2⟩
    exact (lookup_update_ne s.locals v (by decide +kernel)).trans hp.1
  refine cost_dec_transform (P' := CountEq N) ?_ (afterN_cost hNb)
  intro s hs hp v hv
  have hvN := iv_load (lv_single hp.1) (X := PL) (by simp) hv
  rw [hp.2, ← hN] at hvN
  subst v
  exact lookup_update_self _ _ _

#print axioms afterN_cost
#print axioms body_cost
end InitECandidate.Solver.MemSafe.IvvhCost
