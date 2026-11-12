import InitECandidate.Solver.Spec.Fq12.OuterBody

/-!
# The cost of `fq12_inv`

`calleeCost_fq12_inv`: under `X.code.lookup = guestCode`, the callee table entries it uses
and escape-freedom marks for `fq_mul`, `fq_poly_submul`, `fq_poly_deg`, every body installed
for `fq12_inv` costs at most `fq12InvB ...` ticks.

The run: `heap_mark`, six `alloc(416)` (pairwise disjoint by `six_disj`), the set-up
(`setup_ch`, which keeps the buffer locals), the outer loop (`outer_cost`, from `Iout`), and
the final scaling (`finTail_cost`, from any state).
-/

set_option linter.unusedSimpArgs false

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem hoare_triv {P : PanSemStateFiniteExact 64 σ → Prop} {p : ProgHOL 64} :
    Hoare σ X P p (fun _ _ => True) := fun _ _ _ _ => trivial

/-! ## After the outer loop -/

def finB (Bdeg Bmz Bhr Binv Bmul : Nat) : Nat :=
  1 + Bdeg + (max ((1 + Bmz + 0) + ((1 + Bhr + 0) + 0)) 0 +
    (1 + Binv + ((2 ^ 64 + 1) * ((1 + Bmul + (0 + 0)) + 1) + ((1 + Bhr + 0) + 0))))

theorem finBody_cost {Bmul : Nat} (hmul : CalleeCost σ X (nm "fq_mul") Bmul) :
    Cost σ X finBody (1 + Bmul + (0 + 0)) := by
  unfold finBody
  exact cost_dec (cost_decCall hmul (cost_seq (cost_store _ _) (cost_assign _ _ _)))

theorem finLoop_cost {Bmul : Nat} (hmul : CalleeCost σ X (nm "fq_mul") Bmul) :
    Cost σ X finLoop ((2 ^ 64 + 1) * ((1 + Bmul + (0 + 0)) + 1)) := by
  unfold finLoop
  exact cost_while_inc_lower (finBody_cost hmul)
    (stepsB_sound (σ := σ) (nm "i") true finBody (by decide))

theorem finTail_cost {Bdeg Bmz Bhr Binv Bmul : Nat}
    (hdg : CalleeCost σ X (nm "fq_poly_deg") Bdeg) (hmz : CalleeCost σ X (nm "memzero") Bmz)
    (hhr : CalleeCost σ X (nm "heap_release") Bhr) (hiv : CalleeCost σ X (nm "fq_inv") Binv)
    (hmul : CalleeCost σ X (nm "fq_mul") Bmul) :
    Cost σ X finTail (finB Bdeg Bmz Bhr Binv Bmul) := by
  unfold finTail finB callN
  exact cost_decCall hdg (cost_seq (cost_ite (cost_seq
      (cost_call (Bh := 0) hmz (by intro _ _ _ _ h; cases h))
      (cost_seq (cost_call (Bh := 0) hhr (by intro _ _ _ _ h; cases h)) (cost_return _))) cost_skip)
    (cost_dec (cost_decCall hiv (cost_dec (cost_seq (finLoop_cost hmul)
      (cost_seq (cost_call (Bh := 0) hhr (by intro _ _ _ _ h; cases h)) (cost_return _)))))))

/-! ## The set-up -/

def setupB (Bmz Bmc Bk : Nat) : Nat :=
  (1 + Bmz + 0) + (0 + (0 + (0 + ((1 + Bmz + 0) + ((1 + Bmc + 0) + ((1 + Bmz + 0) +
    ((1 + Bmz + 0) + (0 + Bk))))))))

theorem setup_ch {b : Bufs} {k : ProgHOL 64} {Bk Bmz Bmc : Nat}
    (hmz : CalleeCost σ X (nm "memzero") Bmz) (hmc : CalleeCost σ X (nm "memcpy") Bmc)
    (hk : CH σ X (fun t => BufLk b t) k Bk (fun _ _ => True)) :
    CH σ X (fun t => BufLk b t) (setupP k) (setupB Bmz Bmc Bk) (fun _ _ => True) := by
  have hcall : ∀ {f : MlS} {args : List (ExpHOL 64)} {Bf : Nat}, CalleeCost σ X f Bf →
      CH σ X (fun t => BufLk b t) (.call (some (none, none)) f args) (1 + Bf + 0)
        (fun r t => r = none ∧ BufLk b t) :=
    fun hf => ch_callD hf (funSpec_true _) fun s _ hs _ _ _ _ _ _ _ => ⟨rfl, hs⟩
  have hst : ∀ {a e : ExpHOL 64}, CH σ X (fun t => BufLk b t) (.store a e) 0
      (fun r t => r = none ∧ BufLk b t) :=
    ch_of (cost_store _ _) (hoare_store fun u _ hu _ _ _ _ _ _ => ⟨rfl, hu⟩)
  have hseq : ∀ {a c : ProgHOL 64} {Ba Bc : Nat},
      CH σ X (fun t => BufLk b t) a Ba (fun r t => r = none ∧ BufLk b t) →
      CH σ X (fun t => BufLk b t) c Bc (fun _ _ => True) →
      CH σ X (fun t => BufLk b t) (.seq a c) (Ba + Bc) (fun _ _ => True) :=
    fun ha hc => ch_seq ha (fun _ _ _ _ _ _ => trivial) (hc.pre fun t _ h => h.2)
  unfold setupP setupB callN
  exact hseq (hcall hmz) (hseq hst (hseq hst (hseq hst (hseq (hcall hmz) (hseq (hcall hmc)
    (hseq (hcall hmz) (hseq (hcall hmz) (hseq hst hk))))))))

/-! ## The allocations -/

theorem ch_alloc (hC : X.code.lookup = guestCode) {P : PanSemStateFiniteExact 64 σ → Prop}
    {rn : MlS} {k : ProgHOL 64} {Ba Bk : Nat} (hal : CalleeCost σ X (nm "alloc") Ba)
    (h : ∀ s, InCtx s X → P s → ∀ P0 : BitVec 64, s.globals.lookup hpN = some (.val (.word P0)) →
      CH σ X (fun t => t.globals.lookup hpN = some (.val (.word (nextP P0 (BitVec.ofNat 64 416)))) ∧
        t.locals.lookup rn = some (.val (.word P0)) ∧
        ∀ x, x ≠ rn → t.locals.lookup x = s.locals.lookup x) k Bk (fun _ _ => True)) :
    CH σ X P (.decCall rn .one (nm "alloc") [cw 416] k) (1 + Ba + Bk) (fun _ _ => True) := by
  refine ch_decCallS hal (funSpec_alloc hC) ?_
  intro s hs hp vs hvs callee v st hR _ _
  rw [show evs s [cw 416] = some [.val (.word (BitVec.ofNat 64 416))] from
    evs_cons (ev_cw _ 416) evs_nil] at hvs
  cases hvs
  obtain ⟨N, P0, hvs', hg, hv, hg'⟩ := hR v rfl
  subst hv
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs'
  subst hvs'
  refine ((h s hs hp P0 hg).pre (fun t _ ht => ?_)).post (fun _ _ _ _ _ => trivial)
  subst ht
  exact ⟨hg', lk_set_self _ _ _, fun x hx => lk_ne (Ne.symm hx)⟩

theorem next_eq {s : PanSemStateFiniteExact 64 σ} {P Q : BitVec 64}
    (h1 : s.globals.lookup hpN = some (.val (.word Q))) (h2 : s.globals.lookup hpN = some (.val (.word P))) :
    P = Q := by
  have := h2.symm.trans h1
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at this
  exact this

/-! ## The whole body -/

def fq12InvB (Bhm Bal Bmz Bmc Bdeg Binv Bmul Bsm Bz Bhr : Nat) : Nat :=
  1 + Bhm + (1 + Bal + (1 + Bal + (1 + Bal + (1 + Bal + (1 + Bal + (1 + Bal +
    setupB Bmz Bmc ((13 + 1) * (outerB Bdeg Bmz Binv Bmc Bmul Bsm Bz + 1) +
      finB Bdeg Bmz Bhr Binv Bmul)))))))

theorem fq12Inv_ch (hC : X.code.lookup = guestCode)
    {Bhm Bal Bmz Bmc Bdeg Binv Bmul Bsm Bz Bhr : Nat}
    (hhm : CalleeCost σ X (nm "heap_mark") Bhm) (hal : CalleeCost σ X (nm "alloc") Bal)
    (hmz : CalleeCost σ X (nm "memzero") Bmz) (hmc : CalleeCost σ X (nm "memcpy") Bmc)
    (hdg : CalleeCost σ X (nm "fq_poly_deg") Bdeg) (hiv : CalleeCost σ X (nm "fq_inv") Binv)
    (hmul : CalleeCost σ X (nm "fq_mul") Bmul) (hsm : CalleeCost σ X (nm "fq_poly_submul") Bsm)
    (hz : CalleeCost σ X (nm "u256_is_zero") Bz) (hhr : CalleeCost σ X (nm "heap_release") Bhr)
    {ef : MlS → Bool} (hef : EfSound σ X.code ef)
    (he1 : ef (nm "fq_mul") = true) (he2 : ef (nm "fq_poly_submul") = true)
    (he3 : ef (nm "fq_poly_deg") = true) :
    CH σ X (fun _ => True) fq12InvBody (fq12InvB Bhm Bal Bmz Bmc Bdeg Binv Bmul Bsm Bz Bhr)
      (fun _ _ => True) := by
  unfold fq12InvBody allocs fq12InvB
  refine ch_decCallS hhm (funSpec_true _) fun s _ _ _ _ _ _ _ _ _ _ => ?_
  refine CH.post (Q := fun _ _ => True) ?_ (fun _ _ _ _ _ => trivial)
  refine ch_alloc hC hal fun s0 _ _ P0 _ => ?_
  refine ch_alloc hC hal fun s1 _ ⟨hg1, hr0, hl1⟩ P1 hgP1 => ?_
  refine ch_alloc hC hal fun s2 _ ⟨hg2, hr1, hl2⟩ P2 hgP2 => ?_
  refine ch_alloc hC hal fun s3 _ ⟨hg3, hs0, hl3⟩ P3 hgP3 => ?_
  refine ch_alloc hC hal fun s4 _ ⟨hg4, hs1, hl4⟩ P4 hgP4 => ?_
  refine ch_alloc hC hal fun s5 _ ⟨hg5, hq, hl5⟩ P5 hgP5 => ?_
  have hpw : Pw ⟨P0, P1, P2, P3, P4, P5⟩ :=
    six_disj P0 P1 P2 P3 P4 P5 (next_eq hg1 hgP1) (next_eq hg2 hgP2) (next_eq hg3 hgP3)
      (next_eq hg4 hgP4) (next_eq hg5 hgP5)
  refine CH.pre (P := fun t => BufLk ⟨P0, P1, P2, P3, P4, P5⟩ t) ?_ ?_
  rotate_left
  · intro t _ ⟨_, htm, hl6⟩
    refine ⟨?_, ?_, ?_, ?_, ?_, htm⟩
    · rw [hl6 _ (by decide), hl5 _ (by decide), hl4 _ (by decide), hl3 _ (by decide),
        hl2 _ (by decide)]; exact hr0
    · rw [hl6 _ (by decide), hl5 _ (by decide), hl4 _ (by decide), hl3 _ (by decide)]; exact hr1
    · rw [hl6 _ (by decide), hl5 _ (by decide), hl4 _ (by decide)]; exact hs0
    · rw [hl6 _ (by decide), hl5 _ (by decide)]; exact hs1
    · rw [hl6 _ (by decide)]; exact hq
  refine setup_ch hmz hmc ?_
  exact ch_seq (R := fun _ _ => True)
    ⟨(outer_cost hC hdg hmz hiv hmc hmul hsm hz hef he1 he2 he3).pre fun t _ h => ⟨_, h, hpw⟩,
      hoare_triv⟩
    (fun _ _ _ _ _ _ => trivial) (ch_of (finTail_cost hdg hmz hhr hiv hmul) hoare_triv)

/-- **The cost of `fq12_inv`.** -/
theorem calleeCost_fq12_inv (hC : X.code.lookup = guestCode)
    {Bhm Bal Bmz Bmc Bdeg Binv Bmul Bsm Bz Bhr : Nat}
    (hhm : CalleeCost σ X (nm "heap_mark") Bhm) (hal : CalleeCost σ X (nm "alloc") Bal)
    (hmz : CalleeCost σ X (nm "memzero") Bmz) (hmc : CalleeCost σ X (nm "memcpy") Bmc)
    (hdg : CalleeCost σ X (nm "fq_poly_deg") Bdeg) (hiv : CalleeCost σ X (nm "fq_inv") Binv)
    (hmul : CalleeCost σ X (nm "fq_mul") Bmul) (hsm : CalleeCost σ X (nm "fq_poly_submul") Bsm)
    (hz : CalleeCost σ X (nm "u256_is_zero") Bz) (hhr : CalleeCost σ X (nm "heap_release") Bhr)
    {ef : MlS → Bool} (hef : EfSound σ X.code ef)
    (he1 : ef (nm "fq_mul") = true) (he2 : ef (nm "fq_poly_submul") = true)
    (he3 : ef (nm "fq_poly_deg") = true) :
    CalleeCost σ X (nm "fq12_inv") (fq12InvB Bhm Bal Bmz Bmc Bdeg Binv Bmul Bsm Bz Bhr) := by
  refine Inv.calleeCost_of_costP_true fun vs body callee rs hl => ?_
  rw [hC] at hl
  obtain ⟨rfl, -⟩ := lookupCode_two code_fq12_inv (by decide) hl
  exact (fq12Inv_ch hC hhm hal hmz hmc hdg hiv hmul hsm hz hhr hef he1 he2 he3).1

end InitECandidate.Solver.Spec.Fq12
