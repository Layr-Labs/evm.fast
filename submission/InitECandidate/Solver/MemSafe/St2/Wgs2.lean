import InitECandidate.Solver.MemSafe.St2.Wgs
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.St2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
  InitECandidate.Solver.MemSafe.Stor InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Types (guestC tWSR)

variable {σ : Type}

theorem wgs_hbd {tV : Nat} (hS : Staged σ (Hooks.guestHooksR (σ := σ)) tV)
    (hWB : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_storage_trie")
      storWstBufSig storWstCaps)
    (hLoc : RootLoc σ)
    (vs : List (ValueHOL 64)) (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs)
    (ha : ActOK (actOf guestC (Hooks.guestHooksR (σ := σ)) storWgsSig storWstCaps vs s0 Γ0 p0)
      guestCtx)
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    ∃ o : AOut, HoareG σ guestCtx
      (IG (actOf guestC (Hooks.guestHooksR (σ := σ)) storWgsSig storWstCaps vs s0 Γ0 p0)
        (initEnv Band3.params_wgs storWgsSig.params 0 ⟨[], []⟩) Γ Θ) Band3.wgsBody
      (SPost (actOf guestC (Hooks.guestHooksR (σ := σ)) storWgsSig storWstCaps vs s0 Γ0 p0)
        storWgsSig.ret o Γ Θ) := by
  set a := actOf guestC (Hooks.guestHooksR (σ := σ)) storWgsSig storWstCaps vs s0 Γ0 p0 with hadef
  refine ⟨⟨none, none, none⟩, ?_⟩
  rw [wgsBody_eq]
  have hF := Rec.foldOK_guestR (σ := σ)
  have hRoot : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_storage_root_of")
      ⟨[.any], [], [], false⟩ [] := ctab% Rec.tab26_guestR
  refine hoareG_decCall ((summ_funSpec hRoot).and hLoc) ?_ ?_
  · intro s hs hig vs1 hvs1 callee v st ⟨hR, hLR⟩ hctx hsh
    obtain ⟨p, hh, ht, hl⟩ := hig
    obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
    have hps : ∀ pt ∈ (⟨[.any], [], [], false⟩ : Sig).params, pt = PT.any := by
      intro pt h; simpa using h
    have hlen : vs1.length = 1 := by rw [Rec.evs_len2 hvs1]; rfl
    have hA : ArgsOK a.Cb Γ p (⟨[.any], [], [], false⟩ : Sig).params vs1 :=
      argsOK_any hps (by simp [hlen])
    obtain ⟨Γ', q', hext, hh', hmono, hnf, hng', hfrm, hret⟩ := Rec.heap_callMA ha hh hR
      (by simp [Good]) (by simp [Abortive]) hA (fun x hx => absurd hx (argCells_any hps))
      (by simp) (by simp)
    have hGs : G guestC (Hooks.guestHooksR (σ := σ)) Γ s := by
      have := hh.1
      rw [ha.hupg] at this
      exact G_of_upg ha.hcaps this
    have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) :=
      G_congr (s := s) hF.hH rfl rfl rfl rfl hGs
    have hGt : G guestC (Hooks.guestHooksR (σ := σ)) Γ' st := by
      have := hh'.1
      rw [ha.hupg] at this
      exact G_of_upg ha.hcaps this
    have hord : p.Ordered := by
      obtain ⟨p1, hp1, hord, -⟩ := id hh.1
      rw [hh.2.1] at hp1
      cases hp1
      exact hord
    have hLW := hLR p hh.2.1 hord w rfl
    have hBS : BufS guestC Γ' w.toNat 32 :=
      bufS_of_locW hS hGe hext hGt hh'.2.1 (ns_of ha hs) hLW
    set s1 := setVarHOLFinite (nm "root") (.val (.word w)) { st with locals := s.locals } with hs1
    have hGs1 : G guestC (Hooks.guestHooksR (σ := σ)) Γ' s1 :=
      G_congr (s := st) hF.hH rfl rfl rfl rfl hGt
    have hq1 : ptrsOf s1 = some q' := hh'.2.1
    obtain ⟨va, hva, hvaok⟩ := hl (nm "addr") AV.top (by decide)
    obtain ⟨vk, hvk, hvkok⟩ := hl (nm "key") AV.top (by decide)
    obtain ⟨wa, rfl, -⟩ := hvaok
    obtain ⟨wk, rfl, -⟩ := hvkok
    have hargs_f : ArgsOK guestC Γ' q' vSig.params
        [.val (.word wa), .val (.word wk), .val (.word w)] := by
      refine ⟨rfl, ?_⟩
      intro i pt v hpt hv
      rcases i with _ | _ | _ | i
      · simp [vSig] at hpt; subst hpt; trivial
      · simp [vSig] at hpt; subst hpt; trivial
      · simp [vSig] at hpt hv; subst hpt; subst hv
        exact ⟨w, rfl, bufOK_of_bufS hBS⟩
      · simp [vSig] at hpt
    have hreqf : ReqOK storWstCaps s1 Γ' := by
      intro c hc hne
      simp only [storWstCaps, List.mem_cons, List.not_mem_nil, or_false] at hc
      rcases hc with rfl | rfl <;> exact absurd rfl hne
    obtain ⟨haf, hhf⟩ := act_entry (X := guestCtx) hF.hH hF.hC hF.hal hF.hAC hF.hNS vCaps hGs1 hq1
      hargs_f hreqf
    obtain ⟨Θf, hig_f⟩ := init_ig (a := actOf guestC (Hooks.guestHooksR (σ := σ)) vSig storWstCaps
        [.val (.word wa), .val (.word wk), .val (.word w)] s1 Γ' q')
      hF.hH hhf vPs rfl rfl hargs_f (fun i hi hv => by
        have h3 : i < 3 := hi
        rcases i with _ | _ | _ | i
        · refine ⟨?_, ((shapeEqHOL_eq_true _ _).mpr (by simp [shapeOfHOLExact, vPs, actOf]))⟩
          show s1.locals.lookup (nm "addr") = _
          rw [hs1, lk_set_ne _ _ (by decide)]; exact hva
        · refine ⟨?_, ((shapeEqHOL_eq_true _ _).mpr (by simp [shapeOfHOLExact, vPs, actOf]))⟩
          show s1.locals.lookup (nm "key") = _
          rw [hs1, lk_set_ne _ _ (by decide)]; exact hvk
        · refine ⟨?_, ((shapeEqHOL_eq_true _ _).mpr (by simp [shapeOfHOLExact, vPs, actOf]))⟩
          show s1.locals.lookup (nm "root") = _
          rw [hs1]; exact lk_set_self _ _ _
        · omega) 0 ⟨[], []⟩ [] (Nat.zero_le _) ⟨rfl, fun k td hk => by simp at hk⟩
      (fun x av hx => by simp at hx)
    obtain ⟨o', hch, hn1, hb1, hc1⟩ := vchk
    have Hf := chk_sound haf (E := vCE) rfl (vTab_sound hWB) rfl rfl
      (winSpecs_guest (σ := σ) hF.hX) wgsRest _ o' hch Γ' Θf
    have hfoot : ∀ x, ArgCells vSig.params
        [ValueHOL.val (HolWordLab.word wa), ValueHOL.val (HolWordLab.word wk),
          ValueHOL.val (HolWordLab.word w)] x → a.Foot x := by
      intro x hx
      obtain ⟨i, w', hw', ⟨n, hn, hov⟩ | ⟨j, c, d, y, hn, -, -⟩⟩ := hx
      · rcases i with _ | _ | _ | i
        · simp [vSig] at hn
        · simp [vSig] at hn
        · simp [vSig] at hn
          have e : w' = w := by
            have := hw'
            simp [argW, wordOf] at this
            exact this.symm
          subst hn; subst e
          exact foot_of_bufS ha hh' rfl hBS hov
        · simp [vSig] at hn
      · rcases i with _ | _ | _ | i <;> simp [vSig] at hn
    have lift : ∀ (t : State σ) (Γ'' : Gam) (p'' : Ptrs),
        Ext Γ' Γ'' → Heap (actOf guestC (Hooks.guestHooksR (σ := σ)) vSig storWstCaps
          [.val (.word wa), .val (.word wk), .val (.word w)] s1 Γ' q') Γ'' p'' t →
        Heap a Γ'' p'' t := by
      intro t Γ'' p'' he hhf'
      have core := act_exit (C := guestC) (H := Hooks.guestHooksR (σ := σ)) (sg := vSig)
        (cs := storWstCaps) (vs := [.val (.word wa), .val (.word wk), .val (.word w)]) (r := PanSemResultExact.error)
        vCaps hq1 he hhf' (fun v h => nomatch h)
      exact heap_after_call ha hh' (s' := s1) rfl rfl core hfoot (by simp [vSig])
        (fun _ => rfl) (show capSub storWstCaps storWstCaps = true by decide)
    intro t htc hst hgood
    subst hst
    have Hres := Hf s1 htc hig_f hgood
    generalize (evaluateHOLFiniteState s1 wgsRest).1 = r at Hres ⊢
    generalize (evaluateHOLFiniteState s1 wgsRest).2 = u at Hres ⊢
    have hhc : ∀ (u : State σ) (Γ'' : Gam) (p'' : Ptrs), Heap a Γ'' p'' u →
        Heap a Γ'' p'' { u with locals := u.locals.resVarEq (nm "root", s.locals.lookup (nm "root")) } :=
      fun u Γ'' p'' h => heap_congr ha.hH rfl rfl rfl rfl h
    rcases r with _ | (_ | _ | _ | _ | v' | ⟨e, v'⟩ | e)
    · obtain ⟨B, -, -, hB, -⟩ := Hres; rw [hn1] at hB; cases hB
    · rcases Hres with hab | ⟨Γ'', p'', he, hhf'⟩
      · exact Or.inl hab
      · exact Or.inr ⟨Γ'', p'', ext_trans hext he, hhc _ _ _ (lift _ _ _ he hhf')⟩
    · rcases Hres with hab | ⟨Γ'', p'', he, hhf'⟩
      · exact Or.inl hab
      · exact Or.inr ⟨Γ'', p'', ext_trans hext he, hhc _ _ _ (lift _ _ _ he hhf')⟩
    · obtain ⟨B, -, -, hB, -⟩ := Hres; rw [hb1] at hB; cases hB
    · obtain ⟨B, -, -, hB, -⟩ := Hres; rw [hc1] at hB; cases hB
    · obtain ⟨Γ'', p'', he, hhf', -⟩ := Hres
      exact ⟨Γ'', p'', ext_trans hext he, hhc _ _ _ (lift _ _ _ he hhf'),
        fun i r' w' hrt => by simp [storWgsSig] at hrt⟩
    · rcases Hres with hab | ⟨Γ'', p'', he, hhf'⟩
      · exact Or.inl hab
      · exact Or.inr ⟨Γ'', p'', ext_trans hext he, hhc _ _ _ (lift _ _ _ he hhf')⟩
    · rcases Hres with hab | ⟨Γ'', p'', he, hhf'⟩
      · exact Or.inl hab
      · exact Or.inr ⟨Γ'', p'', ext_trans hext he, hhc _ _ _ (lift _ _ _ he hhf')⟩
  · intro s hs hig vs1 hvs1 callee r st ⟨hR, _⟩ hctx habn
    obtain ⟨p, hh, ht, hl⟩ := hig
    have hps : ∀ pt ∈ (⟨[.any], [], [], false⟩ : Sig).params, pt = PT.any := by
      intro pt h; simpa using h
    have hlen : vs1.length = 1 := by rw [Rec.evs_len2 hvs1]; rfl
    have hA : ArgsOK a.Cb Γ p (⟨[.any], [], [], false⟩ : Sig).params vs1 :=
      argsOK_any hps (by simp [hlen])
    rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩
    · by_cases hab : Abortive (PanSemResultExact.exception e v)
      · exact Or.inl hab
      · obtain ⟨Γ', q', he', hh', -⟩ := Rec.heap_callMA ha hh hR (abn_good' (Or.inl ⟨e, v, rfl⟩)) hab hA
          (fun x hx => absurd hx (argCells_any hps)) (by simp) (by simp)
        exact Or.inr ⟨Γ', q', he', heap_congr ha.hH rfl rfl rfl rfl hh'⟩
    · by_cases hab : Abortive (PanSemResultExact.finalFfi e)
      · exact Or.inl hab
      · obtain ⟨Γ', q', he', hh', -⟩ := Rec.heap_callMA ha hh hR (abn_good' (Or.inr ⟨e, rfl⟩)) hab hA
          (fun x hx => absurd hx (argCells_any hps)) (by simp) (by simp)
        exact Or.inr ⟨Γ', q', he', heap_congr ha.hH rfl rfl rfl rfl hh'⟩

/-- **`ws_get_storage`'s summary** at `guestHooksR`, from `ws_storage_trie` at `[buf 32]`, the
located post of `ws_storage_root_of` and the staged hypotheses. -/
theorem csumm_wgs_of_loc {tV : Nat} (hS : Staged σ (Hooks.guestHooksR (σ := σ)) tV)
    (hWB : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_storage_trie")
      storWstBufSig storWstCaps)
    (hLoc : RootLoc σ) :
    CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_get_storage") storWgsSig
      storWstCaps := by
  have hF := Rec.foldOK_guestR (σ := σ)
  exact csumm_of_pre_caps hF.hH hF.hC hF.hal hF.hAC hF.hNS wgsCaps
    (by rw [hF.hX]; exact Band3.code_wgs) rfl
    (fun vs s0 Γ0 p0 ha Γ Θ => wgs_hbd hS hWB hLoc vs s0 Γ0 p0 ha Γ Θ)

end InitECandidate.Solver.MemSafe.St2

#print axioms InitECandidate.Solver.MemSafe.St2.wgs_hbd
#print axioms InitECandidate.Solver.MemSafe.St2.csumm_wgs_of_loc
