import InitECandidate.Solver.MemSafe.Ptx.PtNewCode
import InitECandidate.Solver.MemSafe.Ptx.PtTab2

/-!
# F3d: `te_new` and `msg_new`: `x = alloc(N); memzero(x, N); return x`
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
open InitECandidate.Solver.MemSafe.Entry2

variable {σ : Type}

def ZN (m : Mem) (w : BitVec 64) (N : Nat) : Prop :=
  ∀ j, j % 8 = 0 → j < N → m (w + BitVec.ofNat 64 j) = .word 0

/-- What `x = alloc(N); memzero(x, N); return x` returns and leaves, for the typing `Γ`, allocator state `p`. -/
def NewRb (N : Nat) (Γ : Gam) (p : Ptrs) (s : State σ) (v : ValueHOL 64) (t : State σ) : Prop :=
  ∃ Γ' p' w, v = .val (.word w) ∧
    StepD Γ p s Γ' p' t ∧ FreshBuf Γ' p p' w N ∧ ZN t.memory w N ∧
    (∀ a, ProtCell guestC Γ a → t.memory a = s.memory a) ∧
    (∀ a : BitVec 64, ¬ InObj Γ a.toNat → p.Allocated a.toNat → t.memory a = s.memory a) ∧
    (∀ g ∈ guestC.PG, t.globals.lookup g = s.globals.lookup g) ∧
    heapBase ≤ w.toNat ∧ w.toNat + N ≤ p'.hp

def NewR (N : Nat) (s : State σ) (v : ValueHOL 64) (t : State σ) : Prop :=
  ∀ Γ p, G guestC (HR σ) Γ s → ptrsOf s = some p → NewRb N Γ p s v t

/-- The state after `x = alloc(N)`. -/
def AfterAlloc (N : Nat) (x : MlS) (Γ : Gam) (p : Ptrs) (s u : State σ) : Prop :=
  ∃ Γ1 p1 w, u.locals.lookup x = some (.val (.word w)) ∧ StepD Γ p s Γ1 p1 u ∧ FreshBuf Γ1 p p1 w N ∧
    (∀ a, ProtCell guestC Γ a → u.memory a = s.memory a) ∧ u.memory = s.memory ∧
    (∀ g ∈ guestC.PG, u.globals.lookup g = s.globals.lookup g) ∧
    heapBase ≤ w.toNat ∧ w.toNat + N ≤ p1.hp


theorem alloc_step {N : Nat} (hN : N < 2 ^ 64) {x : MlS} {Γ : Gam} {p : Ptrs} {s : State σ} {callee : Locs}
    {v : ValueHOL 64} {st : State σ}
    (hG : G guestC (HR σ) Γ s) (hp : ptrsOf s = some p)
    (hR : SumRelX guestC (HR σ) ⟨[.any], [.freshArg 0 1 0], [], false⟩
      (fun _ s Γ => ReqOK [] s Γ) (fun _ s Γ a => ProtCell guestC Γ a ∧ CapPW [] s Γ a)
      (fun _ _ _ _ _ _ => True) [.val (.word (BitVec.ofNat 64 N))] (callEntryStateHOLFinite s callee) (.returned v) st)
    (hA : AllocR (σ := σ) .heap [.val (.word (BitVec.ofNat 64 N))] (callEntryStateHOLFinite s callee) (.returned v) st)
    (hsh : shapeEqHOL (shapeOfHOLExact v) ShapeHOL.one = true) :
    AfterAlloc N x Γ p s (setVarHOLFinite x v { st with locals := s.locals }) := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  obtain ⟨o, rfl⟩ := val_of_shapeEq_one' hsh
  have hGe : G guestC (HR σ) Γ (callEntryStateHOLFinite s callee) := (G_locFree hH s _ _).mpr hG
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := (ptrsOf_congr rfl).trans hp
  obtain ⟨Γ', p0, p', hc, -⟩ := hR (by simp [Good]) (not_abortive_ret _) Γ hGe
    ⟨p, hpe, argsOK_any (by simp) rfl⟩ (reqOK_nil)
  obtain rfl : p = p0 := (Option.some.inj (hc.1.symm.trans hpe)).symm
  have hret := hc.2.2.2.2.2.2.2.2.2 _ rfl 0 (RT.freshArg 0 1 0) o rfl (by simp [flattenHOL])
  obtain ⟨y, hy, hfb⟩ := hret
  simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hy
  subst hy
  obtain ⟨hmem, -, p'', hp'', hord'', -, hq⟩ := hA (by simp [Good]) (BitVec.ofNat 64 N) p rfl hpe (ordered_of_G hG hp)
  obtain ⟨q, hqo, -, hlive, -⟩ := hq _ rfl
  have hpp : p'' = p' := Option.some.inj (hp''.symm.trans hc.2.1)
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hqo
  subst hqo
  simp only [Region.Live] at hlive
  rw [hpp] at hlive
  have hBN : (BitVec.ofNat 64 N).toNat = N := by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hN]
  rw [hBN, Nat.one_mul, Nat.add_zero] at hfb
  have hstep : StepD Γ p s Γ' p' (setVarHOLFinite x (.val (.word o)) { st with locals := s.locals }) :=
    ⟨hp, (ptrsOf_congr rfl).trans hc.2.1, hc.2.2.1, hc.2.2.2.1, hc.2.2.2.2.1, hG,
      (G_locFree hH st _ _ |>.mpr hc.2.2.2.2.2.1 |> fun h => G_congr hH rfl rfl rfl rfl h)⟩
  refine ⟨Γ', p', o, lk_set_self _ _ _, hstep, hfb, ?_, ?_, ?_, hlive.1, ?_⟩
  · intro a ha
    show st.memory a = s.memory a
    rw [show st.memory = s.memory from hmem]
  · exact hmem
  · intro g hg
    have := hc.2.2.2.2.2.2.2.1 g hg (by simp)
    exact this
  · have := hlive.2
    rw [hBN] at this
    exact this


/-- The body `x = alloc(N); memzero(x, N); return x`. -/
def amBody (x : MlS) (N : Nat) : ProgHOL 64 :=
  .decCall x .one (nm "alloc") [cw N] (.seq (callD (nm "memzero") [lv x, cw N]) (.return (lv x)))

theorem memzero_step {N : Nat} (hN : N < 2 ^ 63) (hN8 : N % 8 = 0) {x : MlS} {Γ : Gam} {p : Ptrs} {s u : State σ}
    (hG : G guestC (HR σ) Γ s) (hp : ptrsOf s = some p) (hA : AfterAlloc N x Γ p s u)
    {callee : Locs} {v : ValueHOL 64} {st : State σ} {w : BitVec 64}
    (hw : u.locals.lookup x = some (.val (.word w)))
    (hR : SumRelX guestC (HR σ) Helpers.sigMemzero
      (fun _ s Γ => ReqOK [] s Γ) (fun _ s Γ a => ProtCell guestC Γ a ∧ CapPW [] s Γ a)
      (fun _ _ _ _ _ _ => True) [.val (.word w), .val (.word (BitVec.ofNat 64 N))]
      (callEntryStateHOLFinite u callee) (.returned v) st)
    (hZ : MzZ (σ := σ) [.val (.word w), .val (.word (BitVec.ofNat 64 N))] st) :
    ∃ Γ2 p2, StepD Γ p s Γ2 p2 { st with locals := u.locals } ∧ FreshBuf Γ2 p p2 w N ∧
      ZN st.memory w N ∧ (∀ a, ProtCell guestC Γ a → st.memory a = s.memory a) ∧
      (∀ a : BitVec 64, ¬ InObj Γ a.toNat → p.Allocated a.toNat → st.memory a = s.memory a) ∧
      (∀ g ∈ guestC.PG, st.globals.lookup g = s.globals.lookup g) ∧
      heapBase ≤ w.toNat ∧ w.toNat + N ≤ p2.hp := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  obtain ⟨Γ1, p1, w', hw', hs1, hfb, hpk, hmem, hgl, hlv1, hlv2⟩ := hA
  have hww : w' = w := by
    rw [hw] at hw'; exact (HolWordLab.word.inj (ValueHOL.val.inj (Option.some.inj hw'))).symm
  rw [hww] at hfb
  have hord := ordered_of_G hG hp
  have hord1 := ordered_of_G hs1.hG' hs1.hp'
  have hBN : (BitVec.ofNat 64 N).toNat = N := by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  have hb : BufOK guestC Γ1 p1 w.toNat (1 * (BitVec.ofNat 64 N).toNat + 0) := by
    rw [hBN, Nat.one_mul, Nat.add_zero]
    exact bufOK_of_fresh hord hord1 hs1.mono hfb
  have hargs : ArgsOK guestC Γ1 p1 Helpers.sigMemzero.params
      [.val (.word w), .val (.word (BitVec.ofNat 64 N))] := by
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | _ | i
    · simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
      subst hv
      simp only [Helpers.sigMemzero, List.getElem?_cons_zero, Option.some.injEq] at hpt
      subst hpt
      exact ⟨w, BitVec.ofNat 64 N, rfl, rfl, hb⟩
    · simp only [Helpers.sigMemzero, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt
      subst hpt; trivial
    · simp [Helpers.sigMemzero] at hpt
  have hGu : G guestC (HR σ) Γ1 (callEntryStateHOLFinite u callee) :=
    (G_locFree hH u _ _).mpr hs1.hG'
  have hpu : ptrsOf (callEntryStateHOLFinite u callee) = some p1 :=
    (ptrsOf_congr rfl).trans hs1.hp'
  obtain ⟨Γ2, p1', p2, hc, -⟩ := hR (by simp [Good]) (not_abortive_ret _) Γ1 hGu ⟨p1, hpu, hargs⟩ reqOK_nil
  obtain rfl : p1 = p1' := (Option.some.inj (hc.1.symm.trans hpu)).symm
  have hst : StepD Γ1 p1 u Γ2 p2 { st with locals := u.locals } :=
    ⟨hs1.hp', (ptrsOf_congr rfl).trans hc.2.1, hc.2.2.1, hc.2.2.2.1, hc.2.2.2.2.1, hs1.hG',
      (G_locFree hH st u.locals st.clock).mpr hc.2.2.2.2.2.1⟩
  have hstep : StepD Γ p s Γ2 p2 { st with locals := u.locals } := stepD_trans hs1 hst
  have hfb2 : FreshBuf Γ2 p p2 w N := by
    have := holds_step (p0 := p) (S := fun f => f = Fct.fbuf w N) (u := u) (t := { st with locals := u.locals })
      hst hord (fun f hf a ha => by subst hf; exact absurd ha (by simp [Fct.reads])) (fun _ _ hh => by cases hh)
      (by intro f hf; subst hf; exact hfb)
    exact this _ rfl
  have hL1 : Layout guestC p1 Γ1 := by
    obtain ⟨q, hq, -, hL, -⟩ := hs1.hG'
    obtain rfl : q = p1 := Option.some.inj (hq.symm.trans hs1.hp')
    exact hL
  have hmz := hZ w (BitVec.ofNat 64 N) rfl hfb.1 (by rw [hBN]; exact hN8) (by rw [hBN]; omega)
  have hmemk : ∀ a, ProtCell guestC Γ a → st.memory a = s.memory a := by
    intro a ha
    have h1 := hpk a ha
    have hpc := protCell_ext (C := guestC) hs1.ext ha
    have h2 := sumCore_prot (PW := fun a => CapPW [] (callEntryStateHOLFinite u callee) Γ1 a) hc hGu
      (fun a h => argCells_not_prot hord1 hL1 hargs h) a hpc (by simp [CapPW])
    rw [h2]
    exact h1
  refine ⟨Γ2, p2, hstep, hfb2, ?_, hmemk, ?_, ?_, ?_⟩
  · intro j hj8 hj
    exact hmz j hj8 (by rw [hBN]; exact hj)
  · intro a hn hal
    have hn1 : ¬ InObj Γ1 a.toNat := notInObj_after hord hord1 hs1.mono hs1.nf hn hal
    have hal1 : p1.Allocated a.toNat := allocated_mono hs1.mono hal
    have hna : ¬ ArgCells Helpers.sigMemzero.params [.val (.word w), .val (.word (BitVec.ofNat 64 N))] a := by
      rintro ⟨i, w2, hw2, hcase⟩
      rcases hcase with ⟨n, hn', hov⟩ | ⟨j, c, d, x, hn', hx, hov⟩
      · rcases i with _ | _ | i <;> simp [Helpers.sigMemzero] at hn'
      · rcases i with _ | _ | i
        · simp only [Helpers.sigMemzero, List.getElem?_cons_zero, Option.some.injEq, PT.bufArg.injEq] at hn'
          obtain ⟨rfl, rfl, rfl⟩ := hn'
          simp only [argW, wordOf, List.getElem?_cons_zero, List.getElem?_cons_succ, Option.some.injEq] at hw2 hx
          subst hw2 hx
          rw [hBN, Nat.one_mul, Nat.add_zero] at hov
          exact fresh_not_alloc hord hord1 hs1.mono (hfb.2 a hov).1 hal
        · simp [Helpers.sigMemzero] at hn'
        · simp [Helpers.sigMemzero] at hn'
    have h2 := mem_outside_keep hGu hc (fun a h => h.1) hn1 hal1 hna
    show st.memory a = _
    rw [h2]
    exact (hmem ▸ rfl : u.memory a = s.memory a)
  · intro g hg
    have := hc.2.2.2.2.2.2.2.1 g hg (by simp [Helpers.sigMemzero])
    exact this.trans (hgl g hg)
  · have := hst.mono.1
    rw [hww] at hlv1 hlv2
    exact ⟨by omega, by omega⟩


theorem hoare_forall {P : State σ → Prop} {c : ProgHOL 64} {α : Type} {Q : α → Option (PanSemResultExact 64) → State σ → Prop}
    (h : ∀ a, Hoare σ guestCtx P c (Q a)) : Hoare σ guestCtx P c (fun r t => ∀ a, Q a r t) :=
  fun s hs hp ht a => h a s hs hp ht

theorem stepD_loc {Γ Γ' : Gam} {p p' : Ptrs} {s t : State σ} (h : StepD Γ p s Γ' p' t) (l : Locs) (c : Nat) :
    StepD Γ p s Γ' p' { t with locals := l, clock := c } :=
  ⟨h.hp, (ptrsOf_congr rfl).trans h.hp', h.mono, h.ext, h.nf, h.hG,
    (G_locFree Hooks.guestHooksR_lawful t l c).mpr h.hG'⟩

/-- The state after `memzero`. -/
def AfterMz (N : Nat) (x : MlS) (Γ : Gam) (p : Ptrs) (s t : State σ) : Prop :=
  ∃ Γ2 p2 w, t.locals.lookup x = some (.val (.word w)) ∧ StepD Γ p s Γ2 p2 t ∧ FreshBuf Γ2 p p2 w N ∧
    ZN t.memory w N ∧ (∀ a, ProtCell guestC Γ a → t.memory a = s.memory a) ∧
    (∀ a : BitVec 64, ¬ InObj Γ a.toNat → p.Allocated a.toNat → t.memory a = s.memory a) ∧
    (∀ g ∈ guestC.PG, t.globals.lookup g = s.globals.lookup g) ∧
    heapBase ≤ w.toNat ∧ w.toNat + N ≤ p2.hp

theorem hoare_am_mz {N : Nat} (hN : N < 2 ^ 63) (hN8 : N % 8 = 0) {x : MlS} {Γ : Gam} {p : Ptrs} {s0 : State σ}
    (hG : G guestC (HR σ) Γ s0) (hp : ptrsOf s0 = some p) :
    Hoare σ guestCtx (fun u => AfterAlloc N x Γ p s0 u) (callD (nm "memzero") [lv x, cw N])
      (fun r t => r = none ∧ AfterMz N x Γ p s0 t) := by
  refine hoare_callD ((sumSpecA_relX mz_R).and (Frames.funSpec_memzeroZ guestCtx_code)) ?_
  intro u hu hA vs hvs callee v st ⟨hR, hZ⟩ hst
  obtain ⟨Γ1, p1, w, hw, -⟩ := id hA
  rw [evs_cons (ev_lv_eq hw) (evs_cons (ev_cw u N) evs_nil)] at hvs
  cases hvs
  obtain ⟨Γ2, p2, hstep, hfb, hz, hpk, hok, hgl, hlv⟩ := memzero_step hN hN8 hG hp hA hw hR (hZ v rfl)
  exact ⟨rfl, Γ2, p2, w, hw, hstep, hfb, hz, hpk, hok, hgl, hlv⟩

/-- **`x = alloc(N); memzero(x, N); return x`.** -/
theorem am_spec {f : MlS} {x : MlS} {N : Nat} (hN : N < 2 ^ 63) (hN8 : N % 8 = 0)
    (hcode : guestCode f = some ([], amBody x N, ShapeHOL.one)) :
    FunSpec σ guestCtx f (fun vs s r t => ∀ v, r = .returned v → NewR N s v t) := by
  refine funSpec_of_hoare (R := fun vs s v t => NewR N s v t) ?_
  intro vs body callee rs hl s0 hs0 hloc
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -⟩ := Struct.lookupCode_zero hcode hl
  have H : ∀ Γp : Gam × Ptrs, Hoare σ guestCtx (fun t => t = s0) (amBody x N)
      (fun r t => G guestC (HR σ) Γp.1 s0 → ptrsOf s0 = some Γp.2 → ∀ v, r = some (.returned v) →
        NewRb N Γp.1 Γp.2 s0 v t) := by
    rintro ⟨Γ, p⟩
    by_cases hGp : G guestC (HR σ) Γ s0 ∧ ptrsOf s0 = some p
    swap
    · intro s hs hP ht hG' hp'
      subst hP
      exact absurd ⟨hG', hp'⟩ hGp
    obtain ⟨hG, hp⟩ := hGp
    unfold amBody
    refine hoare_decCallS ((sumSpecA_relX tab_alloc).and (allocSpec_alloc guestCtx_code)) ?_
    intro s hs hP vs hvs callee v st ⟨hR, hA⟩ hst hsh
    subst hP
    rw [evs_cons (ev_cw s N) evs_nil] at hvs
    cases hvs
    have hAA := alloc_step (by omega) (x := x) hG hp hR hA hsh
    refine hoare_seqP (Rn := fun t => AfterMz N x Γ p s t) ?_ ?_
    · refine hoare_conseq (hoare_am_mz hN hN8 hG hp) (fun t _ ht => ht ▸ hAA) fun r t _ _ hq => hq
    · refine hoare_return fun t _ ⟨Γ2, p2, w, hw, hstep, hfb, hz, hpk, hok, hgl, hlv⟩ v hv => ?_
      rw [ev_lv] at hv
      rw [hw] at hv
      cases hv
      intro _ _ v' hv'
      cases hv'
      exact ⟨Γ2, p2, w, rfl, stepD_loc hstep _ _, hfb, hz, hpk, hok, hgl, hlv⟩
  exact hoare_post (hoare_forall H) fun r t _ _ h v hv Γ p hG hp => h (Γ, p) hG hp v hv


theorem tn_spec : FunSpec σ guestCtx (nm "te_new") (fun vs s r t => ∀ v, r = .returned v → NewR 200 s v t) :=
  am_spec (by norm_num) (by norm_num) (by rw [tnCode]; rfl)

theorem mn_spec : FunSpec σ guestCtx (nm "msg_new") (fun vs s r t => ∀ v, r = .returned v → NewR 176 s v t) :=
  am_spec (by norm_num) (by norm_num) (by rw [mnCode]; rfl)

/-- `min(a, b) <= a`. -/
theorem min_spec : FunSpec σ guestCtx (nm "min") (fun vs _ r t => ∀ v, r = .returned v →
    ∀ x y : BitVec 64, vs = [.val (.word x), .val (.word y)] → ∃ z, v = .val (.word z) ∧ z.toNat ≤ x.toNat ∧ (z = x ∨ z = y)) := by
  refine funSpec_of_hoare (R := fun vs _ v _ => ∀ x y : BitVec 64, vs = [.val (.word x), .val (.word y)] →
    ∃ z, v = .val (.word z) ∧ z.toNat ≤ x.toNat ∧ (z = x ∨ z = y)) ?_
  intro vs body callee rs hl s0 hs0 hloc
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, B, rfl, sa, sb, hA, hB⟩ := lookupCode_two miCode (by decide) hl
  obtain ⟨x, rfl⟩ := val_of_shapeEq_one sa
  obtain ⟨y, rfl⟩ := val_of_shapeEq_one sb
  have hxl : s0.locals.lookup (nm "a") = some (.val (.word x)) := by rw [hloc]; exact hA
  have hyl : s0.locals.lookup (nm "b") = some (.val (.word y)) := by rw [hloc]; exact hB
  unfold miBody mi0
  refine hoare_seq (P := fun t => t = s0)
    (R := fun r t => (r = some (.returned (.val (.word x))) ∧ x.toNat < y.toNat) ∨
      (r = none ∧ y.toNat ≤ x.toNat ∧ t = s0)) ?_ ?_ ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_return fun s hs ⟨hP, w, hw, hne⟩ v hv => ?_
      subst hP
      obtain ⟨a, b, ha, hb, hf⟩ := cmp_true hw hne
      rw [ev_lv, hxl] at ha
      rw [ev_lv, hyl] at hb
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at ha hb
      subst ha hb
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, decide_eq_true_eq, BitVec.lt_def] at hf
      rw [ev_lv, hxl] at hv
      cases hv
      exact Or.inl ⟨rfl, hf⟩
    · refine hoare_skip fun s hs ⟨hP, hw⟩ => ?_
      subst hP
      obtain ⟨a, b, ha, hb, hf⟩ := cmp_false hw
      rw [ev_lv, hxl] at ha
      rw [ev_lv, hyl] at hb
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at ha hb
      subst ha hb
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, decide_eq_false_iff_not, BitVec.lt_def] at hf
      exact Or.inr ⟨rfl, by omega, rfl⟩
  · intro r t _ hr _ h
    rcases h with ⟨rfl, h⟩ | ⟨rfl, -⟩
    · exact fun v hv x' y' hxy => by
        cases hv
        simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hxy
        obtain ⟨rfl, rfl⟩ := hxy
        exact ⟨x, rfl, le_refl _, Or.inl rfl⟩
    · exact absurd rfl hr
  · refine hoare_return fun s hs h v hv => ?_
    rcases h with ⟨h1, -⟩ | ⟨-, hle, rfl⟩
    · cases h1
    · rw [ev_lv, hyl] at hv
      cases hv
      intro v' hv' x' y' hxy
      cases hv'
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hxy
      obtain ⟨rfl, rfl⟩ := hxy
      exact ⟨y, rfl, hle, Or.inr rfl⟩

end InitECandidate.Solver.MemSafe.Ptx
