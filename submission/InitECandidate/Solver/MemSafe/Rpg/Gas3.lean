import InitECandidate.Solver.MemSafe.Rpg.Gas2

/-!
# rpG: soundness of the spine check `sk`

`sk_sound`: if `sk gE A p = true` then from `IG (aAt H s0 Γ0 p0) A Γ Θ`, every non-abortive good
result of `p` leaves `GAS_LEFT` of the running EV at most `g0` (given that of `s0` is). The
`charge_gas(e);` node switches to a new capability-free activation at the state after the call
(`aAt H t Γ2 p2`), whose footprint keeps `GAS_LEFT` again.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Rpg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64} {H : Hooks σ}

theorem gword_of_lookup {s t : State σ} {g : MlS} (h : s.globals.lookup g = t.globals.lookup g) :
    gword s g = gword t g := by
  unfold gword; rw [h]

theorem toNat_sub_le (x a : BitVec 64) (h : a ≤ x) : (x - a).toNat ≤ x.toNat := by
  rw [BitVec.le_def] at h
  rw [BitVec.toNat_sub]
  omega

/-- The call `charge_gas(e);` from the invariant of the current activation. -/
theorem cg_call (En : RpEnv σ X H) {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (hG : G guestC H Γ0 s0) (hps : ptrsOf s0 = some p0) (hreq : ReqOK capE s0 Γ0)
    {e : BitVec 64} {g0 : Nat} (hge : gword s0 Frames.nmEv = some e) (hg0 : gasV s0 e ≤ g0)
    {A : AEnv} (hTe : A.T = []) {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {args : List (ExpHOL 64)}
    (hlen : args.length = 1) :
    HoareG σ X (IG (aAt H s0 Γ0 p0) A Γ Θ) (.call (some (none, none)) (nm "charge_gas") args)
      (fun ro t => (ro = none → ∃ Γ2 p2, G guestC H Γ2 t ∧ ptrsOf t = some p2 ∧
          ReqOK capE t Γ2 ∧ LocalsOK A Γ2 [] t ∧ gword t Frames.nmEv = some e ∧ gasV t e ≤ g0) ∧
        ∀ r', ro = some r' → ¬ Abortive r' → gasV t e ≤ g0) := by
  obtain ⟨ha, hh0⟩ := entry_act En hG hps hreq
  have hspec := Frames.charge_evSpec (σ := σ) (X := X) En.hX En.hF
  refine hoareG_callD hspec ?_ ?_
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee v st hR hst
    have hΘ : Θ = [] := List.length_eq_zero_iff.mp (by rw [ht.1, hTe]; rfl)
    subst hΘ
    have hGs : G guestC H Γ s := G_of_upg capsOK_capE hh.1
    have hGe : G guestC H Γ (callEntryStateHOLFinite s callee) :=
      G_congr (s := s) (t := callEntryStateHOLFinite s callee) En.hH rfl rfl rfl rfl hGs
    have hreqs : ReqOK capE s Γ := req_now ha hh
    obtain ⟨eo, heo, het, hgeo⟩ := hreqs ⟨nm "ev", 0, [], false⟩ (by simp [capE]) (by decide)
    have hvl : vs.length = 1 := by
      have := (evs_aev hh.1 hl (ns_of ha hs) args vs hvs).1
      rw [this, hlen]
    have hargs : ArgsOK guestC Γ p Frames.sg1n.params vs :=
      Frames.argsOK_anyL (by simp [Frames.sg1n]) (by simp [Frames.sg1n, hvl])
    have hs' : gword s Frames.nmEv = some e := by
      have hk := caps_kept ha hh ⟨nm "ev", 0, [], false⟩ (by simp [aAt, actOf, capE]) (by decide)
      rw [← hge]
      exact gword_of_lookup hk
    have hcur : gasV s e ≤ g0 := gasle_of_heap En hG hps hreq hge hg0 hh
    have hPre : ∃ e1, Frames.EvRun tEV Γ (callEntryStateHOLFinite s callee) e1 := ⟨eo, heo, het, hgeo⟩
    obtain ⟨Γ', p1, p2, core, hQ⟩ := hR (by simp [Good]) Γ hGe ⟨p, hh.2.1, hargs⟩ hPre
    obtain ⟨hΓ, hpt, hgl, e1, a1, hge1, hvs1, hcase⟩ := hQ
    subst hΓ
    obtain ⟨hp1, hp2, -, -, -, hG', -⟩ := core
    have he1 : e1 = e := by
      have : gword (callEntryStateHOLFinite s callee) Frames.nmEv = some e := hs'
      rw [hge1] at this; exact Option.some.inj this
    subst he1
    rcases hcase with ⟨hr, -, -⟩ | ⟨-, hle, hm⟩
    · cases hr
    have hgw : gword st Frames.nmEv = some e1 := by
      have : gword st Frames.nmEv = gword s Frames.nmEv := by
        unfold gword; rw [hgl]; rfl
      rw [this]; exact hs'
    have hgas : gasV { st with locals := s.locals } e1 ≤ g0 := by
      show (Frames.fld st.memory e1 64).toNat ≤ g0
      rw [hm]
      show (Frames.fld (Frames.chargeMem s.memory e1 a1) e1 64).toNat ≤ g0
      rw [Frames.fld_charge64]
      exact le_trans (toNat_sub_le _ _ hle) hcur
    refine ⟨fun _ => ⟨Γ', p2, G_congr (s := st) (t := { st with locals := s.locals }) En.hH rfl rfl rfl rfl hG', hp2, ?_, hl, hgw, hgas⟩,
      fun r' h => by cases h⟩
    intro c hc _
    simp only [capE, List.mem_singleton] at hc
    subst hc
    have hgeo' : gword s (nm "ev") = some eo.base := hgeo
    have hbe : eo.base = e1 := Option.some.inj (hgeo'.symm.trans hs')
    refine ⟨eo, heo, het, ?_⟩
    show gword st (nm "ev") = some eo.base
    rw [hbe]; exact hgw
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee r st hR hst habn
    have hGs : G guestC H Γ s := G_of_upg capsOK_capE hh.1
    have hGe : G guestC H Γ (callEntryStateHOLFinite s callee) :=
      G_congr (s := s) (t := callEntryStateHOLFinite s callee) En.hH rfl rfl rfl rfl hGs
    have hreqs : ReqOK capE s Γ := req_now ha hh
    obtain ⟨eo, heo, het, hgeo⟩ := hreqs ⟨nm "ev", 0, [], false⟩ (by simp [capE]) (by decide)
    have hvl : vs.length = 1 := by
      have := (evs_aev hh.1 hl (ns_of ha hs) args vs hvs).1
      rw [this, hlen]
    have hargs : ArgsOK guestC Γ p Frames.sg1n.params vs :=
      Frames.argsOK_anyL (by simp [Frames.sg1n]) (by simp [Frames.sg1n, hvl])
    have hcur : gasV s e ≤ g0 := gasle_of_heap En hG hps hreq hge hg0 hh
    have hPre : ∃ e1, Frames.EvRun tEV Γ (callEntryStateHOLFinite s callee) e1 := ⟨eo, heo, het, hgeo⟩
    have hg : Good (some r) := by
      rcases habn with ⟨e', v', rfl⟩ | ⟨e', rfl⟩ <;> simp [Good]
    obtain ⟨Γ', p1, p2, core, hQ⟩ := hR hg Γ hGe ⟨p, hh.2.1, hargs⟩ hPre
    obtain ⟨hΓ, hpt, hgl, e1, a1, hge1, hvs1, hcase⟩ := hQ
    have hmem : st.memory = s.memory := by
      rcases hcase with ⟨hr, -, hm⟩ | ⟨hr, -, -⟩
      · exact hm
      · rcases habn with ⟨e', v', rfl⟩ | ⟨e', rfl⟩ <;> cases hr
    refine ⟨(fun h => by cases h), fun r' hr' hna => ?_⟩
    show (Frames.fld st.memory e 64).toNat ≤ g0
    rw [hmem]
    exact hcur


section sound
variable (En : RpEnv σ X H)
include En

/-- **The spine check is sound.** -/
theorem sk_sound : ∀ (p : ProgHOL 64) (A : AEnv), sk gE A p = true →
    ∀ (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs), G guestC H Γ0 s0 → ptrsOf s0 = some p0 →
    ReqOK capE s0 Γ0 → ∀ (e : BitVec 64) (g0 : Nat), gword s0 Frames.nmEv = some e →
    gasV s0 e ≤ g0 → ∀ (Γ : Gam) (Θ : List (BitVec 64 × Nat)),
      HoareG σ X (IG (aAt H s0 Γ0 p0) A Γ Θ) p (Qg e g0)
  | .seq p q, A, h, s0, Γ0, p0, hG, hps, hreq, e, g0, hge, hg0, Γ, Θ => by
      obtain ⟨ha, hh0⟩ := entry_act En hG hps hreq
      simp only [sk] at h
      by_cases hcg : cgOK p = true
      · rw [if_pos hcg] at h
        obtain ⟨args, rfl, hlen⟩ := cgOK_spec hcg
        simp only [Bool.and_eq_true] at h
        obtain ⟨hTe, hq⟩ := h
        have hTe' : A.T = [] := by simpa using hTe
        obtain ⟨oq, hoq⟩ := Option.isSome_iff_exists.mp hq
        refine hoareG_seq (cg_call En hG hps hreq hge hg0 hTe' hlen) ?_ ?_
        · intro r t _ hr _ hR r' hr' hna
          exact hR.2 r' hr' hna
        · intro t ht hR hg
          obtain ⟨Γ2, p2, hG2, hps2, hreq2, hl2, hge2, hgas2⟩ := hR.1 rfl
          obtain ⟨ha2, hh2⟩ := entry_act En hG2 hps2 hreq2
          have hig : IG (aAt H t Γ2 p2) A Γ2 [] t :=
            ⟨p2, hh2, ⟨by simp [hTe'], fun k td hk => by rw [hTe'] at hk; simp at hk⟩, hl2⟩
          have H1 := chk_sound (E := gE) ha2 rfl En.hT rfl rfl En.hWS q A oq hoq Γ2 [] t ht hig hg
          intro r' hr' hna
          obtain ⟨Γ', p', hh'⟩ := spost_heap H1 r' hr' hna
          exact gasle_of_heap En hG2 hps2 hreq2 hge2 hgas2 hh'
      · rw [if_neg hcg] at h
        split at h
        · rename_i A' hp
          have ihp := chk_sound (E := gE) ha rfl En.hT rfl rfl En.hWS p A _ hp Γ Θ
          refine hoareG_seq ihp ?_ ?_
          · intro r t _ hr _ hR r' hr' hna
            obtain ⟨Γ', p', hh⟩ := spost_heap hR r' hr' hna
            exact gasle_of_heap En hG hps hreq hge hg0 hh
          · intro t ht hR hg
            obtain ⟨B, Γ', Θ', hB, hl, hig⟩ := hR
            simp only [Option.some.injEq] at hB
            subst hB
            exact sk_sound q _ h s0 Γ0 p0 hG hps hreq e g0 hge hg0 Γ' Θ' t ht hig hg
        · cases h
  | .dec x sh e' b, A, h, s0, Γ0, p0, hG, hps, hreq, e, g0, hge, hg0, Γ, Θ => by
      obtain ⟨ha, hh0⟩ := entry_act En hG hps hreq
      simp only [sk] at h
      refine hoareG_dec fun s hctx hs v hv hsh => ?_
      obtain ⟨p, hh, ht, hl⟩ := hs
      have hav := aev_sound (H := H) hh.1 hl (ns_of ha hctx) chkFuel e' v hv
      have hE : gE.C = (aAt H s0 Γ0 p0).C := rfl
      rw [← hE] at hav
      generalize aev gE.C A chkFuel e' = av at hav h
      have hav' : VOk Γ Θ (bindAV sh av) v := by
        unfold bindAV
        cases sh with
        | one =>
            obtain ⟨w, rfl⟩ := val_of_shapeEq_one hsh
            by_cases hw : av.isWord = true
            · rw [if_pos hw]; exact hav
            · rw [if_neg hw]; exact ⟨w, rfl, trivial⟩
        | comb _ =>
            cases av with
            | wide n => exact hav
            | _ => exact shAV_vok ((shapeEqHOL_eq_true _ _).mp hsh).symm
        | named _ =>
            cases av with
            | wide n => exact hav
            | _ => exact shAV_vok ((shapeEqHOL_eq_true _ _).mp hsh).symm
      have hig1 := ig_set ha.hH ⟨p, hh, ht, hl⟩ hav' (x := x)
      intro t htc hst hgood
      subst hst
      exact sk_sound b _ h s0 Γ0 p0 hG hps hreq e g0 hge hg0 Γ Θ _ htc hig1 hgood
  | .decCall x sh f args k, A, h, s0, Γ0, p0, hG, hps, hreq, e, g0, hge, hg0, Γ, Θ => by
      obtain ⟨ha, hh0⟩ := entry_act En hG hps hreq
      simp only [sk] at h
      split at h
      · cases h
      · split at h
        · rename_i sg hfs
          obtain ⟨cs, hmem, -, -, -, hcs⟩ := findSig_spec hfs
          have hf := summ_funSpec (En.hT f sg cs hmem)
          refine hoareG_decCall hf ?_ ?_
          · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee v st hR hst hsh
            obtain ⟨Γ', q', hext, hh', ht', hm, hret⟩ :=
              call_core ha rfl rfl hh ht hl hs hfs hvs hcs rfl hR (by simp [Good]) (by simp [Abortive])
            obtain ⟨hlen, hvok⟩ := evs_aev hh.1 hl (ns_of ha hs) _ vs hvs
            have hav := avs_vok (C := (aAt H s0 Γ0 p0).C) hlen hvok
            have hE : gE.C = (aAt H s0 Γ0 p0).C := rfl
            rw [← hE] at hav
            have hh2 := heap_congr (s := st) (t := { st with locals := s.locals }) ha.hH
              rfl rfl rfl rfl hh'
            obtain ⟨Θ1, hp1, hig1⟩ := bindRes_sound ha.hH hh2 ht' (locals_ext hext hl)
              (heap_ord hh) hh.2.2.1 hm (hret v rfl) hav hsh x
            intro t htc hstt hgood
            subst hstt
            exact sk_sound k _ h s0 Γ0 p0 hG hps hreq e g0 hge hg0 Γ' Θ1 _ htc hig1 hgood
          · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee r st hR _ habn r' hr' hna
            have hP := call_abn ha rfl rfl hh ht hl hs hfs hvs hcs rfl hR habn [] ⟨none, none, none⟩
            obtain ⟨Γ'', p'', hh''⟩ := spost_heap hP r' hr' hna
            exact gasle_of_heap En hG hps hreq hge hg0 hh''
        · cases h
  | .skip, _, h, _, _, _, _, _, _, _, _, _, _, _, _ => by simp [sk] at h
  | .annot _ _, _, h, _, _, _, _, _, _, _, _, _, _, _, _ => by simp [sk] at h
  | .tick, _, h, _, _, _, _, _, _, _, _, _, _, _, _ => by simp [sk] at h
  | .break, _, h, _, _, _, _, _, _, _, _, _, _, _, _ => by simp [sk] at h
  | .continue, _, h, _, _, _, _, _, _, _, _, _, _, _, _ => by simp [sk] at h
  | .raise _ _, _, h, _, _, _, _, _, _, _, _, _, _, _, _ => by simp [sk] at h
  | .return _, _, h, _, _, _, _, _, _, _, _, _, _, _, _ => by simp [sk] at h
  | .ite _ _ _, _, h, _, _, _, _, _, _, _, _, _, _, _, _ => by simp [sk] at h
  | .assign _ _ _, _, h, _, _, _, _, _, _, _, _, _, _, _, _ => by simp [sk] at h
  | .store _ _, _, h, _, _, _, _, _, _, _, _, _, _, _, _ => by simp [sk] at h
  | .primitive _ _ _, _, h, _, _, _, _, _, _, _, _, _, _, _, _ => by simp [sk] at h
  | .store32 _ _, _, h, _, _, _, _, _, _, _, _, _, _, _, _ => by simp [sk] at h
  | .storeByte _ _, _, h, _, _, _, _, _, _, _, _, _, _, _, _ => by simp [sk] at h
  | .while _ _, _, h, _, _, _, _, _, _, _, _, _, _, _, _ => by simp [sk] at h
  | .call _ _ _, _, h, _, _, _, _, _, _, _, _, _, _, _, _ => by simp [sk] at h
  | .extCall _ _ _ _ _, _, h, _, _, _, _, _, _, _, _, _, _, _, _ => by simp [sk] at h
  | .shMemLoad _ _ _ _, _, h, _, _, _, _, _, _, _, _, _, _, _, _ => by simp [sk] at h
  | .shMemStore _ _ _, _, h, _, _, _, _, _, _, _, _, _, _, _, _ => by simp [sk] at h

end sound

end InitECandidate.Solver.MemSafe.Rpg

#print axioms InitECandidate.Solver.MemSafe.Rpg.cg_call
#print axioms InitECandidate.Solver.MemSafe.Rpg.sk_sound
