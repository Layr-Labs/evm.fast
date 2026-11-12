import InitECandidate.Solver.Spec.Mpt.Decode.Step0

/-!
# **The tick bound of `_decode_witness_node_body`**, under `DecPre`

`decode_witness_node_body_costP`: a conditional table entry (`Spec.Inv.CalleeCostP`) for

```
DecPre W vs s := ∃ db q n, vs = [db, q, n] (words) ∧ AllocOK s ∧
  ∃ H p, ptrsOf s = some p ∧ heapBase ≤ q ∧ q + n ≤ H ∧ H ≤ p.hp ∧ W db H s.memory
```

(the witness slice `[q, q + n)` lies in the heap below `H`, which the loop never writes)

for any node-DB predicate `W` that reads only heap cells in `[heapBase, H)` (`WFrame W`),
given the callee bounds and the footprint hypotheses (`FreshFoot`, for every `H`) of
`_decode_step` (`DecPreS H`/`DecQ H`), `_resolve_step` (`ResPre W H`/`ResQ H`) and `rlp_item`. Bound: `(scratchEnd - heapEnd + 4) * (wdBb … + 1)` with
`wdBb = Bds + Brs + Bri + Bnx + 2 Bf + 4`.

Loop: `wd_step` (one iteration keeps `WI` and lowers `wdMu`), `wd_loop_costP`
(`Inv.costP_while` with the bound `wdMu ≤ scratchEnd - heapEnd + 3`, from `wPot_le`).
-/

namespace InitECandidate.Solver.Spec.Mpt.Dec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

theorem go_ne {s : State σ} {DB T R Mo S N G : BitVec 64} (hl : WLoc DB T R Mo S N G s.locals)
    (hc : CondTrue s goCond) : G ≠ 0 := by
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lw hl.2.2.2.2.2.2] at hx; rw [ev_cw] at hy
  cases hx; cases hy
  have := notEqual_true hxy
  simpa using this

/-- **One iteration.** -/
theorem wd_step (hC : X.code.lookup = guestCode) {W : BitVec 64 → Nat → Mem → Prop} (hW : WFrame W)
    {H : Nat} (hds : FreshFoot σ X (nm "_decode_step") (DecPreS H) (DecQ H))
    (hrs : FreshFoot σ X (nm "_resolve_step") (ResPre W H) (ResQ H))
    (hri : FreshFoot σ X (nm "rlp_item") (fun _ _ => True) (fun _ _ _ _ _ => True))
    {DB : BitVec 64} {sp0 k : Nat} :
    Hoare σ X (fun s => WI W DB H sp0 s ∧ CondTrue s goCond ∧ wdMu sp0 s = k) wdLoopBody
      (WPost W DB H sp0 k) := by
  unfold wdLoopBody
  refine hoare_ite ?_ ?_
  · refine hoare_pre (wd_m1 hW hds) fun s _ ⟨⟨⟨p, T, R, Mo, S, N, G, U, hp, hloc, hcore⟩, hc, hk⟩,
      hc1⟩ => ?_
    have hMo : Mo = 1 := by have := eq_of_then (ev_lw hloc.2.2.2.1) hc1; simpa using this
    subst hMo
    have hG := go_ne hloc hc
    exact ⟨p, T, R, S, N, G, U, hp, hloc, hG, hcore, by rw [← hk, wdMu_of hp hloc hG, wdMode_1']⟩
  refine hoare_ite ?_ ?_
  · refine hoare_pre (wd_m2 hW hrs) fun s _ ⟨⟨⟨⟨p, T, R, Mo, S, N, G, U, hp, hloc, hcore⟩, hc, hk⟩,
      hc1⟩, hc2⟩ => ?_
    have hMo : Mo = 2 := by have := eq_of_then (ev_lw hloc.2.2.2.1) hc2; simpa using this
    subst hMo
    have hG := go_ne hloc hc
    exact ⟨p, T, R, S, N, G, U, hp, hloc, hG, hcore, by
      rw [← hk, wdMu_of hp hloc hG]; rfl⟩
  · refine hoare_pre (wd_m0 hC hW hri) fun s _ ⟨⟨⟨⟨p, T, R, Mo, S, N, G, U, hp, hloc, hcore⟩, hc, hk⟩,
      hc1⟩, hc2⟩ => ?_
    have hMo1 : Mo ≠ 1 := by have := ne_of_else (ev_lw hloc.2.2.2.1) hc1; simpa using this
    have hMo2 : Mo ≠ 2 := by have := ne_of_else (ev_lw hloc.2.2.2.1) hc2; simpa using this
    have hG := go_ne hloc hc
    exact ⟨p, T, R, Mo, S, N, G, U, hp, hloc, hG, hMo1, hMo2, hcore, by rw [← hk, wdMu_of hp hloc hG]⟩

/-! ## The cost of one iteration (all states) -/

/-- The bound of one iteration. -/
def wdBb (Bds Brs Bri Bnx Bf : Nat) : Nat := Bds + Brs + Bri + Bnx + 2 * Bf + 4

theorem cost_ite_le {c : ExpHOL 64} {a b : ProgHOL 64} {Ba Bb' B : Nat} (ha : Cost σ X a Ba)
    (hb : Cost σ X b Bb') (h1 : Ba ≤ B) (h2 : Bb' ≤ B) : Cost σ X (.ite c a b) B :=
  (cost_ite ha hb).mono (Nat.max_le.mpr ⟨h1, h2⟩)

theorem cost_callD {f : MlS} {args : List (ExpHOL 64)} {Bf : Nat} (hf : CalleeCost σ X f Bf) :
    Cost σ X (callD f args) (1 + Bf + 0) :=
  cost_call (Bh := 0) hf (by intro _ _ _ _ h; cases h)

theorem wdLoopBody_cost {Bds Brs Bri Bnx Bf : Nat}
    (hds : CalleeCost σ X (nm "_decode_step") Bds) (hrs : CalleeCost σ X (nm "_resolve_step") Brs)
    (hri : CalleeCost σ X (nm "rlp_item") Bri) (hnx : CalleeCost σ X (nm "node_new_ext") Bnx)
    (hf : CalleeCost σ X (nm "mpt_fail") Bf) :
    Cost σ X wdLoopBody (wdBb Bds Brs Bri Bnx Bf) := by
  have hA := fun n e => cost_assign (σ := σ) (X := X) .local n e
  have hS := fun a e => cost_store (σ := σ) (X := X) a e
  have hguard : ∀ c : ExpHOL 64, ∀ k : Nat, Cost σ X (.ite c (callD (nm "mpt_fail") [cw k]) .skip) (1 + Bf) :=
    fun c k => cost_ite_le (cost_callD hf) cost_skip (by omega) (by omega)
  have h1 : Cost σ X wdM1 (1 + Bds + 0) := by
    unfold wdM1 wdM1K
    refine cost_decCall hds (cost_ite_le (cost_seq (hA _ _) (hA _ _))
      (cost_seq (hS _ _) (cost_seq (hA _ _) (cost_seq (cost_ite_le (hA _ _) (hA _ _) le_rfl le_rfl)
        (hA _ _)))) (by omega) (by omega))
  have h2 : Cost σ X wdM2 (1 + Brs + 0) := by
    unfold wdM2 wdM2K
    refine cost_dec (cost_decCall hrs (cost_ite_le (cost_seq (hS _ _) (cost_seq (hA _ _) (hA _ _)))
      (cost_seq (hS _ _) (cost_seq (hA _ _) (cost_seq (hA _ _) (hA _ _)))) (by omega) (by omega)))
  have hext : Cost σ X wdExt ((1 + Bf) + ((1 + Bf) + (1 + Bnx + (0 + (0 + (0 + 0)))))) := by
    unfold wdExt wdExtCk wdExtK
    exact cost_seq (hguard _ _) (cost_dec (cost_seq (hguard _ _)
      (cost_decCall hnx (cost_seq (hS _ _) (cost_seq (hS _ _) (cost_seq (hA _ _) (hA _ _)))))))
  have hpop : Cost σ X wdBrPop (1 + Bri + ((1 + Bf) + ((1 + Bf) + (0 + (0 + (0 + 0)))))) := by
    unfold wdBrPop wdOccK wdBrFin
    refine cost_dec (cost_decCall hri (cost_dec (cost_seq
      (cost_ite_le (cost_seq (hS _ _) (cost_seq (hS _ _) (cost_ite_le (hA _ _) cost_skip le_rfl
        le_rfl))) cost_skip (by omega) (by omega))
      (cost_seq (hguard _ _) (cost_seq (hS _ _) (cost_seq (hS _ _) (cost_seq (hA _ _) (hA _ _))))))))
  have hbr : Cost σ X wdBranch (0 + (0 + (0 + (1 + Bri + ((1 + Bf) + ((1 + Bf) + 0)))))) := by
    unfold wdBranch wdBrI wdOccSt wdAdv
    refine cost_dec (cost_dec (cost_seq (hS _ _) (cost_seq (cost_ite_le (hS _ _) cost_skip le_rfl
      le_rfl) (cost_seq (hA _ _) (cost_ite_le (cost_seq (hS _ _) (cost_seq (hA _ _) (hA _ _)))
        hpop (by omega) (by omega))))))
  have h0 : Cost σ X wdM0 (wdBb Bds Brs Bri Bnx Bf) := by
    unfold wdM0 wdPopK wdHashSt
    refine cost_ite_le (hA _ _) (cost_dec (cost_seq (cost_ite_le (hS _ _) cost_skip le_rfl le_rfl)
      (cost_ite_le (B := wdBb Bds Brs Bri Bnx Bf) hext hbr (by unfold wdBb; omega)
        (by unfold wdBb; omega)))) (by omega) (by omega)
  unfold wdLoopBody
  exact cost_ite_le (B := wdBb Bds Brs Bri Bnx Bf) h1 (cost_ite_le (B := wdBb Bds Brs Bri Bnx Bf) h2 h0
    (by unfold wdBb; omega) le_rfl) (by unfold wdBb; omega) le_rfl

/-! ## The loop -/

theorem wdMu_le {W : BitVec 64 → Nat → Mem → Prop} {DB : BitVec 64} {H sp0 : Nat} {s : State σ}
    (h : WI W DB H sp0 s) (hc : CondTrue s goCond) : wdMu sp0 s ≤ scratchEnd - heapEnd + 3 := by
  obtain ⟨p, T, R, Mo, S, N, G, U, hp, hloc, hcore⟩ := h
  have hG := go_ne hloc hc
  rw [wdMu_of hp hloc hG]
  obtain ⟨hsp0, -, -, hord, hsp, -⟩ := hcore
  have := wPot_le s.memory sp0 _ p.sp T rfl
  have := lt_heapEnd_sp hord
  have : wdMode Mo ≤ 2 := by unfold wdMode; split <;> (try split) <;> omega
  omega

theorem wd_loop_costP (hC : X.code.lookup = guestCode) {W : BitVec 64 → Nat → Mem → Prop}
    (hW : WFrame W) {H : Nat} (hds : FreshFoot σ X (nm "_decode_step") (DecPreS H) (DecQ H))
    (hrs : FreshFoot σ X (nm "_resolve_step") (ResPre W H) (ResQ H))
    (hri : FreshFoot σ X (nm "rlp_item") (fun _ _ => True) (fun _ _ _ _ _ => True))
    {Bb : Nat} (hb : Cost σ X wdLoopBody Bb) {DB : BitVec 64} {sp0 : Nat} :
    Inv.CostP σ X (WI W DB H sp0) (.while goCond wdLoopBody)
      ((scratchEnd - heapEnd + 3 + 1) * (Bb + 1)) := by
  refine Inv.costP_while (wdMu sp0) (scratchEnd - heapEnd + 3) (fun _ h => h) (fun _ => rfl)
    (Inv.costP_of_cost hb) ?_ (fun s _ hI hc => wdMu_le hI hc) ?_
  · intro s hs ⟨hI, hc⟩ ht
    have := wd_step hC hW hds hrs hri (k := wdMu sp0 s) s hs ⟨hI, hc, rfl⟩ ht
    exact fun hr => (this hr).1
  · intro k s hs ⟨hI, hc, hk⟩ ht
    have := wd_step hC hW hds hrs hri (k := k) s hs ⟨hI, hc, hk⟩ ht
    exact fun hr => (this hr).2

/-! ## The body -/

/-- **The precondition** on the arguments `[db, p, n]` and the entry state. -/
def DecPre (W : BitVec 64 → Nat → Mem → Prop) (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∃ db q n : BitVec 64, vs = [.val (.word db), .val (.word q), .val (.word n)] ∧
    MemSafe.AllocOK s ∧ ∃ (H : Nat) (p : Ptrs), ptrsOf s = some p ∧ heapBase ≤ q.toNat ∧
      q.toNat + n.toNat ≤ H ∧ H ≤ p.hp ∧ W db H s.memory

/-- The bound of `_decode_witness_node_body`. -/
def decB (Bds Brs Bri Bnx Bf : Nat) : Nat :=
  (scratchEnd - heapEnd + 3 + 1) * (wdBb Bds Brs Bri Bnx Bf + 1) + 0

/-- **`_decode_witness_node_body`** under `DecPre W`. -/
theorem decode_witness_node_body_costP (hC : X.code.lookup = guestCode)
    {W : BitVec 64 → Nat → Mem → Prop} (hW : WFrame W)
    (hds' : ∀ H, FreshFoot σ X (nm "_decode_step") (DecPreS H) (DecQ H))
    (hrs' : ∀ H, FreshFoot σ X (nm "_resolve_step") (ResPre W H) (ResQ H))
    (hri' : FreshFoot σ X (nm "rlp_item") (fun _ _ => True) (fun _ _ _ _ _ => True))
    {Bds Brs Bri Bnx Bf : Nat}
    (hds : CalleeCost σ X (nm "_decode_step") Bds) (hrs : CalleeCost σ X (nm "_resolve_step") Brs)
    (hri : CalleeCost σ X (nm "rlp_item") Bri) (hnx : CalleeCost σ X (nm "node_new_ext") Bnx)
    (hf : CalleeCost σ X (nm "mpt_fail") Bf) :
    Inv.CalleeCostP σ X (nm "_decode_witness_node_body") (DecPre W) (decB Bds Brs Bri Bnx Bf) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, Cc, rfl, -, -, -, hA, hB, hCc⟩ :=
    lookupCode_three code_decode_witness_node_body (by decide) (by decide) (by decide) hl
  unfold wdBody decB
  refine Inv.costP_dec fun s _ ⟨hloc, hpre⟩ v0 hv0 _ => ?_
  obtain ⟨db, q, n, hvs, ⟨p, hp, hord⟩, H, p', hp', hqb, hqn, hHp, hWm⟩ := hpre
  have hHb : heapBase ≤ H := by omega
  rw [hp] at hp'; cases hp'
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  rw [ev_cw] at hv0; cases hv0
  refine Inv.costP_dec fun s1 _ hs1 v1 hv1 _ => ?_
  subst hs1
  rw [ev_cw] at hv1; cases hv1
  refine Inv.costP_dec fun s2 _ hs2 v2 hv2 _ => ?_
  subst hs2
  rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), hloc, hB] at hv2; cases hv2
  refine Inv.costP_dec fun s3 _ hs3 v3 hv3 _ => ?_
  subst hs3
  rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), hloc,
    hCc] at hv3; cases hv3
  refine Inv.costP_dec fun s4 _ hs4 v4 hv4 _ => ?_
  subst hs4
  rw [ev_cw] at hv4; cases hv4
  refine Inv.costP_dec fun s5 _ hs5 v5 hv5 _ => ?_
  subst hs5
  rw [ev_cw] at hv5; cases hv5
  refine Inv.costP_dec fun s6 _ hs6 v6 hv6 _ => ?_
  subst hs6
  rw [ev_cw] at hv6; cases hv6
  refine Inv.costP_seq (R := fun _ => True) ?_ (fun _ _ _ _ _ => trivial)
    (Inv.costP_of_cost (cost_return _))
  refine Inv.CostP.pre (wd_loop_costP hC hW (hds' H) (hrs' H) hri' (wdLoopBody_cost hds hrs hri hnx hf)
    (DB := db) (sp0 := p.sp)) fun t _ ht => ?_
  subst ht
  have hsp0 := hord.2.2.2.2.1
  refine ⟨p, 0, 0, 1, q, n, 1, H, (ptrsOf_frame rfl).trans hp, ?_, hsp0, hHb, hWm, hord, le_rfl,
    le_rfl, hHp, wChain_zero _ _ _ _ _, fun h => absurd rfl h, fun _ => ⟨hqb, hqn⟩,
    fun h => absurd h (by decide)⟩
  refine ⟨?_, ?_, ?_, ?_, fun h => absurd h (by decide), fun _ => ⟨?_, ?_⟩, ?_⟩
  all_goals simp (disch := decide) only [lk_set_ne, lk_set_self]
  all_goals first | rfl | (rw [hloc]; exact hA)

end InitECandidate.Solver.Spec.Mpt.Dec
