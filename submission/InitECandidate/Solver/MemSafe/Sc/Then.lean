import InitECandidate.Solver.MemSafe.Sc.Blk

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

/-!
# The `then` branch of `set_code`, by hand

`var sl = alloc(16); st sl, code; st sl + 8, code_len; jset(lds 1 (ts + 48), h, sl);`

`then_cont`: after the allocation (a fresh block `[Ar, Ar + 16)` at the explicit `Γ`, `q`), the
two stores, then the adoption of the block as a `tCSL` object (`adopt_sound`), then the fold
checker for `jset` at `AJ`.
-/

namespace InitECandidate.Solver.MemSafe.Sc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH

variable {σ : Type} {X : Ctx 64}

/-- The memory-independent invariant of the block phase. -/
def CR (a : Act σ) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) (q : Ptrs) (Ar : BitVec 64)
    (t : State σ) : Prop :=
  TempsOK a A3 Γ q Θ ∧ LocalsOK A3 Γ Θ t ∧ LenL t.locals ∧
    t.locals.lookup (nm "sl") = some (.val (.word Ar))

theorem cr_mem {a : Act σ} {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {q : Ptrs} {Ar : BitVec 64}
    (t : State σ) (mem : Mem) (h : CR a Γ Θ q Ar t) : CR a Γ Θ q Ar { t with memory := mem } := h

theorem a3L_code : A3.L.lookup (nm "code") = some .top := by decide

theorem then_cont {a : Act σ} (ha : ActOK a guestCtx) (hE : scE.C = a.C)
    (hT : CTabSound σ guestCtx a.Cb a.H scE.tab) (hsg : scE.sg = a.sg) (hcE : scE.caps = a.caps)
    (hWS : WinSpecs σ guestCtx) (hH : a.H = Hooks.guestHooksR (σ := σ))
    {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {q : Ptrs} {Ar : BitVec 64}
    (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + 16 ≤ heapEnd) (h8 : Ar.toNat % 8 = 0)
    (hDis : ∀ (k : Nat) (td : TD) (qk : BitVec 64), A2.T[k]? = some (some td) →
      Θ[k]? = some (qk, td.size) → ∀ x, Overlap qk.toNat td.size x → ¬ Overlap Ar.toNat 16 x) :
    HoareG σ guestCtx (fun t => BlkI a Γ q Ar (fun _ => False) t ∧ CR a Γ Θ q Ar t)
      (.seq (.store (lv (nm "sl")) (lv (nm "code")))
        (.seq (.store (.op .add [lv (nm "sl"), cw 8]) (lv (nm "code_len"))) scJs))
      (SPost a scE.sg.ret ⟨some AJ, none, none⟩ Γ Θ) := by
  have hC : a.C = upg Types.guestC scCaps := hE.symm
  have hgr : a.sg.grows = true := by rw [← hsg]; rfl
  have hrng : Ar.toNat + 16 < 2 ^ 64 := by
    have : heapEnd < 2 ^ 64 := by decide
    omega
  have hab : ∀ (R : Option (PanSemResultExact 64) → State σ → Prop)
      (Q : Option (PanSemResultExact 64) → State σ → Prop), 
      (∀ r t, R r t → (∀ r', r = some r' → False) ) → 
      ∀ r (t : State σ), InCtx t guestCtx → r ≠ none → Good r → R r t → Q r t := by
    intro R Q hR r t _ hr _ h
    obtain ⟨r', rfl⟩ := Option.ne_none_iff_exists'.mp hr
    exact (hR _ _ h r' rfl).elim
  refine hoareG_seq (R := fun r t => (r = none → BlkI a Γ q Ar (fun i => False ∨ i = 0) t ∧
      CR a Γ Θ q Ar t) ∧ ∀ r', r = some r' → False) ?_ (hab _ _ (fun _ _ h => h.2)) ?_
  · -- the first store
    refine st_blk (X := guestCtx) ha (R := CR a Γ Θ q Ar) (fun t mem h => cr_mem t mem h)
      (j := 0) hrng (fun i hi => hi.elim) (by omega) ?_ ?_
    · intro s _ hcr w hw
      rw [ev_lw hcr.2.2.2] at hw
      cases hw
      simp
    · intro s _ hcr v hv
      obtain ⟨u, hu, w, rfl, -⟩ := hcr.2.1 (nm "code") .top a3L_code
      rw [ev_lv, hu] at hv
      cases hv
      exact ⟨w, rfl, fun h => absurd h (by decide)⟩
  · refine hoareG_pre ?_ (fun t _ h => h.1 rfl)
    refine hoareG_seq (R := fun r t => (r = none →
        BlkI a Γ q Ar (fun i => (False ∨ i = 0) ∨ i = 1) t ∧ CR a Γ Θ q Ar t) ∧
        ∀ r', r = some r' → False) ?_ (hab _ _ (fun _ _ h => h.2)) ?_
    · refine st_blk (X := guestCtx) ha (R := CR a Γ Θ q Ar) (fun t mem h => cr_mem t mem h)
        (j := 1) hrng (fun i hi => by rcases hi with (h | h) | h <;> first | exact h.elim | omega) (by omega) ?_ ?_
      · intro s _ hcr w hw
        rw [ev_add2 (ev_lw hcr.2.2.2) (ev_cw _ 8)] at hw
        cases hw
        rfl
      · intro s _ hcr v hv
        obtain ⟨n, hn, hb⟩ := hcr.2.2.1
        rw [ev_lv, hn] at hv
        cases hv
        exact ⟨n, rfl, fun _ => hb⟩
    · intro t ht hR hg
      obtain ⟨⟨hh, hB, hnA, hmem⟩, hT3, hl3, hlen, hsl⟩ := hR.1 rfl
      have hcnt : (rd t.memory (Ar + BitVec.ofNat 64 8)).toNat ≤ 2 ^ 32 := hmem 1 (Or.inr rfl) rfl
      obtain ⟨hext, hig⟩ := adopt_sound ha hC hH hgr hh hT3 hl3 hB hnA hs h8 hsl hcnt hDis
      have H := chk_sound ha hE hT hsg hcE hWS scJs AJ _ chk_js _ Θ t ht hig hg
      exact spost_later ⟨hext, List.prefix_refl _⟩ H


/-- **The `then` branch of `set_code`.** -/
theorem then_sound {a : Act σ} (ha : ActOK a guestCtx) (hE : scE.C = a.C)
    (hT : CTabSound σ guestCtx a.Cb a.H scE.tab) (hsg : scE.sg = a.sg) (hcE : scE.caps = a.caps)
    (hWS : WinSpecs σ guestCtx) (hH : a.H = Hooks.guestHooksR (σ := σ))
    (hX : guestCtx.code.lookup = guestCode) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a A2 Γ Θ s ∧ LenL s.locals) scThen
      (SPost a scE.sg.ret Othen Γ Θ) := by
  obtain ⟨cs, hmem, -, -, -, hcs⟩ := findSig_spec fs_a16
  have hAS : AllocSpec σ guestCtx (nm "alloc") .heap := allocSpec_alloc hX
  have hf := summ_funSpec (hT (nm "alloc") allocSig cs hmem)
  unfold scThen
  refine hoareG_decCall (hf.and hAS) ?_ ?_
  · intro s hs ⟨⟨p, hh, ht, hl⟩, hLen⟩ vs hvs callee v st ⟨hR, hLc'⟩ hst hsh
    obtain ⟨Γ', q', hext, hh', ht', hm, hret⟩ := call_core ha hE hsg hh ht hl hs fs_a16 hvs hcs hcE
      hR (by simp [Good]) (by simp [Abortive])
    obtain ⟨hlen, hvok⟩ := evs_aev hh.1 hl (ns_of ha hs) _ vs hvs
    have hav := avs_vok (C := a.C) hlen hvok
    rw [← hE] at hav
    have hh2 := heap_congr (s := st) (t := { st with locals := s.locals }) ha.hH
      rfl rfl rfl rfl hh'
    obtain ⟨Θ1, hp1, hig1⟩ := bindRes_sound ha.hH hh2 ht' (locals_ext hext hl)
      (heap_ord hh) hh.2.2.1 hm (hret v rfl) hav hsh (nm "sl")
    have hvs' : vs = [.val (.word (BitVec.ofNat 64 16))] := by
      have := hvs
      rw [evs_cons (ev_cw s 16) evs_nil] at this
      exact (Option.some.inj this).symm
    obtain ⟨Ar, rfl⟩ := val_of_shapeEq_one' hsh
    have hord_p := heap_ord hh
    have hord_q := heap_ord hh'
    have hm0 : a.p0.Mono p := hh.2.2.1
    have hfb : FreshBuf Γ' p q' Ar 16 :=
      freshSz_sound (avs := argsA16.map (aev scE.C A2 chkFuel)) (rt := allocSig.ret) (n := 16)
        (by rfl) (hret _ rfl) hav
    have hB : BlkF Ar 16 Γ' q' := fun z hz =>
      ⟨(hfb.2 z hz).2, fresh_alloc hord_p (hfb.2 z hz).1⟩
    have hnA : ∀ x : BitVec 64, Overlap Ar.toNat 16 x → ¬ a.p0.Allocated x.toNat := fun z hz =>
      fresh_not_alloc ha.hord0 hord_q (mono_trans hm0 hm) (fresh_mono hm0 (hfb.2 z hz).1)
    have hstat : heapBase ≤ Ar.toNat ∧ Ar.toNat + 16 ≤ heapEnd := by
      have hpt : ptrsOf (callEntryStateHOLFinite s callee) = some p := hh.2.1
      obtain ⟨-, -, p', hp', -, -, hvv⟩ := hLc' (by simp [Good]) _ p hvs' hpt hord_p
      obtain ⟨Ar', hAr', -, hlive, -⟩ := hvv _ rfl
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hAr'
      subst hAr'
      have hp2 : p' = q' := by
        have h1 := hh'.2.1
        rw [hp'] at h1
        exact Option.some.inj h1
      subst hp2
      simp only [Region.Live] at hlive
      obtain ⟨b1, b2, -⟩ := hord_q
      have : (BitVec.ofNat 64 16).toNat = 16 := rfl
      omega
    have hDis : ∀ (k : Nat) (td : TD) (qk : BitVec 64), A2.T[k]? = some (some td) →
        Θ1[k]? = some (qk, td.size) → ∀ x, Overlap qk.toNat td.size x →
        ¬ Overlap Ar.toNat 16 x := by
      intro k td qk hk hqk x hx hxb
      obtain ⟨q0, hq0, hok⟩ := ht.2 k td hk
      have h1 := prefix_getElem? hp1 hq0
      rw [h1] at hqk
      simp only [Option.some.injEq, Prod.mk.injEq] at hqk
      obtain ⟨rfl, -⟩ := hqk
      obtain ⟨p1, hp1', hordp, hL, -⟩ := hh.1
      have hpp : p1 = p := Option.some.inj (hp1'.symm.trans hh.2.1)
      subst hpp
      rcases hok.1 x hx with ⟨o, ho, k', hk', hsc, he⟩ | ⟨-, hal⟩
      · obtain ⟨hc, -⟩ := cell_toNat hord_p hL ho hk'
        refine (hfb.2 x hxb).2 ?_
        obtain ⟨o', ho', hb, -, hs'⟩ := hext o ho
        refine ⟨o', ho', ?_, ?_⟩
        · rw [he, hc]; unfold Obj.lo at *; rw [hb]; unfold Obj.HasSlot at hk'; omega
        · rw [he, hc]; unfold Obj.lo Obj.hi at *; rw [hb]; unfold Obj.HasSlot at hk'; omega
      · exact fresh_not_alloc hord_p hord_q hm (hfb.2 x hxb).1 hal
    obtain ⟨q1, hhh, htt, hll⟩ := hig1
    have hq1 : q1 = q' := Option.some.inj (hhh.2.1.symm.trans hh2.2.1)
    subst hq1
    have hLen1 : LenL (setVarHOLFinite (nm "sl") (.val (.word Ar))
        { st with locals := s.locals }).locals := by
      obtain ⟨n, hn, hb⟩ := hLen
      exact ⟨n, by rw [lk_set_ne _ _ (by decide)]; exact hn, hb⟩
    have hsl1 := lk_set_self { st with locals := s.locals } (nm "sl") (.val (.word Ar))
    intro t htc hstt hgood
    subst hstt
    have H := then_cont ha hE hT hsg hcE hWS hH hstat hfb.1 hDis _ htc
      ⟨⟨hhh, hB, hnA, fun i hi => hi.elim⟩, htt, hll, hLen1, hsl1⟩ hgood
    have hl0 : Later Γ Θ Γ' Θ1 := ⟨hext, hp1⟩
    generalize (evaluateHOLFiniteState
      (setVarHOLFinite (nm "sl") (.val (.word Ar)) { st with locals := s.locals })
      (.seq (.store (lv (nm "sl")) (lv (nm "code")))
        (.seq (.store (.op .add [lv (nm "sl"), cw 8]) (lv (nm "code_len"))) scJs))).1 = r at H ⊢
    generalize (evaluateHOLFiniteState
      (setVarHOLFinite (nm "sl") (.val (.word Ar)) { st with locals := s.locals })
      (.seq (.store (lv (nm "sl")) (lv (nm "code")))
        (.seq (.store (.op .add [lv (nm "sl"), cw 8]) (lv (nm "code_len"))) scJs))).2 = u at H ⊢
    rcases r with _ | (_ | _ | _ | _ | _ | _ | _)
    all_goals first
      | (obtain ⟨B, Γ'', Θ'', hB, hlat, ⟨p', hh2, ht2, hl2⟩⟩ := H
         simp only [Option.some.injEq] at hB
         subst hB
         refine ⟨_, Γ'', Θ'', rfl, later_trans hl0 hlat, p', heap_of_locals ha.hH _ hh2, ht2, ?_⟩
         exact locals_restore (later_trans hl0 hlat) hl hl2 (nm "sl"))
      | (obtain ⟨B, Γ'', Θ'', hB, -⟩ := H
         exact absurd hB (by simp))
      | (obtain ⟨Γ'', p', he, hh2, hr'⟩ := H
         exact ⟨Γ'', p', ext_trans hext he, heap_of_locals ha.hH _ hh2, hr'⟩)
      | (rcases H with hab | ⟨Γ'', p', he, hh2⟩
         · exact Or.inl hab
         · exact Or.inr ⟨Γ'', p', ext_trans hext he, heap_of_locals ha.hH _ hh2⟩)
  · intro s hs ⟨⟨p, hh, ht, hl⟩, _⟩ vs hvs callee r st ⟨hR, hLc'⟩ _ habn
    exact call_abn ha hE hsg hh ht hl hs fs_a16 hvs hcs hcE hR habn _ _

end InitECandidate.Solver.MemSafe.Sc

#print axioms InitECandidate.Solver.MemSafe.Sc.then_cont
#print axioms InitECandidate.Solver.MemSafe.Sc.then_sound
