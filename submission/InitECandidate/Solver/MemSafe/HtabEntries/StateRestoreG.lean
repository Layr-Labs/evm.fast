import InitECandidate.Solver.MemSafe.HtabEntries.JHooksG

/-!
# `state_restore` for any hook family with `JHooks`

The proof of `StateRestore.lean` with the family `guestHooksJ` replaced by `Hk` and its laws by
the fields of `hJH : JHooks Hk`: **`csumm_state_restoreG hJH hF : CSumm … "state_restore" srSig
srCaps`** (`SrIG`, `SrAG`, `sr_callG`, `sr_assignG`, `sr_iteG`, `sr_restG`).
-/

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The loop invariant (for the hook family `Hk`). -/
def SrIG (Hk : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (sv : BitVec 64) (u : State σ) : Prop :=
  u.locals.lookup (nm "snap") = some (.val (.word sv)) ∧
    ∃ Γ, TrkJ Hk Γ0 s0 p0 (PWsr Γ0 s0) Γ u

section iter

variable (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs)

variable {Γ0 s0 p0}

/-- A call to a table entry from the loop. -/
theorem sr_callG {Hk : Hooks σ} (hJH : JHooks Hk) {th : Nat} {sg : Sig} {u st : State σ} {Γ Γ' : Gam} {vs : List (ValueHOL 64)}
    {v : ValueHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)} {p p' : Ptrs}
    (hth : th ∈ hdrTys) (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    (htrk : TrkJ Hk Γ0 s0 p0 (PWsr Γ0 s0) Γ u)
    (hc : SumCore guestC Hk sg (fun a => ProtCell guestC Γ a ∧
      CapPW (capsHT th) (callEntryStateHOLFinite u callee) Γ a) Γ (callEntryStateHOLFinite u callee)
      vs (.returned v) st Γ' p p')
    (hgw : sg.gw = [])
    (hArg : ∀ a, ArgCells sg.params vs a → WCell guestC Γ a)
    (hd : st.memaddrs = u.memaddrs) (hbe : st.be = u.be) :
    TrkJ Hk Γ0 s0 p0 (PWsr Γ0 s0) Γ' st := by
  obtain ⟨q, hq, hmq, hxq, hnfq, hG, hrest⟩ := htrk
  obtain ⟨q', hq', hordq, hLq, -⟩ := id hG
  rw [hq] at hq'
  cases hq'
  refine trkJ_call ⟨q, hq, hmq, hxq, hnfq, hG, hrest⟩ hord0 hL0 rfl rfl hc (fun g _ => by rw [hgw]; simp)
    (fun a ha => Or.inl (hArg a ha)) (fun a hpc hpw => ?_) hd hbe
  · rcases capBack hord0 hordq hmq hL0 hLq hnfq (capsHT_sub hth tab_in_sr) hpc hpw with h | h
    · exact Or.inl h
    · exact Or.inr h

end iter

section loop

variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- After lowering `journal_n`: the popped record's facts. -/
def SrAG (Hk : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (sv : BitVec 64) (u : State σ) : Prop :=
  u.locals.lookup (nm "snap") = some (.val (.word sv)) ∧ ∃ (Γ : Gam) (oj : Obj) (n : BitVec 64),
    TrkJ Hk Γ0 s0 p0 (PWsr Γ0 s0) Γ u ∧ oj ∈ Γ ∧ oj.ty = tJOURNAL ∧
    u.globals.lookup gJ = some (.val (.word oj.base)) ∧ u.globals.lookup gJn = some (.val (.word n)) ∧
    JEnt Γ u.memory oj.base n.toNat ∧ 32 * (n.toNat + 1) ≤ 2 ^ 64

theorem sr_assignG {Hk : Hooks σ} (hJH : JHooks Hk) {e0 : Obj} (he0 : e0 ∈ Γ0) (het : e0.ty = tJOURNAL) (hej : gword s0 gJ = some e0.base)
    (sv : BitVec 64) :
    Hoare σ X (fun u => SrIG Hk Γ0 s0 p0 sv u ∧ CondTrue u restoreCond)
      (.assign .global (nm "journal_n") (.op .sub [gv (nm "journal_n"), cw 1]))
      (fun r u => r = none ∧ SrAG Hk Γ0 s0 p0 sv u) := by
  refine hoare_assignK fun u _ ⟨⟨hsnap, Γ, htrk⟩, w, hw, hw0⟩ v hv _ => ?_
  obtain ⟨x, J, -, hJ, hlt⟩ := cmp_true hw hw0
  have hlt' := lower_true hlt
  have hJ' : u.globals.lookup gJn = some (.val (.word J)) := hJ
  rw [ev_sub2 hJ (ev_cw _ 1)] at hv
  cases hv
  have h1 : 1 ≤ J.toNat := by omega
  obtain ⟨-, -, -, hx0, -, hG, -, hpg, -, -⟩ := id htrk
  obtain ⟨e', he', heb, het', -⟩ := hx0 e0 he0
  have hgj : gword u gJ = some e'.base := by
    have : gword u gJ = gword s0 gJ := by unfold gword; rw [hpg gJ gJ_pg (by decide)]
    rw [this, hej, heb]
  obtain ⟨-, -, -, -, -, -, -, hW⟩ := hG
  obtain ⟨-, -, n, c, hn, -, hnc, hcs, hce, hent⟩ := hJH.jr _ _ _ (hW e' he') (het'.trans het) hgj
  have hnJ : n = J := by unfold gword at hn; rw [hJ'] at hn; exact (Option.some.inj hn).symm
  subst hnJ
  have e := sub1_toNat h1
  refine ⟨rfl, hsnap, Γ, e', n - BitVec.ofNat 64 1, trkJ_jnG hJH htrk hJ' h1, he', het'.trans het,
    by rw [setG_ne (by decide)]; exact AllocImpl.lookup_of_gword hgj, setG_self, ?_, ?_⟩
  · show JEnt Γ u.memory e'.base _
    rw [e]; exact hent _ (by omega)
  · rw [e]
    have : scratchEnd < 2 ^ 64 := by decide
    unfold Obj.lo at hce
    omega

/-- The branch on the record's flag and the call. -/
theorem sr_iteG {Hk : Hooks σ} (hJH : JHooks Hk) (hF : FoldOK σ X guestC Hk) (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {U3 : State σ} {Γ : Gam} {x y : Obj} {q : Ptrs} {b : BitVec 64} {i : Nat}
    (htrk3 : TrkJ Hk Γ0 s0 p0 (PWsr Γ0 s0) Γ U3)
    (hq : ptrsOf U3 = some q) (hordq : q.Ordered) (hLq : Layout guestC q Γ)
    (hr3 : U3.locals.lookup (nm "r") = some (.val (.word (jc b (4 * i)))))
    (ht3 : U3.locals.lookup (nm "t") = some (.val (.word x.base)))
    (hk3 : U3.locals.lookup (nm "key") = some (.val (.word y.base)))
    (hxΓ : x ∈ Γ) (hth : x.ty ∈ hdrTys) (hyΓ : y ∈ Γ) (hyt : y.ty = tB8) (hys : htKL x.ty ≤ y.size)
    (hv : rd U3.memory (jc b (4 * i + 2)) ≠ 0 →
      Fits Γ (valK x.ty) (rd U3.memory (jc b (4 * i + 3))))
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : ∀ Γ' st, TrkJ Hk Γ0 s0 p0 (PWsr Γ0 s0) Γ' st → Q none { st with locals := U3.locals }) :
    Hoare σ X (fun t => t = U3)
      (.ite (.cmp .notEqual (.load .one (.op .add [lv (nm "r"), cw 16])) (cw 0))
        (callD (nm "htab_set")
          [lv (nm "t"), lv (nm "key"), .load .one (.op .add [lv (nm "r"), cw 24])])
        (callD (nm "htab_del") [lv (nm "t"), lv (nm "key")])) Q := by
  have hsc : ∀ k, (guestC.ty y.ty).slot k = .scalar := fun k => by rw [hyt]; exact b8_scalar k
  have hyhi : y.lo + htKL x.ty ≤ y.hi := by unfold Obj.hi Obj.lo; omega
  have hG3 : ∀ callee : HolFiniteMapExact MlS (ValueHOL 64),
      G guestC Hk Γ (callEntryStateHOLFinite U3 callee) := fun callee =>
    Struct.G_congr (s := U3) hJH.lawful rfl rfl rfl rfl (trkJ_G htrk3)
  have hq3 : ∀ callee : HolFiniteMapExact MlS (ValueHOL 64),
      ptrsOf (callEntryStateHOLFinite U3 callee) = some q := fun callee => hq
  have harg0 : ∀ vs', ArgOK guestC Γ q vs' (.fits (.ptr x.ty)) (.val (.word x.base)) :=
    fun _ => ⟨_, rfl, x, hxΓ, rfl, rfl⟩
  refine hoare_ite ?_ ?_
  · refine hoare_callD ((csumm_fs (csumm_htab_set hF hJH.mono hJH.htab hth)).and
      (Spec.Inv.funSpec_be _)) ?_
    rintro u4 hs4 ⟨rfl, w, hw, hw0⟩ vs hvs callee v st ⟨hR, hbe⟩ hst
    obtain ⟨fa, fb, hfa, hfb, hfc⟩ := cmp_true hw hw0
    have efa := ev_ld (w := jc b (4 * i + 2))
      (by rw [ev_add2 (Spec.Inv.ev_lv_w hr3) (ev_cw _ 16), jc_add2]) hfa
    rw [ev_cw] at hfb
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at efa hfb
    subst efa hfb
    have hflag : rd u4.memory (jc b (4 * i + 2)) ≠ 0 := by
      intro h0; rw [h0] at hfc; simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hfc
    obtain ⟨z1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨z2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨z3, r3, rfl, h3, hr3'⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3'
    cases hr3'
    rw [Spec.Inv.ev_lv_w ht3] at h1
    cases h1
    rw [Spec.Inv.ev_lv_w hk3] at h2
    cases h2
    have e3 := ev_ld (w := jc b (4 * i + 3))
      (by rw [ev_add2 (Spec.Inv.ev_lv_w hr3) (ev_cw _ 24), jc_add3]) h3
    subst e3
    obtain ⟨Γ', p1, p1', hc, -⟩ := hR (good_ret v) (nab_ret v) Γ (hG3 callee)
      ⟨q, hq3 callee, argsOK3 (harg0 _)
        ⟨_, rfl, Struct.bufOK_obj hordq hLq hyΓ hsc (le_refl _) hyhi⟩
        (by
          unfold valPT
          split
          · trivial
          · exact ⟨_, rfl, hv hflag⟩)⟩ reqOK_tab
    refine hQ Γ' st (sr_callG hJH hth hord0 hL0 htrk3 hc rfl (fun a ha => ?_)
      (hst.2.1.trans hs4.2.1.symm) hbe)
    obtain ⟨o', ho', k', hk', hsc', ha'⟩ :=
      Struct.overlap_scell hordq hLq hyΓ hsc (le_refl _) hyhi (argCells_set ha)
    exact ⟨o', ho', k', hk', by rw [hsc']; decide, ha'⟩
  · refine hoare_callD ((csumm_fs (csumm_htab_del hF hJH.htab hth)).and
      (Spec.Inv.funSpec_be _)) ?_
    rintro u4 hs4 ⟨rfl, -⟩ vs hvs callee v st ⟨hR, hbe⟩ hst
    obtain ⟨z1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨z2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    rw [Spec.Inv.ev_lv_w ht3] at h1
    cases h1
    rw [Spec.Inv.ev_lv_w hk3] at h2
    cases h2
    obtain ⟨Γ', p1, p1', hc, -⟩ := hR (good_ret v) (nab_ret v) Γ (hG3 callee)
      ⟨q, hq3 callee, argsOK2 (harg0 _) trivial⟩ reqOK_tab
    exact hQ Γ' st (sr_callG hJH hth hord0 hL0 htrk3 hc rfl (fun a ha => absurd ha argCells_del)
      (hst.2.1.trans hs4.2.1.symm) hbe)

/-- The record read and the call. -/
theorem sr_restG {Hk : Hooks σ} (hJH : JHooks Hk) (hF : FoldOK σ X guestC Hk) (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    (sv : BitVec 64) :
    Hoare σ X (SrAG Hk Γ0 s0 p0 sv)
      (.dec (nm "r") .one (.op .add [gv (nm "journal"), .panop .mul [gv (nm "journal_n"), cw 32]])
        (.dec (nm "t") .one (.load .one (lv (nm "r")))
          (.dec (nm "key") .one (.load .one (.op .add [lv (nm "r"), cw 8]))
            (.ite (.cmp .notEqual (.load .one (.op .add [lv (nm "r"), cw 16])) (cw 0))
              (callD (nm "htab_set")
                [lv (nm "t"), lv (nm "key"), .load .one (.op .add [lv (nm "r"), cw 24])])
              (callD (nm "htab_del") [lv (nm "t"), lv (nm "key")])))))
      (fun r t => r = none ∧ SrIG Hk Γ0 s0 p0 sv t) := by
  refine hoare_dec fun u _ ⟨hsnap, Γ, oj, n, htrk, hoj, hojt, hgj, hjn, hent, hb⟩ vr hvr _ => ?_
  have hgj' : u.globals.lookup (nm "journal") = some (.val (.word oj.base)) := hgj
  have hjn' : u.globals.lookup (nm "journal_n") = some (.val (.word n)) := hjn
  rw [ev_add2 (ev_gv hgj') (ev_mul2 (ev_gv hjn') (ev_cw _ 32)), jc_rec hb] at hvr
  cases hvr
  obtain ⟨x, hxΓ, hxb, hxk, hxs, ⟨y, hyΓ, hyb, hyt, hys⟩, hv⟩ := hent
  have hth := hkOf_tab hxk
  have hG := trkJ_G htrk
  obtain ⟨q, hq, hordq, hLq, -⟩ := id hG
  refine hoare_dec fun u1 _ hu1 vt hvt _ => ?_
  have hu1' : u1 = setVarHOLFinite (nm "r") (.val (.word (jc oj.base (4 * n.toNat)))) u := hu1
  subst hu1'
  have hr1 : (setVarHOLFinite (nm "r") (.val (.word (jc oj.base (4 * n.toNat)))) u).locals.lookup (nm "r") =
      some (.val (.word (jc oj.base (4 * n.toNat)))) := lk_set_self _ _ _
  have evt := ev_ld (Spec.Inv.ev_lv_w hr1) hvt
  subst evt
  refine hoare_dec fun u2 _ hu2 vk hvk _ => ?_
  have hu2' : u2 = setVarHOLFinite (nm "t") (.val (.word (rd u.memory (jc oj.base (4 * n.toNat)))))
      (setVarHOLFinite (nm "r") (.val (.word (jc oj.base (4 * n.toNat)))) u) := hu2
  subst hu2'
  have hr2 : (setVarHOLFinite (nm "t") (.val (.word (rd u.memory (jc oj.base (4 * n.toNat)))))
      (setVarHOLFinite (nm "r") (.val (.word (jc oj.base (4 * n.toNat)))) u)).locals.lookup (nm "r") =
      some (.val (.word (jc oj.base (4 * n.toNat)))) := by rw [lk_set_ne _ _ (by decide)]; exact hr1
  have evk := ev_ld (w := jc oj.base (4 * n.toNat + 1))
    (by rw [ev_add2 (Spec.Inv.ev_lv_w hr2) (ev_cw _ 8), jc_add1]) hvk
  subst evk
  refine sr_iteG hJH (s0 := s0) hF hord0 hL0 (q := q) (Γ := Γ) (x := x) (y := y) (b := oj.base) (i := n.toNat)
    ?_ ?_ hordq hLq ?_ ?_ ?_ hxΓ hth hyΓ hyt hys ?_ ?_
  · exact trkJ_congr hJH.lawful htrk rfl rfl rfl rfl
  · exact hq
  · simp (config := {decide := true}) only [Spec.Inv.lk_set, if_true, if_false]
  · simp (config := {decide := true}) only [Spec.Inv.lk_set, if_true, if_false]; rw [hxb]
  · simp (config := {decide := true}) only [Spec.Inv.lk_set, if_true, if_false]; rw [hyb]; rfl
  · exact hv
  intro Γ' st h
  refine ⟨rfl, ?_, Γ', trkJ_localsG hJH h _⟩
  dsimp only
  rw [Spec.Inv.lookup_restore (by decide), Spec.Inv.lookup_restore (by decide),
    Spec.Inv.lookup_restore (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
    lk_set_ne _ _ (by decide)]
  exact hsnap

end loop

/-- **The `state_restore` entry** (journal family). -/
theorem csumm_state_restoreG {Hk : Hooks σ} (hJH : JHooks Hk) (hF : FoldOK σ X guestC Hk) :
    CSumm σ X guestC Hk (nm "state_restore") srSig srCaps := by
  refine sumSpecA_of_returns (noExc_state_restore hF.hX) ?_
  intro vs body callee rs hl s hs hloc r hr v hv Γ hG hargs hreq
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, rfl, hsA, hA⟩ := lookupCode_one code_state_restore hl'
  obtain ⟨sv, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨p, hps, -⟩ := hargs
  obtain ⟨e0, he0, het, hej⟩ := hreq capJr List.mem_cons_self (by decide)
  obtain ⟨p', hp', hord, hL, -⟩ := id hG
  rw [hps] at hp'
  cases hp'
  have hsnap : s.locals.lookup (nm "snap") = some (.val (.word sv)) := by rw [hloc]; exact hA
  have H : Hoare σ X (fun u => u = s) restoreBody (fun r t => ∀ v, r = some (.returned v) →
      ∃ Γ', TrkJ Hk Γ s p (PWsr Γ s) Γ' t) := by
    refine hoare_seq (R := fun r t => r = none ∧ SrIG Hk Γ s p sv t) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_pre (P := SrIG Hk Γ s p sv) ?_
        (fun t _ ht => by subst ht; exact ⟨hsnap, Γ, trkJ_refl hG hps⟩)
      refine hoare_while (fun u ⟨h1, Γ', h2⟩ => ⟨h1, Γ', trkJ_congr hJH.lawful h2 rfl rfl rfl rfl⟩) ?_ (fun u _ hI _ => ⟨rfl, hI⟩)
      refine hoare_post (hoare_seq (sr_assignG hJH he0 het hej sv) (fun _ _ _ hr _ h => absurd h.1 hr)
        (hoare_pre (sr_restG hJH hF hord hL sv) (fun t _ h => h.2))) ?_
      rintro r t _ _ ⟨rfl, hI⟩
      exact ⟨fun _ => hI, (fun h => by cases h), (fun h => by cases h), (fun _ h => by cases h)⟩
    · refine hoare_return fun t _ ⟨_, _, Γ', ht⟩ w _ => fun v' _ => ⟨Γ', ?_⟩
      exact trkJ_congr hJH.lawful ht rfl rfl rfl rfl
  have H' := H s hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨Γ', ht⟩ := H' v rfl
  obtain ⟨p', hc⟩ := sumCore_of_trkJ (sg := srSig) (vs := [.val (.word sv)]) (r := r) ht hps
    List.mem_cons_self rfl rfl
  exact ⟨Γ', p, p', hc, trivial⟩

end InitECandidate.Solver.MemSafe.HtabEntries
