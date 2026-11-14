import InitECandidate.Solver.MemSafe.CsrCost.Rules
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
set_option linter.unusedVariables false
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie InitECandidate.Solver.Band7
namespace InitECandidate.Solver.MemSafe.CsrCost
variable {σ : Type}
def capMax : Nat := 4127616
def bBody : Nat := 38906141983738248221979043866307950954857456912767405747242536493749766369289105
def bState : Nat := 12968713994579420478139411326941387626058446267097211242093322589900857401163155
def bLoop : Nat := 160589653056491716911260475106318425596435871729906261008215996754721929411905991840402
def bI : Nat := 160589666025205711490680953245729752537823497788352528105427238848044519312763393003557
 theorem body_eq : cb csr_s_1 = bBody := by decide +kernel
 theorem state_eq : cb csr_state_mpt_1 = bState := by decide +kernel
 theorem loop_eq : (capMax + 1) * (bBody + 1) = bLoop := by decide +kernel
 theorem i_eq : bLoop + bState = bI := by decide +kernel

theorem ch_cast {P : State σ → Prop} {p q : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} {B B' : Nat}
    (hp : p = q) (hB : B = B') (h : CH σ P p Q B) : CH σ P q Q B' := by
  cases hp
  cases hB
  exact h

theorem cost_bound_cast {P : State σ → Prop} {p : ProgHOL 64} {B B' : Nat}
    (hB : B = B') (h : Inv.CostP σ guestCtx P p B) : Inv.CostP σ guestCtx P p B' := by
  cases hB
  exact h

theorem stage_i {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = guestC)
    (hCb : a.Cb = guestC) (haH : a.H = guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcH : capSub (HtabEntries.capsHT tHTh20) a.caps = true)
    (hcC : capSub (HtabEntries.capsHT tHTb20) a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND OUT CP : BitVec 64}
    (hnd : (nm "nodedb", .val (.word ND)) ∈ B) (hsw : (nm "sw", .val (.word SW)) ∈ B)
    (hcache : (nm "cache", .val (.word C)) ∈ B) (haw : (nm "aw", .val (.word AW)) ∈ B)
    (hnr : (nm "new_roots", .val (.word NR)) ∈ B) (hout : (nm "out", .val (.word OUT)) ∈ B)
    (hcap : (nm "cap", .val (.word CP)) ∈ B) (hCP : CP.toNat ≤ capMax)
    (hfr : ∀ p ∈ B, ∀ w ∈ nsAll, p.1 ≠ w)
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32)
    (hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ q mm, Rv Γ q mm (.val (.word (BitVec.ofNat 64 0)))) :
    CH σ (GI a (Trie.LV B) (IB a (fun _ => True) C NR SW AW ND)) csr_i_1
      (GP a (fun _ => False) (fun _ _ _ => True) Rv) bI := by
  refine ⟨(cstage_i ha haC hCb haH hgr hcI hcH hcC hnd hsw hcache haw hnr hout hfr hOutB hOutF hRv).1, ?_⟩
  let L : LocalsH → Prop := fun m => ∃ I : BitVec 64, Trie.LV ((nm "i", .val (.word I)) :: B) m
  let E : Gam → Ptrs → Mem → Prop := IB a (fun _ => True) C NR SW AW ND
  let J : State σ → Prop := GI a L E
  have hb0 : CH σ J csr_s_1 (GP a L E Rv) (cb csr_s_1) :=
    cstage_item ha haC hCb haH hgr hcI hcH hcC hsw hcache hnd hnr
      (fun p hp w hw => hfr p hp w (by simp only [nsAll, List.mem_cons, List.mem_append] at hw ⊢; tauto))
  have hb : CH σ (fun s => J s ∧ CondTrue s (.cmp .less (lv (nm "i")) (lv (nm "cap"))))
      csr_s_1 (GP a L E Rv) bBody :=
    ch_pre (ch_cast rfl body_eq hb0) (fun s hs h => h.1)
  have hw0 := gc_while_bounded ha.hH (by decide : capMax < 2 ^ 63) hb
    (fun s hs h _ => h) (noContB_sound _ (by decide_cbv))
    (stepsB_sound (nm "i") true _ (by decide_cbv))
    (fun s hs ⟨⟨I, hL⟩, Γ, q, he, hh, hsc, hE⟩ =>
      ⟨CP, Trie.lv_ev hL (List.mem_cons_of_mem _ hcap), hCP⟩)
  have hw := ch_cast rfl loop_eq hw0
  have ht0 : CH σ J csr_state_mpt_1 (GP a (fun _ => False) (fun _ _ _ => True) Rv)
      (cb csr_state_mpt_1) :=
    cstage_state ha haC hCb haH hgr hcI hcC hnd hsw hcache haw hout
      (fun p hp w hw => hfr p hp w (by simp only [nsAll, List.mem_cons, List.mem_append] at hw ⊢; tauto))
      hOutB hOutF hRv
  have ht := ch_cast rfl state_eq ht0
  have hseq := cost_bound_cast i_eq (Inv.costP_seq hw.2
    (fun s hs hp hg hr => (Frames.hoare_of_hoareG hw.1 s hs hp hg).1 hr) ht.2)
  unfold csr_i_1
  refine Inv.costP_dec fun s hs hp v hv hsh => ?_
  rw [ev_cw] at hv
  cases hv
  obtain ⟨hL, Γ, q, he, hh, hsc, hE⟩ := hp
  have hL0 : Trie.LV ((nm "i", .val (.word (0 : BitVec 64))) :: B)
      (setVarHOLFinite (nm "i") (.val (.word (0 : BitVec 64))) s).locals :=
    Trie.lv_cons (Trie.lv_set hL (fun p hp => hfr p hp (nm "i") (by simp [nsAll])) _)
      (by simp [setVarHOLFinite, FUPDATE])
  have hp0 : J (setVarHOLFinite (nm "i") (.val (.word (0 : BitVec 64))) s) ∧
      InitECandidate.Solver.MemSafe.CsrCost.DataLoop.CounterAtMost (nm "i") capMax
        (setVarHOLFinite (nm "i") (.val (.word (0 : BitVec 64))) s) :=
    ⟨⟨⟨0, hL0⟩, Γ, q, he, heap_congr (s := s) ha.hH rfl rfl rfl rfl hh, hsc, hE⟩,
      0, by simp [setVarHOLFinite, FUPDATE], by decide⟩
  exact hseq.pre (fun t ht heq => by subst t; exact hp0)

#print axioms stage_i
end InitECandidate.Solver.MemSafe.CsrCost
