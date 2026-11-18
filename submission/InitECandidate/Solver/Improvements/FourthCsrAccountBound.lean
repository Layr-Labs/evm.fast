import InitECandidate.Solver.Improvements.FourthCsrStateRootTail
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace FourthCsrState
open InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie
variable {σ : Type}
/-! The account-count bound is derived from IM's actual typed AW object at the
source load. The accepted memory proof and all body/callee bounds are reused. -/
theorem cstage_acap_bounded {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND M OUT : BitVec 64}
    (haw : (nm "aw", ValueHOL.val (.word AW)) ∈ B) (hstate : (nm "state_mpt", ValueHOL.val (.word M)) ∈ B)
    (hout : (nm "out", ValueHOL.val (.word OUT)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ nm "acap" :: nm "i" :: nsC, p.1 ≠ w)
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32)
    (hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ q mm, Rv Γ q mm (.val (.word (BitVec.ofNat 64 0)))) :
    CH σ (GI a (fun m => ∃ I0 : BitVec 64, LV ((nm "i", ValueHOL.val (.word I0)) :: B) m)
        (IM a (fun _ => True) C NR SW AW ND M)) csr_acap_1
      (GP a (fun _ => False) (fun _ _ _ => True) Rv) acapBound := by
  refine ⟨(InitECandidate.Solver.MemSafe.Trie.cstage_acap
    ha haC hCb haH hgr hcI (Rv := Rv) haw hstate hout hfr hOutB hOutF hRv).1, ?_⟩
  unfold csr_acap_1
  refine Inv.costP_dec (fun s hs hp v hv hsh => ?_)
  obtain ⟨⟨I0, hL⟩, Γ0, q0, he0, hh0, hsc0, hE0⟩ := hp
  let A : BitVec 64 := rd s.memory (AW + BitVec.ofNat 64 24)
  have hvA : v = .val (.word A) :=
    HtabEntries.ld_w (ev_add2 (lv_ev hL (List.mem_cons_of_mem _ haw)) (ev_cw s 24)) hv
  subst v
  have hA : A.toNat ≤ capMax :=
    FourthCsrInnerLink.count_of_heap_fits htabHooks_guestR haC haH hh0 (by decide) hE0.1.2.2.2
  let B1 : List (MlS × ValueHOL 64) := (nm "acap", .val (.word A)) :: B
  have hfr1 : ∀ p ∈ B1, ∀ w ∈ nm "i" :: nsC, p.1 ≠ w :=
    fresh_cons (fun p hp w hw => hfr p hp w (List.mem_cons_of_mem _ hw)) (by decide)
  let L : LocalsH → Prop := fun m => ∃ I : BitVec 64, LV ((nm "i", .val (.word I)) :: B1) m
  let E : Gam → Ptrs → Mem → Prop := IM a (fun _ => True) C NR SW AW ND M
  let J : State σ → Prop := GI a L E
  have hb : CH σ (fun s => J s ∧ CondTrue s (.cmp .less (lv (nm "i")) (lv (nm "acap"))))
      csr_s3_1 (GP a L E Rv) (cb csr_s3_1) :=
    ch_pre (cstage_s3 ha haC hCb haH hgr hcI (List.mem_cons_of_mem _ hstate) hfr1)
      (fun s _ h => h.1)
  have hw := FourthCsrExactCH.gc_while_bounded_exact ha.hH
    (i := nm "i") (E0 := lv (nm "acap")) (M := capMax) (by decide)
    hb (fun s hs h _ => h) (noContB_sound _ (by decide_cbv))
    (stepsB_sound (nm "i") true _ (by decide_cbv))
    (fun st hs ⟨⟨I, hl⟩, rest⟩ =>
      ⟨A, lv_ev hl (List.mem_cons_of_mem _ (List.mem_cons_self ..)), hA⟩)
  have ht : CH σ J
      (.seq (.call (some (none, none)) (nm "mpt_root") [lv (nm "state_mpt"), lv (nm "out")])
        (.return (cw 0)))
      (GP a (fun _ => False) (fun _ _ _ => True) Rv) rootBound :=
    state_root_tail ha haC hCb haH (List.mem_cons_of_mem _ hstate)
      (List.mem_cons_of_mem _ hout) hOutB hOutF hRv
  have hseq := Inv.costP_seq hw.2
    (fun st hs hp ht0 hr => (Frames.hoare_of_hoareG hw.1 st hs hp ht0).1 hr) ht.2
  have hinit : Hoare σ guestCtx J (.assign .local (nm "i") (cw 0))
      (fun r t => r = none → J t ∧ FourthCsrExactLoop.CounterAtMost (nm "i") capMax t) := by
    refine hoare_assign (fun st hs hp v hv hvalid hr => ?_)
    rw [ev_cw] at hv
    cases hv
    obtain ⟨⟨I, hl⟩, Γ, q, he, hh, hsc, hE⟩ := hp
    have hbase : LV B1 st.locals := lv_mono hl (fun p hp => List.mem_cons_of_mem _ hp)
    have hl0 : LV ((nm "i", .val (.word (0 : BitVec 64))) :: B1)
        (setVarHOLFinite (nm "i") (.val (.word (0 : BitVec 64))) st).locals :=
      lv_cons (lv_set hbase (fun p hp => hfr1 p hp _ (List.mem_cons_self ..)) _)
        (by simp [setVarHOLFinite, FUPDATE])
    exact ⟨⟨⟨0, hl0⟩, Γ, q, he, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh, hsc, hE⟩,
      0, hl0 _ (List.mem_cons_self ..), by decide⟩
  have hfull : Inv.CostP σ guestCtx J
      (.seq (.assign .local (nm "i") (cw 0))
        (.seq (.while (.cmp .less (lv (nm "i")) (lv (nm "acap"))) csr_s3_1)
          (.seq (.call (some (none, none)) (nm "mpt_root") [lv (nm "state_mpt"), lv (nm "out")])
            (.return (cw 0))))) acapBound := by
    simpa only [lv, acapBound, loopCBound, Nat.zero_add] using
      (Inv.costP_seq (Inv.costP_of_cost (cost_assign .local (nm "i") (cw 0))) hinit hseq)
  apply hfull.pre
  intro t ht0 heq
  subst t
  have hbase : LV B s.locals := lv_mono hL (fun p hp => List.mem_cons_of_mem _ hp)
  have hacap := lv_cons (lv_set hbase (fun p hp => hfr p hp _ (List.mem_cons_self ..)) (.val (.word A)))
    (x := nm "acap") (v := .val (.word A)) (by simp [setVarHOLFinite, FUPDATE])
  have hli : LV ((nm "i", .val (.word I0)) :: B1)
      (setVarHOLFinite (nm "acap") (.val (.word A)) s).locals :=
    lv_cons hacap (lk_keep (x := nm "acap") (y := nm "i") (by decide)
      (hL _ (List.mem_cons_self ..)))
  exact ⟨⟨I0, hli⟩, Γ0, q0, he0, heap_congr (s := s) ha.hH rfl rfl rfl rfl hh0, hsc0, hE0⟩

#print axioms cstage_acap_bounded
end FourthCsrState
