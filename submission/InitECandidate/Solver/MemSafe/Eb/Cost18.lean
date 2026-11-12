import InitECandidate.Solver.MemSafe.Eb.Cost17
import InitECandidate.Solver.MemSafe.Eb.Head6
import InitECandidate.Solver.MemSafe.Eb.LstNew

/-!
# `execute_block`: the cost walk, part 18 (the head)
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

/-- The cost of `ebS4` given the cost `Bn` of `ebS15`. -/
def bHead (Bn : Nat) : Nat :=
  1 + cAlloc + (0 + (1 + cAlloc + (0 + (1 + cLstNew + (0 + (1 + cAlloc + (0 + (1 + cLstNew + (0 + (0 + Bn))))))))))

section cw18
variable {E : EbE σ} {En : Env} {S0 S : FS} {Z : List MlS} {A : List (BitVec 64)} {w : BitVec 64} {ntx0 : BitVec 64}
  {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem cw_allocAdopt {Bk : Nat} {rn : MlS} {e : ExpHOL 64} {k : ProgHOL 64} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : ResIns rn QT) {n : BitVec 64} {ty : Nat} (hty : ty = tBOS ∨ ty = tBO ∨ ty = tMCO)
    (hn8 : n.toNat % 8 = 0) (hmin : (guestC.ty ty).minSz ≤ n.toNat) (hpos : 0 < n.toNat)
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word n)))
    (hgS : ∀ g w t, S (Fct.gobj g w t) → g ≠ gHeap) (hgv : ∀ g w, S (Fct.gval g w) → g ≠ gHeap)
    (hk : ∀ w : BitVec 64, CW (PA E (En.set rn (.val (.word w))) (fun f => S f ∨ AdoptNF S w ty n.toNat f)) k Bk QT) :
    CW (PA E En S) (.decCall rn .one (nm "alloc") [e] k) (1 + cAlloc + Bk) QT := by
  refine cw_decCallK (PreC := fun _ _ => True) hQT (funSpec_allocRel (σ := σ))
    (Inv.calleeCostP_of_calleeCost cc_cAlloc) (fun _ _ _ _ _ _ => trivial) ?_
  intro s hs hpa vs hvs callee v st hAR hst hsh
  have hvs' := alloc_args (he s hpa) hvs
  subst hvs'
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  obtain ⟨q, Γ', p', rfl, hstep, hrun, hH⟩ := alloc_adopt_core hty hn8 hmin hpos hAR hr hL hgS hgv
  refine cw_pre (hk q) ?_
  intro t _ ht
  subst ht
  refine ⟨⟨_, p', ebRun_set hrun rn _, ?_⟩, lke_set (lke_restore hlk) rn _⟩
  intro g hg
  have := (holdsAll_loc hH s.locals st.clock) g hg
  cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this

theorem cw_lstNew {Bk : Nat} {rn : MlS} {k : ProgHOL 64} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : ResIns rn QT) (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hk : ∀ w : BitVec 64, CW (PA E (En.set rn (.val (.word w))) (fun f => S f ∨ f = Fct.obj w tLSTh 0)) k Bk QT) :
    CW (PA E En S) (.decCall rn .one (nm "lst_new") [cw 8, cw 16] k) (1 + cLstNew + Bk) QT := by
  have hcr := callR_of_csumm (σ := σ) tab_lst_new (by decide) (by intro g _ h; cases h) csok_nil
  refine cw_decCallRW (E := E) (NFw := fun w f => f = Fct.obj w tLSTh 0) hQT hcr (gwk_tab (by decide)) cc_cLstNew ?_ ?_ hk
  · refine callObl_plain ?_ hT hz
    intro s hs vs hvs Γ p hr hL
    rw [evs_cw2] at hvs
    cases hvs
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | _ | i
    · simp at hpt hv; subst hpt; subst hv; rfl
    · simp at hpt hv; subst hpt; subst hv; rfl
    · simp at hpt
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq w hw
    subst hw
    obtain ⟨hret, -⟩ := hq
    obtain ⟨o, ho, hob, hot⟩ := hret 0 (.fits (.ptr tLSTh)) w rfl (by simp [flattenHOL])
    intro f hf
    subst hf
    exact ⟨o, ho, hob, hot, Nat.zero_le _⟩

theorem cw_st_bo_seq {Bn : Nat} (h : BoLed S0 S Z A w) {off : Nat} {x : MlS} {xv : BitVec 64} {rest : ProgHOL 64}
    (hoff : off % 8 = 0) (hoff' : off + 8 ≤ 88) (hx : En x = some (.val (.word xv)))
    (hA : ∀ a ∈ A, a ≠ w + BitVec.ofNat 64 off)
    (hnext : CW (PA E En (fun f => S f ∨ f = Fct.cellv (w + BitVec.ofNat 64 off) xv)) rest Bn QT) :
    CW (PA E En S) (.seq (.store (.op .add [gv nmBo, cw off]) (lv x)) rest) (0 + Bn) QT :=
  cw_seq (cw_hn (hn_stBo (n := 88) h.gobj h.obj (Or.inr (Or.inl rfl)) hoff hoff' hx
    (frees_of h.obj le_rfl h.rd hA h.prop (by omega))) (costP_zero (cost_store _ _))) hnext

theorem cw_alloc_nn {Bk : Nat} (hQ : LocIns QT) (h : BoLed S0 S Z A w) {ntx0 : BitVec 64} (hEn : En (nm "ntx") = some (.val (.word ntx0)))
    (hnt : ntx0.toNat < 2 ^ 50) {rn : MlS} {k : ProgHOL 64}
    (hk : ∀ t : BitVec 64, CW (PA E (En.set rn (.val (.word t)))
      (fun f => S f ∨ AdoptNF S t tBOS (16 * ntx0.toNat + 16) f)) k Bk QT) :
    CW (PA E En S) (.decCall rn .one (nm "alloc")
      [.op .add [.panop .mul [lv (nm "ntx"), cw 16], cw 16]] k) (1 + cAlloc + Bk) QT := by
  have hnn := nn_toNat hnt
  refine cw_allocAdopt (n := ntx0 * BitVec.ofNat 64 16 + BitVec.ofNat 64 16) (ty := tBOS)
    (locIns_resIns hQ _) (Or.inl rfl) (by rw [hnn]; omega) (by rw [hnn]; have : (guestC.ty tBOS).minSz = 16 := rfl; omega)
    (by rw [hnn]; omega) (fun s hs => evI_add (evI_mul (evI_lv_pa hs hEn) (evI_cw s 16)) (evI_cw s 16))
    (tidy_ne h.tidy h.hz).1 (tidy_ne h.tidy h.hz).2 ?_
  intro t
  rw [hnn]
  exact hk t

theorem cw_alloc_128 {Bk : Nat} (hQ : LocIns QT) (h : BoLed S0 S Z A w) {rn : MlS} {k : ProgHOL 64}
    (hk : ∀ t : BitVec 64, CW (PA E (En.set rn (.val (.word t)))
      (fun f => S f ∨ AdoptNF S t tBOS 128 f)) k Bk QT) :
    CW (PA E En S) (.decCall rn .one (nm "alloc") [.panop .mul [cw 8, cw 16]] k) (1 + cAlloc + Bk) QT := by
  have hn : (BitVec.ofNat 64 8 * BitVec.ofNat 64 16).toNat = 128 := by decide
  refine cw_allocAdopt (n := BitVec.ofNat 64 8 * BitVec.ofNat 64 16) (ty := tBOS)
    (locIns_resIns hQ _) (Or.inl rfl) (by rw [hn]) (by rw [hn]; have : (guestC.ty tBOS).minSz = 16 := rfl; omega)
    (by rw [hn]; omega) (fun s hs => evI_mul (evI_cw s 8) (evI_cw s 16))
    (tidy_ne h.tidy h.hz).1 (tidy_ne h.tidy h.hz).2 ?_
  intro t
  rw [hn]
  exact hk t

theorem cw_head_chain {Bn : Nat} (hQ : LocIns QT)
    (h : BoLed S0 S Z [w + BitVec.ofNat 64 64] w) (hc64 : S (Fct.cellv (w + BitVec.ofNat 64 64) 0))
    (hdw : ∀ b ty n, S0 (Fct.obj b ty n) → S (Fct.prop (b ≠ w)))
    (hEn : En (nm "ntx") = some (.val (.word ntx0))) (hnt : ntx0.toNat < 2 ^ 50)
    (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true)) (hsub : ∀ f, S0 f → S f)
    (hnext : ∀ t r lg rq rl : BitVec 64, ∀ S' : FS, HeadOut S0 S' Z w t r lg rq rl ntx0 → (∀ f, S f → S' f) →
      CW (PA E (EnH En t r lg rq rl) S') ebS15 Bn QT) :
    CW (PA E En S) ebS4 (bHead Bn) QT := by
  unfold ebS4
  refine cw_alloc_nn hQ h hEn hnt (fun t => ?_)
  have h1 := boLed_adopt h t tBOS (16 * ntx0.toNat + 16) (Or.inr (Or.inl rfl))
  unfold ebS5
  refine cw_st_bo_seq h1 (off := 24) (x := nm "txs") (xv := t) (by decide) (by decide) (env_set_self _ _ _) ?_ ?_
  · intro a ha; simp only [List.mem_singleton] at ha; subst ha
    exact off_ne w (by decide) (by decide) (by decide)
  have h2 := boLed_add h1 (w + BitVec.ofNat 64 24) t (Or.inl (off_ne w (by decide) (by decide) (by decide)))
  refine cw_alloc_nn hQ h2 (by simp (config := { decide := true }) [Env.set, hEn]) hnt (fun r => ?_)
  have h3 := boLed_adopt h2 r tBOS (16 * ntx0.toNat + 16) (Or.inr (Or.inl rfl))
  unfold ebS7
  refine cw_st_bo_seq h3 (off := 32) (x := nm "rcs") (xv := r) (by decide) (by decide) (by simp (config := { decide := true }) [Env.set]) ?_ ?_
  · intro a ha; simp only [List.mem_cons, List.not_mem_nil, or_false] at ha
    rcases ha with rfl | rfl <;> exact off_ne w (by decide) (by decide) (by decide)
  have h4 := boLed_add h3 (w + BitVec.ofNat 64 32) r (Or.inl (off_ne w (by decide) (by decide) (by decide)))
  refine cw_lstNew (locIns_resIns hQ _) h4.tidy hz (fun lg => ?_)
  have h5 := boLed_obj h4 lg tLSTh 0 (Or.inr (Or.inr rfl))
  unfold ebS9
  refine cw_st_bo_seq h5 (off := 40) (x := nm "logs") (xv := lg) (by decide) (by decide) (by simp (config := { decide := true }) [Env.set]) ?_ ?_
  · intro a ha; simp only [List.mem_cons, List.not_mem_nil, or_false] at ha
    rcases ha with rfl | rfl | rfl <;> exact off_ne w (by decide) (by decide) (by decide)
  have h6 := boLed_add h5 (w + BitVec.ofNat 64 40) lg (Or.inl (off_ne w (by decide) (by decide) (by decide)))
  refine cw_alloc_128 hQ h6 (fun rq => ?_)
  have h7 := boLed_adopt h6 rq tBOS 128 (Or.inr (Or.inl rfl))
  unfold ebS11
  refine cw_st_bo_seq h7 (off := 56) (x := nm "reqs") (xv := rq) (by decide) (by decide) (by simp (config := { decide := true }) [Env.set]) ?_ ?_
  · intro a ha; simp only [List.mem_cons, List.not_mem_nil, or_false] at ha
    rcases ha with rfl | rfl | rfl | rfl <;> exact off_ne w (by decide) (by decide) (by decide)
  have h8 := boLed_add h7 (w + BitVec.ofNat 64 56) rq (Or.inl (off_ne w (by decide) (by decide) (by decide)))
  refine cw_lstNew (locIns_resIns hQ _) h8.tidy hz (fun rl => ?_)
  have h9 := boLed_obj h8 rl tLSTh 0 (Or.inr (Or.inr rfl))
  unfold ebS13
  refine cw_st_bo_seq h9 (off := 72) (x := nm "rls") (xv := rl) (by decide) (by decide) (by simp (config := { decide := true }) [Env.set]) ?_ ?_
  · intro a ha; simp only [List.mem_cons, List.not_mem_nil, or_false] at ha
    rcases ha with rfl | rfl | rfl | rfl | rfl <;> exact off_ne w (by decide) (by decide) (by decide)
  have h10 := boLed_add h9 (w + BitVec.ofNat 64 72) rl (Or.inl (off_ne w (by decide) (by decide) (by decide)))
  unfold ebS14
  refine cw_st_bo_seq h10 (off := 80) (x := nm "ntx") (xv := ntx0) (by decide) (by decide) (by simp (config := { decide := true }) [Env.set, hEn]) ?_ ?_
  · intro a ha; simp only [List.mem_cons, List.not_mem_nil, or_false] at ha
    rcases ha with rfl | rfl | rfl | rfl | rfl | rfl <;> exact off_ne w (by decide) (by decide) (by decide)
  have h11 := boLed_add h10 (w + BitVec.ofNat 64 80) ntx0 (Or.inl (off_ne w (by decide) (by decide) (by decide)))
  refine hnext t r lg rq rl _ ⟨h11, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ ?_
  · climb exact Or.inr (Or.inl rfl)
  · climb exact Or.inr (Or.inl rfl)
  · climb exact Or.inr rfl
  · climb exact Or.inr (Or.inl rfl)
  · climb exact Or.inr rfl
  · climb exact Or.inr rfl
  · climb exact Or.inr rfl
  · climb exact Or.inr rfl
  · climb exact Or.inr rfl
  · climb exact hc64
  · climb exact Or.inr rfl
  · climb exact Or.inr rfl
  · climb exact Or.inr (Or.inr (Or.inl ⟨t, tBOS, 16 * ntx0.toNat + 16, Or.inl (Or.inr (Or.inl rfl)), rfl⟩))
  · intro b ty n hb
    refine ⟨?_, ?_, ?_⟩
    · climb exact Or.inr (Or.inr (Or.inl ⟨b, ty, n, hsub _ hb, rfl⟩))
    · climb exact Or.inr (Or.inr (Or.inl ⟨b, ty, n, Or.inl (Or.inl (hsub _ hb)), rfl⟩))
    · climb (refine Or.inr (Or.inr (Or.inl ⟨b, ty, n, ?_, rfl⟩)); climb exact hsub _ hb)
  · intro b ty n hb
    climb exact hdw b ty n hb
  · climb exact Or.inr (Or.inr (Or.inl ⟨w, tBO, 88, h.obj, rfl⟩))
  · climb exact Or.inr (Or.inr (Or.inl ⟨w, tBO, 88, h2.obj, rfl⟩))
  · climb exact Or.inr (Or.inr (Or.inl ⟨w, tBO, 88, h6.obj, rfl⟩))
  · climb exact Or.inr (Or.inr (Or.inl ⟨t, tBOS, 16 * ntx0.toNat + 16, (by climb exact Or.inr (Or.inl rfl)), rfl⟩))
  · climb exact Or.inr (Or.inr (Or.inl ⟨r, tBOS, 16 * ntx0.toNat + 16, (by climb exact Or.inr (Or.inl rfl)), rfl⟩))
  · intro f hf
    climb exact hf

theorem cw_head_pl_ntx {Bn : Nat} (hQ : LocIns QT) {si0 pl0 ntx0 : BitVec 64}
    (hsi : En (nm "si") = some (.val (.word si0))) (hpl : S (Fct.pcv (si0 + BitVec.ofNat 64 0) pl0))
    (hnt : S (Fct.pcv (pl0 + BitVec.ofNat 64 40) ntx0))
    (hnext : CW (PA E ((En.set (nm "pl") (.val (.word pl0))).set (nm "ntx") (.val (.word ntx0))) S) ebS2 Bn QT) :
    CW (PA E En S) ebBody Bn QT := by
  unfold ebBody ebS1
  refine cw_decT (locIns_resIns hQ _) (w := pl0) (fun s hs v hv => evI_ld_pcv hs (evI_lvoff hs hsi 0) hpl v hv) ?_
  refine cw_decT (locIns_resIns hQ _) (w := ntx0) (fun s hs v hv =>
    evI_ld_pcv hs (evI_lvoff hs (env_set_self _ _ _) 40) hnt v hv) ?_
  exact hnext

theorem cw_s2_allocBo {Bn : Nat} (hT : Tidy Z S) (hZ : gHeap ∉ Z ∧ nmBo ∉ Z)
    (hnext : ∀ w : BitVec 64, CW (PA E En (HS1 S w)) ebS3 Bn QT) :
    CW (PA E En S) ebS2 ((1 + cAlloc + 0) + Bn) QT := by
  unfold ebS2
  have h88 : (BitVec.ofNat 64 88).toNat = 88 := by decide
  refine cw_seq (cw_hn (hn_allocAdoptG (g := nmBo) (e := cw 88) (n := BitVec.ofNat 64 88) (ty := tBO) (Or.inr (Or.inl rfl))
    (by rw [h88]) (by rw [h88]; decide) (by rw [h88]; decide) gt_bo freeG_bo (fun s _ => evI_cw s 88)
    (fun g' w t h => ⟨(tidy_ne hT hZ.1).1 g' w t h, (tidy_ne hT hZ.2).1 g' w t h⟩)
    (fun g' w h => ⟨(tidy_ne hT hZ.1).2 g' w h, (tidy_ne hT hZ.2).2 g' w h⟩))
    (Inv.costP_call (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost cc_cAlloc) (fun _ _ _ _ _ _ => trivial)
      (by intro _ _ _ _ h; cases h))) ?_
  refine cw_exists fun w => ?_
  rw [h88]
  exact hnext w

theorem cw_s3_mz {Bn : Nat} (w : BitVec 64)
    (hnext : CW (PA E En (fun f => HS1 S0 w f ∨ f = Fct.cellv (w + BitVec.ofNat 64 64) 0)) ebS4 Bn QT) :
    CW (PA E En (HS1 S0 w)) ebS3 ((1 + cMemzero + 0) + Bn) QT := by
  unfold ebS3
  refine cw_seq (cw_hn (hn_memzeroBo (hs1_gobj S0 w) (hs1_obj S0 w) ?_) (costU cc_cMemzero)) hnext
  exact memz_of (hs1_obj S0 w) (rdIn_hs1 (rdIn_refl S0) w tBO 88 nmBo) (hs1_prop S0 w)

/-- The cost of the whole head, given the cost `Bn` of `ebS15`. -/
def bHeadAll (Bn : Nat) : Nat := (1 + cAlloc + 0) + ((1 + cMemzero + 0) + bHead Bn)

theorem cw_head_all {Bn : Nat} (hQ : LocIns QT) {si0 pl0 ntx0 : BitVec 64}
    (hsi : En (nm "si") = some (.val (.word si0))) (hpl : S0 (Fct.pcv (si0 + BitVec.ofNat 64 0) pl0))
    (hnt : S0 (Fct.pcv (pl0 + BitVec.ofNat 64 40) ntx0)) (hbd : ntx0.toNat < 2 ^ 50)
    (hT : Tidy Z S0) (hheap : gHeap ∉ Z) (hbo : nmBo ∉ Z)
    (hz : ∀ g ∈ nmBo :: Z, ¬ (tabW.contains g = true))
    (hnext : ∀ (w t r lg rq rl : BitVec 64) (S' : FS), HeadOut S0 S' (nmBo :: Z) w t r lg rq rl ntx0 →
      (∀ f, S0 f → S' f) →
      CW (PA E (EnH ((En.set (nm "pl") (.val (.word pl0))).set (nm "ntx") (.val (.word ntx0))) t r lg rq rl) S')
        ebS15 Bn QT) :
    CW (PA E En S0) ebBody (bHeadAll Bn) QT := by
  refine cw_head_pl_ntx hQ hsi hpl hnt ?_
  refine cw_s2_allocBo hT ⟨hheap, hbo⟩ (fun w => ?_)
  refine cw_s3_mz w ?_
  have h1 := boLed_hs1 hT hheap w
  have h2 := boLed_add h1 (w + BitVec.ofNat 64 64) 0 (Or.inr ⟨rfl, rfl⟩)
  refine cw_head_chain hQ h2 (Or.inr rfl) (fun b ty n hb => Or.inl (Or.inr (Or.inl (Or.inr (Or.inl ⟨b, ty, n, hb, rfl⟩)))))
    (by simp (config := { decide := true }) [Env.set]) hbd hz
    (fun f hf => Or.inl (Or.inl hf)) ?_
  intro t r lg rq rl S' hout hsub
  exact hnext w t r lg rq rl S' hout (fun f hf => hsub f (Or.inl (Or.inl hf)))

end cw18

end InitECandidate.Solver.MemSafe.Eb
