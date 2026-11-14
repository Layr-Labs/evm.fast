import InitECandidate.Solver.MemSafe.BalCost.Loop
import InitECandidate.Solver.Band.Rules

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000
set_option cbv.maxSteps 4000000000

open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL ExpHOL ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.BalEnc
open InitECandidate.Solver.MemSafe.BalCost.Loop

namespace InitECandidate.Solver.MemSafe.BalCost.Suffix

noncomputable def CountEq {σ : Type} (C : BitVec 64) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ev s countE = some (.val (.word C))

theorem count_update {σ : Type} {s t : PanSemStateFiniteExact 64 σ}
    {n : MlS} {v : ValueHOL 64} {C : BitVec 64} (hn : n ≠ cAddrs) (h : CountEq C s) :
    CountEq C (setVarHOLFinite n v {t with locals := s.locals}) := by
  have hl : (setVarHOLFinite n v {t with locals := s.locals}).locals.lookup cAddrs =
      s.locals.lookup cAddrs := by
    simp [setVarHOLFinite, FUPDATE, hn, Ne.symm hn]
  have he : ev (setVarHOLFinite n v {t with locals := s.locals}) countE = ev s countE :=
    ev_field_congr hl
  exact he.trans h

theorem hoare_count_keep {σ : Type} {p : ProgHOL 64} {C : BitVec 64}
    (hk : Keeps σ cAddrs p) :
    Hoare σ guestCtx (CountEq C) p (fun r t => r = none → CountEq C t) := by
  intro s hs hp ht hr
  have he : ev (evaluateHOLFiniteState s p).2 countE = ev s countE :=
    ev_field_congr (hk s (Or.inl hr))
  exact he.trans hp

theorem cost_dec_other {σ : Type} {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {k : ProgHOL 64} {B : Nat} {C : BitVec 64} (hn : n ≠ cAddrs)
    (hk : InitECandidate.Solver.Spec.Inv.CostP σ guestCtx (CountEq C) k B) :
    InitECandidate.Solver.Spec.Inv.CostP σ guestCtx (CountEq C) (.dec n sh e k) B := by
  apply InitECandidate.Solver.Spec.Inv.costP_dec
  intro s hs hp v hv hsh
  exact hk.pre (fun t ht heq => by subst t; exact count_update (t := s) hn hp)

theorem cost_decCall_other {σ : Type} {n f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)}
    {k : ProgHOL 64} {Bf Bk : Nat} {C : BitVec 64} (hn : n ≠ cAddrs)
    (hf : CalleeCost σ guestCtx f Bf)
    (hk : InitECandidate.Solver.Spec.Inv.CostP σ guestCtx (CountEq C) k Bk) :
    InitECandidate.Solver.Spec.Inv.CostP σ guestCtx (CountEq C) (.decCall n sh f args k)
      (1 + Bf + Bk) := by
  apply InitECandidate.Solver.Band.costP_decCallT hf
  intro s hs hp v st
  exact hk.pre (fun t ht heq => by subst t; exact count_update hn hp)

theorem hoare_init {σ : Type} {C : BitVec 64} {M : Nat} :
    Hoare σ guestCtx (CountEq C) (.assign .local cI (.const 0))
      (fun r t => r = none → CapturedCountInv cI countE C M t) := by
  apply InitECandidate.Solver.Spec.hoare_assign
  intro s hs hp v hv hvalid hr
  change some (.val (.word (0 : BitVec 64))) = some v at hv
  have hv0 := (Option.some.inj hv).symm
  subst v
  refine ⟨count_update (t := s) (by decide +kernel) hp, 0, ?_, by simp⟩
  simp [setVarHOLFinite, FUPDATE]

theorem cost_init_loop {σ : Type} {C : BitVec 64} {M B Bk : Nat}
    {body k : ProgHOL 64} (hM : M < 2 ^ 63) (hC : C.toNat < 2 ^ 63 → C.toNat ≤ M)
    (hb : Cost σ guestCtx body B) (hstep : Steps σ cI (· + 1) body)
    (hkeep : Keeps σ cAddrs body)
    (hk : InitECandidate.Solver.Spec.Inv.CostP σ guestCtx (CountEq C) k Bk) :
    InitECandidate.Solver.Spec.Inv.CostP σ guestCtx (CountEq C)
      (.seq (.assign .local cI (.const 0))
        (.seq (.while (.cmp .less (.var .local cI) countE) body) k))
      ((M + 1) * (B + 1) + Bk) := by
  have hl := conditional_limit_while_costP (E := countE) hM hC hb hstep (fun _ => rfl)
    (fun s he => ev_field_congr (hkeep s he))
  have hw : Hoare σ guestCtx (CapturedCountInv cI countE C M)
      (.while (.cmp .less (.var .local cI) countE) body)
      (fun r t => r = none → CountEq C t) :=
    hoare_pre (hoare_count_keep (keeps_while hkeep)) (fun _ _ h => h.1)
  have hseq := InitECandidate.Solver.Spec.Inv.costP_seq hl hw hk
  simpa only [Nat.zero_add] using
    (InitECandidate.Solver.Spec.Inv.costP_seq
      (InitECandidate.Solver.Spec.Inv.costP_of_cost (cost_assign .local cI (.const 0)))
      (hoare_init (M := M)) hseq)

#print axioms cost_init_loop

def encTail : ProgHOL 64 := match phase2c with
  | .decCall _ _ _ _ (.dec _ _ _ (.seq _ (.seq _ k))) => k
  | _ => .skip

def afterKeys : ProgHOL 64 := match phase2 with
  | .decCall _ _ _ _ (.decCall _ _ _ _ k) => k
  | _ => .skip

def sortCall : ProgHOL 64 := match afterKeys with
  | .seq p _ => p
  | _ => .skip

def oldB (p : ProgHOL 64) : Nat := (InitECandidate.Solver.MemSafe.BalCost.Analyzer.costFin p).getD 0

theorem old_cost {σ : Type} {p : ProgHOL 64}
    (hs : (InitECandidate.Solver.MemSafe.BalCost.Analyzer.costFin p).isSome = true) : Cost σ guestCtx p (oldB p) := by
  obtain ⟨B, hB⟩ := Option.isSome_iff_exists.mp hs
  simpa [oldB, hB] using (InitECandidate.Solver.MemSafe.BalCost.Analyzer.cost_guest_costA (σ := σ) hB)

def allocName : MlS := Basis.Pure.MlString.ofString "alloc"
def allocB : Nat := (Shards.finalState.1.lookup allocName).getD 0

theorem alloc_cost {σ : Type} : CalleeCost σ guestCtx allocName allocB := by
  have hs : (Shards.finalState.1.lookup allocName).isSome = true := by decide_cbv
  obtain ⟨B, hB⟩ := Option.isSome_iff_exists.mp hs
  simpa [allocB, hB] using (Wire.calleeCost_guest (σ := σ) (Wire.tbLe_of_eq hB))

theorem tail_cost {σ : Type} : Cost σ guestCtx encTail (oldB encTail) :=
  old_cost (by decide_cbv)

theorem sort_cost {σ : Type} : Cost σ guestCtx sortCall (oldB sortCall) :=
  old_cost (by decide_cbv)

def cBound (M : Nat) : Nat := 1 + allocB + ((M + 1) * (encB + 1) + oldB encTail)
def afterKeysBound (M : Nat) : Nat := oldB sortCall + ((M + 1) * (sizeB + 1) + cBound M)

theorem phase2c_cost {σ : Type} {C : BitVec 64} {M : Nat}
    (hM : M < 2 ^ 63) (hC : C.toNat < 2 ^ 63 → C.toNat ≤ M) :
    InitECandidate.Solver.Spec.Inv.CostP σ guestCtx (CountEq C) phase2c (cBound M) := by
  unfold phase2c cBound
  apply cost_decCall_other (by decide +kernel) alloc_cost
  apply cost_dec_other (by decide +kernel)
  change InitECandidate.Solver.Spec.Inv.CostP σ guestCtx (CountEq C)
    (.seq (.assign .local cI (.const 0))
      (.seq (.while (.cmp .less (.var .local cI) countE) encBody) encTail))
    ((M + 1) * (encB + 1) + oldB encTail)
  exact cost_init_loop hM hC cost_enc enc_steps enc_keeps
    (InitECandidate.Solver.Spec.Inv.costP_of_cost tail_cost)

theorem afterKeys_cost {σ : Type} {C : BitVec 64} {M : Nat}
    (hM : M < 2 ^ 63) (hC : C.toNat < 2 ^ 63 → C.toNat ≤ M) :
    InitECandidate.Solver.Spec.Inv.CostP σ guestCtx (CountEq C) afterKeys (afterKeysBound M) := by
  change InitECandidate.Solver.Spec.Inv.CostP σ guestCtx (CountEq C)
    (.seq sortCall
      (.dec cTotal .one (.const 1024)
        (.seq (.assign .local cI (.const 0))
          (.seq (.while (.cmp .less (.var .local cI) countE) sizeBody) phase2c))))
    (oldB sortCall + ((M + 1) * (sizeB + 1) + cBound M))
  refine InitECandidate.Solver.Spec.Inv.costP_seq
    (InitECandidate.Solver.Spec.Inv.costP_of_cost sort_cost)
    (hoare_count_keep (keepsB_sound cAddrs sortCall (by decide +kernel))) ?_
  apply cost_dec_other (by decide +kernel)
  exact cost_init_loop hM hC cost_size size_steps size_keeps (phase2c_cost hM hC)

#print axioms phase2c_cost
#print axioms afterKeys_cost

end InitECandidate.Solver.MemSafe.BalCost.Suffix
