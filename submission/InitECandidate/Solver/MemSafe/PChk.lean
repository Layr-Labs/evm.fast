import InitECandidate.Solver.MemSafe.Func

/-!
# The local-free checker `pchk` (M1)

`pchk E p` is `chk` with the abstract environment frozen at the empty one (`A0`): no
locals and no temporaries are tracked. It accepts the same statements as `chk` does from
`A0`; stores and calls can still use typed globals and constants. It costs far less to run
by `decide_cbv` on long straight-line bodies (big-number arithmetic), whose locals are all
plain words, so the fold tries it first.

* `pchk_sound`: from `IG a A0 Γ []`, every good result ends in `SPost a E.sg.ret oAll Γ []`.
  Each case is the `chk` rule at `A0` (`chk_sound`, `callD_post`, ...) followed by forgetting
  the output environments (`spost_forget`).
* `summ_of_pchk`: an accepted body gives the frozen `Summ`.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The empty abstract environment. -/
def A0 : AEnv := ⟨[], []⟩

/-- Every exit, with the empty environment. -/
def oAll : AOut := ⟨some A0, some A0, some A0⟩

/-- `chk` without locals. -/
def pchk (E : CEnv) : ProgHOL 64 → Bool
  | .skip => true
  | .annot _ _ => true
  | .tick => true
  | .break => true
  | .continue => true
  | .raise _ _ => true
  | .return e => retOK E.sg.ret (aev E.C A0 chkFuel e)
  | .seq p q => pchk E p && pchk E q
  | .ite _ p q => pchk E p && pchk E q
  | .dec _ _ _ body => pchk E body
  | .assign .local _ _ => true
  | .assign .global g e => gAsgOK E.C g (aev E.C A0 chkFuel e)
  | .primitive _ _ _ => true
  | .storeByte a _ => cellOK E A0 (aev E.C A0 chkFuel a)
  | .store32 a _ => cellOK E A0 (aev E.C A0 chkFuel a)
  | .while _ body => pchk E body
  | .store a e => stOK E A0 a e
  | .call (some (none, none)) f args => (findSig E A0 f (args.map (aev E.C A0 chkFuel))).isSome
  | .call (some (some (.local, _), none)) f args =>
    (findSig E A0 f (args.map (aev E.C A0 chkFuel))).isSome
  | .call (some (some (.global, g), none)) f args =>
    match findSig E A0 f (args.map (aev E.C A0 chkFuel)) with
    | some sg => gAsgOK E.C g (retAV sg .one)
    | none => false
  | .call none f args =>
    match findSig E A0 f (args.map (aev E.C A0 chkFuel)) with
    | some sg => rtsImp (args.map (aev E.C A0 chkFuel)) E.sg.ret sg.ret
    | none => false
  | .call (some (tgt, some (eid, _, hp))) f args =>
    match eid == trapErr with
    | true => false
    | false =>
    match findSig E A0 f (args.map (aev E.C A0 chkFuel)) with
    | some sg => (hTgt E A0 (args.map (aev E.C A0 chkFuel)) sg tgt).isSome && pchk E hp
    | none => false
  | .decCall _ _ f args k => (findSig E A0 f (args.map (aev E.C A0 chkFuel))).isSome && pchk E k
  | _ => false

variable {σ : Type} {X : Ctx 64}

theorem ig_forget {a : Act σ} {A : AEnv} {Γ : Gam} {Θ : List (BitVec 64 × Nat)}
    {s : State σ} (h : IG a A Γ Θ s) : IG a A0 Γ [] s :=
  let ⟨p, hh, _, _⟩ := h
  ⟨p, hh, ⟨rfl, fun k td hk => by simp [A0] at hk⟩, fun x av hx => by simp [A0] at hx⟩

theorem spost_forget {a : Act σ} {rt : List RT} {o : AOut} {Γ : Gam}
    {Θ : List (BitVec 64 × Nat)} {r : Option (PanSemResultExact 64)} {t : State σ}
    (h : SPost a rt o Γ Θ r t) : SPost a rt oAll Γ [] r t := by
  rcases r with _ | (_ | _ | _ | _ | _ | _ | _)
  all_goals first
    | (obtain ⟨B, Γ', Θ', -, hl, hig⟩ := h
       exact ⟨A0, Γ', [], rfl, ⟨hl.1, List.prefix_refl _⟩, ig_forget hig⟩)
    | exact h

theorem ig0_congr {a : Act σ} (hH : HooksLawful a.C a.H) {Γ : Gam} {s t : State σ}
    (hm : t.memory = s.memory) (hg : t.globals = s.globals) (hd : t.memaddrs = s.memaddrs)
    (hb : t.be = s.be) (h : IG a A0 Γ [] s) : IG a A0 Γ [] t :=
  let ⟨p, hh, ht, _⟩ := h
  ⟨p, heap_congr hH hm hg hd hb hh, ht, fun x av hx => by simp [A0] at hx⟩

/-- An `oAll` post survives any change of the locals. -/
theorem spost0_locals {a : Act σ} (hH : HooksLawful a.C a.H) {rt : List RT} {Γ : Gam}
    {r : Option (PanSemResultExact 64)} {t : State σ}
    (l : HolFiniteMapExact MlS (ValueHOL 64)) (h : SPost a rt oAll Γ [] r t) :
    SPost a rt oAll Γ [] r { t with locals := l } := by
  rcases r with _ | (_ | _ | _ | _ | _ | _ | _)
  all_goals first
    | (obtain ⟨B, Γ', Θ', hB, hl, hig⟩ := h
       exact ⟨B, Γ', Θ', hB, hl, by
         cases hB
         have : Θ' = [] := by
           obtain ⟨p, -, ht, -⟩ := hig
           exact List.eq_nil_of_length_eq_zero ht.1
         subst this
         exact ig0_congr (s := t) hH rfl rfl rfl rfl hig⟩)
    | (obtain ⟨Γ', p, he, hh, hr⟩ := h
       exact ⟨Γ', p, he, heap_congr (s := t) hH rfl rfl rfl rfl hh, hr⟩)
    | (rcases h with hab | ⟨Γ', p, he, hh⟩
       · exact Or.inl hab
       · exact Or.inr ⟨Γ', p, he, heap_congr (s := t) hH rfl rfl rfl rfl hh⟩)

/-- `IG` of `A0` forces the empty temporary list. -/
theorem ig0_nil {a : Act σ} {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {s : State σ}
    (h : IG a A0 Γ Θ s) : Θ = [] := by
  obtain ⟨p, -, ht, -⟩ := h
  exact List.eq_nil_of_length_eq_zero ht.1

/-- A rule for `Θ = []` gives the rule for every `Θ`. -/
theorem hoare0_all {a : Act σ} {p : ProgHOL 64} {rt : List RT} {o : AOut}
    (h : ∀ Γ, HoareG σ X (IG a A0 Γ []) p (SPost a rt o Γ [])) :
    ∀ Γ Θ, HoareG σ X (IG a A0 Γ Θ) p (SPost a rt o Γ Θ) := by
  intro Γ Θ s hs hig
  have := ig0_nil hig
  subst this
  exact h Γ s hs hig

/-- A statement accepted by `chk` from `A0`. -/
theorem leaf0 {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C)
    (hT : CTabSound σ X a.Cb a.H E.tab) (hsg : E.sg = a.sg) (hcE : E.caps = a.caps) (hWS : WinSpecs σ X)
    {p : ProgHOL 64} {o : AOut} (h : chk E A0 p = some o) (Γ : Gam) :
    HoareG σ X (IG a A0 Γ []) p (SPost a E.sg.ret oAll Γ []) :=
  hoareG_conseq (chk_sound ha hE hT hsg hcE hWS p A0 o h Γ []) (fun _ _ h => h)
    (fun _ _ _ _ H => spost_forget H)

theorem wjoin0 : wjoin A0 oAll = A0 := rfl

/-- **Soundness of `pchk`.** -/
theorem pchk_sound {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C)
    (hT : CTabSound σ X a.Cb a.H E.tab) (hsg : E.sg = a.sg) (hcE : E.caps = a.caps) (hWS : WinSpecs σ X) :
    ∀ (p : ProgHOL 64), pchk E p = true →
      ∀ Γ, HoareG σ X (IG a A0 Γ []) p (SPost a E.sg.ret oAll Γ [])
  | .skip, _, Γ => leaf0 ha hE hT hsg hcE hWS (rfl : chk E A0 .skip = _) Γ
  | .annot _ _, _, Γ => leaf0 ha hE hT hsg hcE hWS (rfl : chk E A0 (.annot _ _) = _) Γ
  | .tick, _, Γ => leaf0 ha hE hT hsg hcE hWS (rfl : chk E A0 .tick = _) Γ
  | .break, _, Γ => leaf0 ha hE hT hsg hcE hWS (rfl : chk E A0 .break = _) Γ
  | .continue, _, Γ => leaf0 ha hE hT hsg hcE hWS (rfl : chk E A0 .continue = _) Γ
  | .raise _ _, _, Γ => leaf0 ha hE hT hsg hcE hWS (rfl : chk E A0 (.raise _ _) = _) Γ
  | .return e, h, Γ => by
      simp only [pchk] at h
      exact leaf0 ha hE hT hsg hcE hWS (o := .never) (by simp only [chk, h]) Γ
  | .assign k x e, h, Γ => by
      cases k with
      | «local» => exact leaf0 ha hE hT hsg hcE hWS (rfl : chk E A0 (.assign .local x e) = _) Γ
      | global =>
          simp only [pchk] at h
          exact leaf0 ha hE hT hsg hcE hWS (o := .normal A0) (by simp only [chk, h]) Γ
  | .primitive x _ _, _, Γ => leaf0 ha hE hT hsg hcE hWS (rfl : chk E A0 (.primitive x _ _) = _) Γ
  | .storeByte ea _, h, Γ => by
      simp only [pchk] at h
      exact leaf0 ha hE hT hsg hcE hWS (o := .normal A0) (by simp only [chk, h]) Γ
  | .store32 ea _, h, Γ => by
      simp only [pchk] at h
      exact leaf0 ha hE hT hsg hcE hWS (o := .normal A0) (by simp only [chk, h]) Γ
  | .store ea ee, h, Γ => by
      simp only [pchk] at h
      exact leaf0 ha hE hT hsg hcE hWS (o := .normal A0) (by simp only [chk, h]) Γ
  | .call (some (none, none)) f args, h, Γ => by
      simp only [pchk] at h
      obtain ⟨sg, hfs⟩ := Option.isSome_iff_exists.mp h
      exact hoareG_conseq (callD_post (A := A0) ha hE hT hsg hcE hfs _ Γ []) (fun _ _ h => h)
        (fun _ _ _ _ H => spost_forget H)
  | .call (some (some (.local, x), none)) f args, h, Γ => by
      simp only [pchk] at h
      obtain ⟨sg, hfs⟩ := Option.isSome_iff_exists.mp h
      exact leaf0 ha hE hT hsg hcE hWS
        (o := .normal (bindAsg A0 (args.map (aev E.C A0 chkFuel)) sg x)) (by simp only [chk, hfs]) Γ
  | .call (some (some (.global, g), none)) f args, h, Γ => by
      simp only [pchk] at h
      split at h
      · rename_i sg hfs
        exact leaf0 ha hE hT hsg hcE hWS (o := .normal A0) (by simp only [chk, hfs, h]) Γ
      · cases h
  | .call none f args, h, Γ => by
      simp only [pchk] at h
      split at h
      · rename_i sg hfs
        exact leaf0 ha hE hT hsg hcE hWS (o := .never) (by simp only [chk, hfs, h]) Γ
      · cases h
  | .call (some (tgt, some (eid, hv, hp))) f args, h, Γ => by
      simp only [pchk] at h
      split at h
      · cases h
      rename_i heid
      have heid' : eid ≠ trapErr := fun he => by rw [he] at heid; simp at heid
      split at h
      · rename_i sg hfs
        simp only [Bool.and_eq_true] at h
        obtain ⟨hB, hhp⟩ := h
        obtain ⟨B, htg⟩ := Option.isSome_iff_exists.mp hB
        have ih := hoare0_all (pchk_sound ha hE hT hsg hcE hWS hp hhp)
        exact hoareG_conseq (callH_post (A := A0) ha hE hT hsg hcE hfs htg ih heid' Γ [])
          (fun _ _ h => h) (fun _ _ _ _ H => spost_forget H)
      · cases h
  | .seq p q, h, Γ => by
      simp only [pchk, Bool.and_eq_true] at h
      have ihp := pchk_sound ha hE hT hsg hcE hWS p h.1
      have ihq := pchk_sound ha hE hT hsg hcE hWS q h.2
      refine hoareG_seq (ihp Γ) (fun r t _ _ _ H => H) ?_
      intro t ht H hg
      obtain ⟨B, Γ', Θ', hB, hl, hig⟩ := H
      cases hB
      have := ig0_nil hig
      subst this
      exact spost_later hl (ihq Γ' t ht hig hg)
  | .ite c p q, h, Γ => by
      simp only [pchk, Bool.and_eq_true] at h
      refine hoareG_ite ?_ ?_
      · exact hoareG_pre (pchk_sound ha hE hT hsg hcE hWS p h.1 Γ) (fun s _ hs => hs.1)
      · exact hoareG_pre (pchk_sound ha hE hT hsg hcE hWS q h.2 Γ) (fun s _ hs => hs.1)
  | .dec x sh e body, h, Γ => by
      simp only [pchk] at h
      have ih := pchk_sound ha hE hT hsg hcE hWS body h Γ
      refine hoareG_dec fun s _ hs v _ _ => ?_
      intro t htc hst hgood
      subst hst
      have hig : IG a A0 Γ [] (setVarHOLFinite x v s) :=
        ig0_congr (s := s) ha.hH rfl rfl rfl rfl hs
      exact spost0_locals ha.hH _ (ih _ htc hig hgood)
  | .while c body, h, Γ => by
      simp only [pchk] at h
      have ih := hoare0_all (pchk_sound ha hE hT hsg hcE hWS body h)
      exact hoareG_conseq (while_post ha wjoin0 ih (fun Γ Θ s hs => ⟨Θ, List.prefix_refl _, hs⟩)
        Γ []) (fun _ _ h => h) (fun _ _ _ _ H => spost_forget H)
  | .decCall x sh f args k, h, Γ => by
      simp only [pchk, Bool.and_eq_true] at h
      obtain ⟨hf, hk⟩ := h
      obtain ⟨sg, hfs⟩ := Option.isSome_iff_exists.mp hf
      have ih := pchk_sound ha hE hT hsg hcE hWS k hk
      obtain ⟨cs, hmem, -, -, -, hcs⟩ := findSig_spec hfs
      have hfun := summ_funSpec (hT f sg cs hmem)
      refine hoareG_decCall hfun ?_ ?_
      · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee v st hR _ _
        obtain ⟨Γ', q', hext, hh', ht', -⟩ :=
          call_core ha hE hsg hh ht hl hs hfs hvs hcs hcE hR (by simp [Good]) (by simp [Abortive])
        have hig : IG a A0 Γ' [] (setVarHOLFinite x v { st with locals := s.locals }) :=
          ⟨q', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', ht', fun y av hy => by
            simp [A0] at hy⟩
        intro t htc hst hgood
        subst hst
        exact spost0_locals ha.hH _
          (spost_later ⟨hext, List.prefix_refl _⟩ (ih Γ' _ htc hig hgood))
      · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee r st hR _ habn
        exact call_abn ha hE hsg hh ht hl hs hfs hvs hcs hcE hR habn _ _
  | .extCall _ _ _ _ _, h, _ => by simp [pchk] at h
  | .shMemLoad _ _ _ _, h, _ => by simp [pchk] at h
  | .shMemStore _ _ _, h, _ => by simp [pchk] at h

/-- **From a body accepted by `pchk` to its capability summary.** -/
theorem summ_of_pchk {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hWS : WinSpecs σ X)
    (hNS : NullSafe X) {sg : Sig} {cs : List Cap} (hcs : capsOK C sg cs = true)
    {E : CEnv} (hEC : E.C = upg C cs) (hT : CTabSound σ X C H E.tab)
    (hEsg : E.sg = sg) (hEc : E.caps = cs) {f : MlS} {ps : List (MlS × ShapeHOL)}
    {bd : ProgHOL 64} {rsh : ShapeHOL} (hcode : X.code.lookup f = some (ps, bd, rsh))
    (hchk : pchk E bd = true) : CSumm σ X C H f sg cs := by
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs hreq
  obtain ⟨rfl, -, -, -⟩ := lookupCode_gen hcode hl
  obtain ⟨p1, hps, hargs⟩ := hargs
  obtain ⟨ha, hh⟩ := act_entry hH hC hal hAC hNS hcs hG hps hargs hreq
  have hig : IG (actOf C H sg cs vs s Γ p1) A0 Γ [] s := ⟨p1, hh, ⟨rfl, fun k td hk => by
    simp [A0] at hk⟩, fun x av hx => by simp [A0] at hx⟩
  have Hs := pchk_sound (a := actOf C H sg cs vs s Γ p1) ha hEC hT hEsg hEc hWS _ hchk Γ s hs hig
    (by rw [hr]; exact hgood)
  rw [hr, hEsg] at Hs
  have core : ∃ Γ' p', Ext Γ Γ' ∧ Heap (actOf C H sg cs vs s Γ p1) Γ' p'
      (evaluateHOLFiniteState s body).2 ∧
      (∀ v, r = .returned v → RetOK Γ' p1 p' vs sg.ret v) := by
    rcases r with _ | _ | _ | _ | _ | v | ⟨e, v⟩ | e
    all_goals first
      | (obtain ⟨B, Γ', Θ', -, hlat, p', hh', -, -⟩ := Hs
         exact ⟨Γ', p', hlat.1, hh', fun v h => by cases h⟩)
      | (obtain ⟨Γ', p', he, hh', hret⟩ := Hs
         exact ⟨Γ', p', he, hh', fun v' h => by cases h; exact hret⟩)
      | (rcases Hs with hab | ⟨Γ', p', he, hh'⟩
         · exact absurd hab hna
         · exact ⟨Γ', p', he, hh', fun v h => by cases h⟩)
  obtain ⟨Γ', p', hext, hh', hret⟩ := core
  exact ⟨Γ', p1, p', act_exit hcs hps hext hh' hret, trivial⟩

end InitECandidate.Solver.MemSafe
