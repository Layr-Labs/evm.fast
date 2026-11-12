import InitECandidate.Solver.MemSafe.WhileSound
import InitECandidate.Solver.MemSafe.Window
import InitECandidate.Solver.MemSafe.ShMem

/-!
# Soundness of the statement checker (M1)

`chk_sound`: if `chk E A p = some o`, then from `IG a A Γ Θ`, every good result of `p` ends in
`SPost a E.sg.ret o Γ Θ` — the matching output environment (normal / `break` / `continue`)
with grown ghosts, or the heap part (returns, with the result fitting the signature;
exceptions; final FFI events).
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem retOK_sound {rt : List RT} {av : AV} (h : retOK rt av = true) {Γ : Gam}
    {Θ : List (BitVec 64 × Nat)} {v : ValueHOL 64} (hv : VOk Γ Θ av v) (p p' : Ptrs)
    (vs : List (ValueHOL 64)) : RetOK Γ p p' vs rt v := by
  intro i r w hr hw
  have hall : ∀ rts : List RT, rts.all (· == .any) = true → ∀ r ∈ rts, r = .any := by
    intro rts h r hr
    simp only [List.all_eq_true, beq_iff_eq] at h
    exact h r hr
  match rt, h, hr with
  | [], _, hr => simp at hr
  | [.any], _, hr =>
      simp only [List.getElem?_cons, List.getElem?_nil] at hr
      split at hr <;> simp at hr
      subst hr; trivial
  | [.fits k], h, hr =>
      simp only [retOK, Bool.and_eq_true] at h
      obtain ⟨x, rfl, hx⟩ := vok_word h.1 hv
      have hi : i = 0 := by
        cases i with
        | zero => rfl
        | succ i => simp at hr
      subst hi
      simp at hr
      subst hr
      simp [flattenHOL] at hw
      subst hw
      exact (fits_of_fitsAV h.2 hx).2
  | [.fresh n], h, _ => simp [retOK] at h
  | [.freshArg j c d], h, _ => simp [retOK] at h
  | r0 :: r1 :: rest, h, hr =>
      have h' : (r0 :: r1 :: rest).all (· == .any) = true := by
        cases r0 <;> simpa [retOK] using h
      have := hall _ h' r (List.mem_of_getElem? hr)
      subst this; trivial

theorem chk_sound {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C)
    (hT : CTabSound σ X a.Cb a.H E.tab) (hsg : E.sg = a.sg) (hcE : E.caps = a.caps) (hWS : WinSpecs σ X) :
    ∀ (p : ProgHOL 64) (A : AEnv) (o : AOut), chk E A p = some o →
      ∀ Γ Θ, HoareG σ X (IG a A Γ Θ) p (SPost a E.sg.ret o Γ Θ)
  | .skip, A, o, h, Γ, Θ => by
      simp only [chk, Option.some.injEq] at h; subst h
      exact hoareG_skip fun s _ hs => ⟨A, Γ, Θ, rfl, later_refl Γ Θ, hs⟩
  | .annot _ _, A, o, h, Γ, Θ => by
      simp only [chk, Option.some.injEq] at h; subst h
      exact hoareG_annot fun s _ hs => ⟨A, Γ, Θ, rfl, later_refl Γ Θ, hs⟩
  | .tick, A, o, h, Γ, Θ => by
      simp only [chk, Option.some.injEq] at h; subst h
      refine hoareG_tick fun s _ hs _ => ⟨A, Γ, Θ, rfl, later_refl Γ Θ, ?_⟩
      obtain ⟨p, hh, ht, hl⟩ := hs
      exact ⟨p, heap_congr (s := s) ha.hH rfl rfl rfl rfl hh, ht, hl⟩
  | .break, A, o, h, Γ, Θ => by
      simp only [chk, Option.some.injEq] at h; subst h
      exact hoareG_break fun s _ hs => ⟨A, Γ, Θ, rfl, later_refl Γ Θ, hs⟩
  | .continue, A, o, h, Γ, Θ => by
      simp only [chk, Option.some.injEq] at h; subst h
      exact hoareG_continue fun s _ hs => ⟨A, Γ, Θ, rfl, later_refl Γ Θ, hs⟩
  | .raise _ _, A, o, h, Γ, Θ => by
      simp only [chk, Option.some.injEq] at h; subst h
      refine hoareG_raise fun s _ hs v _ => ?_
      obtain ⟨p, hh, -, -⟩ := hs
      exact Or.inr ⟨Γ, p, ext_refl Γ, heap_congr (s := s) ha.hH rfl rfl rfl rfl hh⟩
  | .return e, A, o, h, Γ, Θ => by
      simp only [chk] at h
      split at h
      · rename_i hr
        simp only [Option.some.injEq] at h; subst h
        refine hoareG_return fun s hctx hs v hv => ?_
        obtain ⟨p, hh, -, hl⟩ := hs
        refine ⟨Γ, p, ext_refl Γ, heap_congr (s := s) ha.hH rfl rfl rfl rfl hh, ?_⟩
        have := aev_sound (H := a.H) hh.1 hl (ns_of ha hctx) chkFuel e v hv
        rw [hE] at hr
        exact retOK_sound hr this _ _ _
      · cases h
  | .seq p q, A, o, h, Γ, Θ => by
      simp only [chk] at h
      split at h
      · cases h
      · rename_i op hp
        have ihp := chk_sound ha hE hT hsg hcE hWS p A op hp Γ Θ
        split at h
        · rename_i hn
          simp only [Option.some.injEq] at h; subst h
          refine hoareG_seq ihp (fun r t _ _ _ hR => hR) ?_
          intro t _ hR
          obtain ⟨B, -, -, hB, -⟩ := hR
          rw [hn] at hB; cases hB
        · rename_i A' hn
          split at h
          · cases h
          · rename_i oq hq
            simp only [Option.some.injEq] at h; subst h
            refine hoareG_seq ihp ?_ ?_
            · intro r t _ hr _ hR
              rcases r with _ | (_ | _ | _ | _ | _ | _ | _)
              · exact absurd rfl hr
              all_goals first
                | (obtain ⟨B, Γ', Θ', hB, hl, hig⟩ := hR
                   obtain ⟨B', Θ'', hj, hpre, hig'⟩ := joinO_left (o' := _) hB hig
                   exact ⟨B', Γ', Θ'', hj, ⟨hl.1, hl.2.trans hpre⟩, hig'⟩)
                | exact hR
            · intro t ht hR hg
              obtain ⟨B, Γ', Θ', hB, hl, hig⟩ := hR
              rw [hn] at hB; cases hB
              have H := chk_sound ha hE hT hsg hcE hWS q A' oq hq Γ' Θ' t ht hig hg
              generalize (evaluateHOLFiniteState t q).1 = r at H ⊢
              generalize (evaluateHOLFiniteState t q).2 = u at H ⊢
              rcases r with _ | (_ | _ | _ | _ | _ | _ | _)
              all_goals first
                | (obtain ⟨B2, Γ'', Θ'', hB2, hl2, hig2⟩ := H
                   exact ⟨B2, Γ'', Θ'', hB2, later_trans hl hl2, hig2⟩)
                | (obtain ⟨B2, Γ'', Θ'', hB2, hl2, hig2⟩ := H
                   obtain ⟨B', Θ3, hj, hpre, hig'⟩ := joinO_right (o := _) hB2 hig2
                   exact ⟨B', Γ'', Θ3, hj, later_trans hl ⟨hl2.1, hl2.2.trans hpre⟩, hig'⟩)
                | (obtain ⟨Γ'', p'', he, hh', hr'⟩ := H
                   exact ⟨Γ'', p'', ext_trans hl.1 he, hh', hr'⟩)
                | exact abn_ext (fun he => ext_trans hl.1 he) H
  | .ite c p q, A, o, h, Γ, Θ => by
      simp only [chk] at h
      split at h
      · rename_i w hw
        rw [hE] at hw
        split at h
        · rename_i h0 _
          subst h0
          refine hoareG_ite ?_ ?_
          · intro s hs ⟨hig, w', hev, hne⟩ _
            exfalso
            obtain ⟨p', hh, -, hl⟩ := hig
            have := aev_sound (H := a.H) hh.1 hl (ns_of ha hs) chkFuel c _ hev
            rw [hw] at this
            obtain ⟨x, hx, hxx⟩ := this
            simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hx
            exact hne (hx.trans hxx)
          · exact hoareG_conseq (chk_sound ha hE hT hsg hcE hWS q A o h Γ Θ) (fun s _ hs => hs.1)
              (fun r t _ _ H => H)
        · rename_i h0 _
          refine hoareG_ite ?_ ?_
          · exact hoareG_conseq (chk_sound ha hE hT hsg hcE hWS p A o h Γ Θ) (fun s _ hs => hs.1)
              (fun r t _ _ H => H)
          · intro s hs ⟨hig, hev⟩ _
            exfalso
            obtain ⟨p', hh, -, hl⟩ := hig
            have := aev_sound (H := a.H) hh.1 hl (ns_of ha hs) chkFuel c _ hev
            rw [hw] at this
            obtain ⟨x, hx, hxx⟩ := this
            simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hx
            exact h0 (hx.trans hxx).symm
      split at h
      · rename_i op oq hp hq
        simp only [Option.some.injEq] at h; subst h
        refine hoareG_ite ?_ ?_
        · exact hoareG_conseq (chk_sound ha hE hT hsg hcE hWS p A op hp Γ Θ) (fun s _ hs => hs.1)
            (fun r t _ _ H => spost_join_left H)
        · exact hoareG_conseq (chk_sound ha hE hT hsg hcE hWS q A oq hq Γ Θ) (fun s _ hs => hs.1)
            (fun r t _ _ H => spost_join_right H)
      · cases h
  | .dec x sh e body, A, o, h, Γ, Θ => by
      simp only [chk] at h
      split at h
      · cases h
      · rename_i ob hb
        simp only [Option.some.injEq] at h; subst h
        refine hoareG_dec fun s hctx hs v hv hsh => ?_
        obtain ⟨p, hh, ht, hl⟩ := hs
        have hav := aev_sound (H := a.H) hh.1 hl (ns_of ha hctx) chkFuel e v hv
        rw [← hE] at hav
        generalize aev E.C A chkFuel e = av at hav hb
        -- the bound abstraction is sound
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
        have H := chk_sound ha hE hT hsg hcE hWS body _ ob hb Γ Θ _ htc hig1 hgood
        generalize hR : (evaluateHOLFiniteState (setVarHOLFinite x v s) body).1 = r at H ⊢
        generalize hU : (evaluateHOLFiniteState (setVarHOLFinite x v s) body).2 = u at H ⊢
        rcases r with _ | (_ | _ | _ | _ | _ | _ | _)
        all_goals first
          | (obtain ⟨B, Γ', Θ', hB, hlat, ⟨p', hh', ht', hl'⟩⟩ := H
             refine ⟨⟨restL x (A.L.lookup x) B.L, B.T⟩, Γ', Θ', by rw [hB]; rfl, hlat, p',
               heap_of_locals ha.hH _ hh', ht', ?_⟩
             exact locals_restore hlat hl hl' x)
          | (obtain ⟨Γ', p', he, hh', hr'⟩ := H
             exact ⟨Γ', p', he, heap_of_locals ha.hH _ hh', hr'⟩)
          | (rcases H with hab | ⟨Γ', p', he, hh'⟩
             · exact Or.inl hab
             · exact Or.inr ⟨Γ', p', he, heap_of_locals ha.hH _ hh'⟩)
  | .assign k x e, A, o, h, Γ, Θ => by
      cases k with
      | global =>
          simp only [chk] at h
          split at h
          · rename_i hok
            simp only [Option.some.injEq] at h; subst h
            exact asgG_post ha hE hok _ Γ Θ
          · cases h
      | «local» =>
          simp only [chk, Option.some.injEq] at h; subst h
          refine hoareG_assign fun s hctx hs v hv hval => ?_
          obtain ⟨p, hh, ht, hl⟩ := hs
          have hav := aev_sound (H := a.H) hh.1 hl (ns_of ha hctx) chkFuel e v hv
          rw [hE]
          have hkeep : VOk Γ Θ (keepAV A x (aev a.C A chkFuel e)) v := by
            unfold keepAV
            split
            · rename_i n heq hx
              obtain ⟨u, hu, hok⟩ := hl x _ hx
              have hsh : shapeOfHOLExact v = shapeOfHOLExact u := by
                simp only [isValidValueHOLFinite, lookupKvarHOLFinite] at hval
                rw [hu] at hval
                exact (shapeEqHOL_eq_true _ _).mp hval
              show shW (shapeOfHOLExact v) = some n
              rw [hsh]; exact hok
            · exact hav
          exact ⟨_, Γ, Θ, rfl, later_refl Γ Θ, ig_set ha.hH ⟨p, hh, ht, hl⟩ hkeep⟩
  | .store ea ee, A, o, h, Γ, Θ => by
      simp only [chk] at h
      split at h
      · rename_i hst
        simp only [Option.some.injEq] at h; subst h
        exact store_post ha hE hst _ Γ Θ
      · cases h
  | .primitive x _ _, A, o, h, Γ, Θ => by
      simp only [chk, Option.some.injEq] at h; subst h
      exact prim_post ha _ Γ Θ
  | .store32 ea _, A, o, h, Γ, Θ => by
      simp only [chk] at h
      split at h
      · rename_i hc
        simp only [Option.some.injEq] at h; subst h
        exact store32_post ha hE hc _ Γ Θ
      · cases h
  | .storeByte ea _, A, o, h, Γ, Θ => by
      simp only [chk] at h
      split at h
      · rename_i hc
        simp only [Option.some.injEq] at h; subst h
        exact storeB_post ha hE hc _ Γ Θ
      · cases h
  | .while c body, A, o, h, Γ, Θ => by
      simp only [chk] at h
      split at h
      · rename_i r hu
        simp only [Option.some.injEq] at h; subst h
        rw [hE] at hu
        exact unrollW_post ha hu
          (fun I o1 h1 Γ Θ => chk_sound ha hE hT hsg hcE hWS body I o1 h1 Γ Θ) Γ Θ
      split at h
      · cases h
      · rename_i o1 h1
        split at h
        · rename_i hs1 _
          simp only [Option.some.injEq] at h; subst h
          exact while_post ha hs1 (fun Γ Θ => chk_sound ha hE hT hsg hcE hWS body A o1 h1 Γ Θ)
            (fun Γ Θ s hs => ⟨Θ, List.prefix_refl _, hs⟩) Γ Θ
        · split at h
          · cases h
          · rename_i o2 h2
            split at h
            · rename_i hs2 _
              simp only [Option.some.injEq] at h; subst h
              exact while_post ha hs2 (fun Γ Θ => chk_sound ha hE hT hsg hcE hWS body _ o2 h2 Γ Θ)
                (fun Γ Θ s hs => ig_wjoin_left hs) Γ Θ
            · split at h
              · cases h
              · rename_i o3 h3
                split at h
                · rename_i hs3 _
                  simp only [Option.some.injEq] at h; subst h
                  refine while_post ha hs3 (fun Γ Θ => chk_sound ha hE hT hsg hcE hWS body _ o3 h3 Γ Θ)
                    (fun Γ Θ s hs => ?_) Γ Θ
                  obtain ⟨Θ1, hp1, hig1⟩ := ig_wjoin_left (o := o1) hs
                  obtain ⟨Θ2, hp2, hig2⟩ := ig_wjoin_left (o := o2) hig1
                  exact ⟨Θ2, hp1.trans hp2, hig2⟩
                · cases h
  | .call none f args, A, o, h, Γ, Θ => by
      simp only [chk] at h
      split at h
      · rename_i sg hfs
        split at h
        · rename_i himp
          simp only [Option.some.injEq] at h; subst h
          exact tail_post ha hE hT hsg hcE hfs himp Γ Θ
        · cases h
      · cases h
  | .call (some (tgt, some (eid, hv, hp))) f args, A, o, h, Γ, Θ => by
      simp only [chk] at h
      split at h
      · cases h
      rename_i heid
      have heid' : eid ≠ trapErr := fun he => by rw [he] at heid; simp at heid
      split at h
      · rename_i sg hfs
        split at h
        · rename_i B oh htg hoh
          simp only [Option.some.injEq] at h; subst h
          exact callH_post ha hE hT hsg hcE hfs htg
            (fun Γ' Θ' => chk_sound ha hE hT hsg hcE hWS hp _ oh hoh Γ' Θ') heid' Γ Θ
        · cases h
      · cases h
  | .call (some (some (.global, g), none)) f args, A, o, h, Γ, Θ => by
      simp only [chk] at h
      split at h
      · rename_i sg hfs
        split at h
        · rename_i hok
          simp only [Option.some.injEq] at h; subst h
          exact callG_post ha hE hT hsg hcE hfs hok _ Γ Θ
        · cases h
      · cases h
  | .call (some (none, none)) f args, A, o, h, Γ, Θ => by
      simp only [chk] at h
      split at h
      · -- a release
        rename_i rg k hrg hargs
        split at h
        · rename_i rg' hk
          split at h
          · rename_i hrr _
            subst hrr
            simp only [Option.some.injEq] at h; subst h
            obtain ⟨e, rfl, he⟩ := List.map_eq_singleton_iff.mp hargs
            exact release_post ha hWS hE hrg he hk _ Γ Θ
          · cases h
        · cases h
      · split at h
        · rename_i sg hfs
          simp only [Option.some.injEq] at h; subst h
          exact callD_post ha hE hT hsg hcE hfs _ Γ Θ
        · cases h
  | .call (some (some (.local, x), none)) f args, A, o, h, Γ, Θ => by
      simp only [chk] at h
      split at h
      · rename_i sg hfs
        simp only [Option.some.injEq] at h; subst h
        exact callA_post ha hE hT hsg hcE hfs _ Γ Θ
      · cases h
  | .decCall x sh f args k, A, o, h, Γ, Θ => by
      simp only [chk] at h
      split at h
      · -- a mark
        rename_i rg hrg
        split at h
        · cases h
        · rename_i ok hk
          simp only [Option.some.injEq] at h; subst h
          exact mark_post ha hWS hrg (fun Γ Θ => chk_sound ha hE hT hsg hcE hWS k _ ok hk Γ Θ) Γ Θ
      split at h
      · rename_i sg hfs
        split at h
        · cases h
        · rename_i ok hk
          simp only [Option.some.injEq] at h; subst h
          obtain ⟨cs, hmem, -, -, -, hcs⟩ := findSig_spec hfs
          have hf := summ_funSpec (hT f sg cs hmem)
          refine hoareG_decCall hf ?_ ?_
          · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee v st hR hst hsh
            obtain ⟨Γ', q', hext, hh', ht', hm, hret⟩ :=
              call_core ha hE hsg hh ht hl hs hfs hvs hcs hcE hR (by simp [Good]) (by simp [Abortive])
            obtain ⟨hlen, hvok⟩ := evs_aev hh.1 hl (ns_of ha hs) _ vs hvs
            have hav := avs_vok (C := a.C) hlen hvok
            rw [← hE] at hav
            have hh2 := heap_congr (s := st) (t := { st with locals := s.locals }) ha.hH
              rfl rfl rfl rfl hh'
            obtain ⟨Θ1, hp1, hig1⟩ := bindRes_sound ha.hH hh2 ht' (locals_ext hext hl)
              (heap_ord hh) hh.2.2.1 hm (hret v rfl) hav hsh x
            intro t htc hstt hgood
            subst hstt
            have H := chk_sound ha hE hT hsg hcE hWS k _ ok hk Γ' Θ1 _ htc hig1 hgood
            have hl0 : Later Γ Θ Γ' Θ1 := ⟨hext, hp1⟩
            generalize (evaluateHOLFiniteState
              (setVarHOLFinite x v { st with locals := s.locals }) k).1 = r at H ⊢
            generalize (evaluateHOLFiniteState
              (setVarHOLFinite x v { st with locals := s.locals }) k).2 = u at H ⊢
            rcases r with _ | (_ | _ | _ | _ | _ | _ | _)
            all_goals first
              | (obtain ⟨B, Γ'', Θ'', hB, hlat, ⟨p', hh2, ht2, hl2⟩⟩ := H
                 refine ⟨⟨restL x (A.L.lookup x) B.L, B.T⟩, Γ'', Θ'', by rw [hB]; rfl,
                   later_trans hl0 hlat, p', heap_of_locals ha.hH _ hh2, ht2, ?_⟩
                 exact locals_restore (later_trans hl0 hlat) hl hl2 x)
              | (obtain ⟨Γ'', p', he, hh2, hr'⟩ := H
                 exact ⟨Γ'', p', ext_trans hext he, heap_of_locals ha.hH _ hh2, hr'⟩)
              | (rcases H with hab | ⟨Γ'', p', he, hh2⟩
                 · exact Or.inl hab
                 · exact Or.inr ⟨Γ'', p', ext_trans hext he, heap_of_locals ha.hH _ hh2⟩)
          · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee r st hR _ habn
            exact call_abn ha hE hsg hh ht hl hs hfs hvs hcs hcE hR habn _ _
      · cases h
  | .extCall _ _ _ _ _, _, _, h, _, _ => by simp [chk] at h
  | .shMemLoad op k x ad, A, o, h, Γ, Θ => by
      cases k with
      | global => simp [chk] at h
      | «local» =>
          simp only [chk, Option.some.injEq] at h; subst h
          refine hoareG_shMemLoad_local (fun s _ hig w f => ?_) (fun s _ hig e => ?_)
          · have h1 := ig_set ha.hH hig (x := x) (av := .top) (v := .val (.word w)) ⟨w, rfl, trivial⟩
            exact ⟨_, Γ, Θ, rfl, later_refl Γ Θ,
              ig_same ha.hH h1 rfl rfl rfl rfl rfl⟩
          · exact Or.inl trivial
  | .shMemStore op ea ev, A, o, h, Γ, Θ => by
      simp only [chk, Option.some.injEq] at h; subst h
      intro s hs hig hg
      obtain ⟨⟨hm, hgl, hl⟩, hr⟩ := AllocImpl.hoareG_shMemStore_same (X := X) (o := op) (a := ea)
        (v := ev) (s0 := s) s hs ⟨rfl, rfl, rfl⟩ hg
      have hd := memaddrs_preserved s (.shMemStore op ea ev)
      have hb := Inv.be_preserved s (.shMemStore op ea ev)
      have hig' := ig_same ha.hH hig hm hgl hl hd hb
      rcases hr with hr | ⟨e, hr⟩
      · rw [hr]
        exact ⟨A, Γ, Θ, rfl, later_refl Γ Θ, hig'⟩
      · rw [hr]
        exact Or.inl trivial

end InitECandidate.Solver.MemSafe
