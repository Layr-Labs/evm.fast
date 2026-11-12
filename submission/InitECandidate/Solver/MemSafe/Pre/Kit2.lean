import InitECandidate.Solver.MemSafe.Pre.Kit

set_option autoImplicit false

/-!
# More rules for `Pre/Kit.lean`

* `seqE`, `evs2`, `evs3`, `toNat_add_ofNat`, `bufOK_bl`, `ovl_bl`: glue;
* argument lemmas of `memcpy` / `memzero` / `u256_to_be32` (arbitrary read-only arguments);
* `et_decCall`: `var x = f(args); k` for a `CSumm` callee;
* `ev_keep`: the `ev[88]` cell (a `prot` cell of the EV object) is unchanged by a tracked run;
* `laPW_back`, `et_logAppend`: the final `log_append(ev, x)` call.
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Pre
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Inc
open InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Glue -/

theorem seqE {P R2 : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {a b : ProgHOL 64} (ha : Hoare σ X P a (fun r t => r = none ∧ R2 t))
    (hb : Hoare σ X R2 b Q) : Hoare σ X P (.seq a b) Q :=
  hoare_seq (R := fun r t => r = none ∧ R2 t) ha (fun _ _ _ hr _ h => absurd h.1 hr)
    (hoare_pre hb (fun _ _ h => h.2))

theorem evs2 {u : State σ} {a b : ExpHOL 64} {vs : List (ValueHOL 64)}
    (h : evs u [a, b] = some vs) :
    ∃ x y, vs = [x, y] ∧ ev u a = some x ∧ ev u b = some y := by
  obtain ⟨x, r1, rfl, hx, hr1⟩ := evs_cons_inv h
  obtain ⟨y, r2, rfl, hy, hr2⟩ := evs_cons_inv hr1
  have hr : r2 = [] := by
    have h0 : evs u ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at hr2; exact (Option.some.inj hr2).symm
  subst hr
  exact ⟨x, y, rfl, hx, hy⟩

theorem evs3 {u : State σ} {a b c : ExpHOL 64} {vs : List (ValueHOL 64)}
    (h : evs u [a, b, c] = some vs) :
    ∃ x y z, vs = [x, y, z] ∧ ev u a = some x ∧ ev u b = some y ∧ ev u c = some z := by
  obtain ⟨x, r1, rfl, hx, hr1⟩ := evs_cons_inv h
  obtain ⟨y, z, rfl, hy, hz⟩ := evs2 hr1
  exact ⟨x, y, z, rfl, hx, hy, hz⟩

theorem toNat_add_ofNat (a : BitVec 64) (k : Nat) (h : a.toNat + k < 2 ^ 64) :
    (a + BitVec.ofNat 64 k).toNat = a.toNat + k := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := k) (by omega),
    Nat.mod_eq_of_lt h]

theorem bufOK_bl {C : Cfg} {p0 p : Ptrs} {Γ : Gam} {bl : List (BitVec 64 × Nat)}
    (hbl : BlkL p0 p Γ bl) {b : BitVec 64 × Nat} (hb : b ∈ bl) {s m : Nat}
    (h1 : b.1.toNat ≤ s) (h2 : s + m ≤ b.1.toNat + b.2) : BufOK C Γ p s m := by
  intro x hx
  obtain ⟨h8, h3, h4⟩ := hx
  have := (hbl b hb).2.2.2 x ⟨h8, by omega, by omega⟩
  exact Or.inr ⟨this.1, this.2.1⟩

theorem ovl_bl {b : BitVec 64 × Nat} {s m : Nat} (h1 : b.1.toNat ≤ s) (h2 : s + m ≤ b.1.toNat + b.2)
    {x : BitVec 64} (h : Overlap s m x) : Overlap b.1.toNat b.2 x := by
  obtain ⟨h8, h3, h4⟩ := h
  exact ⟨h8, by omega, by omega⟩

/-! ## Argument lemmas -/

def sigBe32 : Sig := ⟨[.any, .buf 32], [], [], false⟩

theorem argsOK_mc {C : Cfg} {Γ : Gam} {p : Ptrs} {D N : BitVec 64} {S : ValueHOL 64}
    (h : BufOK C Γ p D.toNat (1 * N.toNat + 0)) :
    ArgsOK C Γ p Helpers.sigMemcpy.params [.val (.word D), S, .val (.word N)] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | _ | i <;> simp [Helpers.sigMemcpy] at hpt hw <;> subst hpt <;> subst hw
  · exact ⟨D, N, rfl, rfl, h⟩
  · trivial
  · trivial

theorem argCells_mc {D N x : BitVec 64} {S : ValueHOL 64}
    (h : ArgCells Helpers.sigMemcpy.params [.val (.word D), S, .val (.word N)] x) :
    Overlap D.toNat (1 * N.toNat + 0) x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hn, -⟩ | ⟨j, c, d, z, hj, hz, ho⟩
  · rcases i with _ | _ | _ | i <;> simp [Helpers.sigMemcpy] at hn
  · rcases i with _ | _ | _ | i <;> simp [Helpers.sigMemcpy] at hj
    obtain ⟨rfl, rfl, rfl⟩ := hj
    simp [argW, wordOf] at hw hz
    subst hw; subst hz
    exact ho

theorem argsOK_mz {C : Cfg} {Γ : Gam} {p : Ptrs} {D N : BitVec 64}
    (h : BufOK C Γ p D.toNat (1 * N.toNat + 0)) :
    ArgsOK C Γ p Helpers.sigMemzero.params [.val (.word D), .val (.word N)] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | i <;> simp [Helpers.sigMemzero] at hpt hw <;> subst hpt <;> subst hw
  · exact ⟨D, N, rfl, rfl, h⟩
  · trivial

theorem argCells_mz {D N x : BitVec 64}
    (h : ArgCells Helpers.sigMemzero.params [.val (.word D), .val (.word N)] x) :
    Overlap D.toNat (1 * N.toNat + 0) x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hn, -⟩ | ⟨j, c, d, z, hj, hz, ho⟩
  · rcases i with _ | _ | i <;> simp [Helpers.sigMemzero] at hn
  · rcases i with _ | _ | i <;> simp [Helpers.sigMemzero] at hj
    obtain ⟨rfl, rfl, rfl⟩ := hj
    simp [argW, wordOf] at hw hz
    subst hw; subst hz
    exact ho

theorem argsOK_be32 {C : Cfg} {Γ : Gam} {p : Ptrs} {D : BitVec 64} {A : ValueHOL 64}
    (h : BufOK C Γ p D.toNat 32) : ArgsOK C Γ p sigBe32.params [A, .val (.word D)] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | i <;> simp [sigBe32] at hpt hw <;> subst hpt <;> subst hw
  · trivial
  · exact ⟨D, rfl, h⟩

theorem argCells_be32 {D x : BitVec 64} {A : ValueHOL 64}
    (h : ArgCells sigBe32.params [A, .val (.word D)] x) : Overlap D.toNat 32 x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hn, ho⟩ | ⟨j, c, d, z, hj, hz, ho⟩
  · rcases i with _ | _ | i <;> simp [sigBe32] at hn
    obtain rfl := hn
    simp [argW, wordOf] at hw
    subst hw
    exact ho
  · rcases i with _ | _ | i <;> simp [sigBe32] at hj

/-! ## `var x = f(args); k` -/

section rules
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

theorem et_decCall (hH : HooksLawful guestC H) {f : MlS} {args : List (ExpHOL 64)} {sg' : Sig}
    (hf : CSumm σ X guestC H f sg' []) (hgw : ∀ g ∈ guestC.PG, g ∉ sg'.gw)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : ∀ r (t : State σ) L, Q r t → Q r { t with locals := L })
    {bl : List (BitVec 64 × Nat)} {L : HolFiniteMapExact MlS (ValueHOL 64) → Prop}
    {L' : ValueHOL 64 → HolFiniteMapExact MlS (ValueHOL 64) → Prop} {x : MlS} {k : ProgHOL 64}
    (hargs : ∀ u : State σ, L u.locals → ∀ vs, evs u args = some vs →
      (∀ Γ p, BlkL p0 p Γ bl → ArgsOK guestC Γ p sg'.params vs) ∧
      (∀ y, ArgCells sg'.params vs y → ∃ b ∈ bl, Overlap b.1.toNat b.2 y))
    (hL' : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals →
      L' v (setVarHOLFinite x v { st with locals := s.locals }).locals)
    (hk : ∀ v, Hoare σ X (fun t => ETk H Γ0 s0 p0 bl t ∧ L' v t.locals) k Q) :
    Hoare σ X (fun u => ETk H Γ0 s0 p0 bl u ∧ L u.locals) (.decCall x .one f args k) Q := by
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (summ_funSpec hf) (Helpers.funSpec_dom _)) hQ ?_
  intro s hs ⟨⟨Γ, p, hT, hp, hbl⟩, hL⟩ vs hvs callee v st ⟨hS, hd, hbe⟩ _ _
  obtain ⟨hA, hC⟩ := hargs s hL vs hvs
  have hG := Struct.trk_G hT
  obtain ⟨q, hq, hordq, hLay, -⟩ := id hG
  rw [hp] at hq
  cases hq
  have hGe : G guestC H Γ (callEntryStateHOLFinite s callee) :=
    Struct.G_congr (s := s) hH rfl rfl rfl rfl hG
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p :=
    (Frames.ptrsOf_congr rfl).trans hp
  obtain ⟨Γ', q1, q2, hcore, -⟩ := hS (by simp [Good]) (by simp [Abortive]) Γ hGe
    ⟨p, hpe, hA Γ p hbl⟩ (fun c hc => by cases hc)
  have hq1 : p = q1 := Option.some.inj (hpe.symm.trans hcore.1)
  subst hq1
  have hT' := Struct.trk_call hT hord0 hL0 rfl rfl hcore hgw
    (fun a ha => Or.inr (Or.inl (by
      obtain ⟨b, hb, ho⟩ := hC a ha
      exact ((hbl b hb).2.2.2 a ho).2.2)))
    (fun a hpc hcap => by obtain ⟨c, hc, -⟩ := hcap; exact absurd hc (by simp)) hd hbe
  obtain ⟨hp1, hp2, hmo, hex, hnf, hG', -⟩ := hcore
  obtain ⟨q', hq', hord', -⟩ := hG'
  rw [hp2] at hq'
  cases hq'
  refine hoare_pre (hk v) (fun t _ ht => ?_)
  subst ht
  exact ⟨⟨Γ', q2, Struct.trk_congr hH hT' rfl rfl rfl rfl, (Frames.ptrsOf_congr rfl).trans hp2,
    blkL_after hordq hord' hmo hnf hbl⟩, hL' s st v hL⟩

/-! ## The `ev[88]` cell -/

theorem ev_keep (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) {Γ : Gam} {t : State σ}
    (hT : Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ t) {e0 : Obj} (he0 : e0 ∈ Γ0)
    (het : e0.ty = tEV) :
    rd t.memory (e0.base + BitVec.ofNat 64 88) = rd s0.memory (e0.base + BitVec.ofNat 64 88) := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod, hpg, -, -⟩ := hT
  have hk11 : e0.HasSlot 11 := by
    have h := (hL0.1 e0 he0).2.2.2.1
    rw [het, ev_minSz] at h
    unfold Obj.HasSlot; omega
  have hcell : e0.base + BitVec.ofNat 64 88 = e0.cell 11 := rfl
  rw [hcell]
  have hslot : (guestC.ty tEV).slot 11 = .prot := ev_prot 11 (by simp)
  obtain ⟨-, h1, h2⟩ := HtabEntries.cell_lay hord0 hL0 he0 hk11
  have hal : p0.Allocated (e0.cell 11).toNat := Helpers.allocated_of_inObj hL0 ⟨e0, he0, h1, h2⟩
  have key : t.memory (e0.cell 11) = s0.memory (e0.cell 11) := by
    refine hmod _ fun hh => ?_
    rcases hh with ⟨o', ho', k', hk', hnp, he⟩ | hna | hf
    · obtain ⟨rfl, rfl⟩ := cell_inj hord0 hL0 he0 ho' hk11 hk' he
      rw [het] at hnp
      exact hnp hslot
    · exact hna hal
    · exact hf.elim
  unfold rd
  rw [key]

/-! ## The final `log_append(ev, x)` -/

theorem laPW_back (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) {Γ : Gam} {t : State σ}
    {PW : BitVec 64 → Prop} (hT : Struct.Trk guestC H Γ0 s0 p0 PW Γ t) {a : BitVec 64}
    (h : LaPW Γ a) : PWl Γ0 p0 a := by
  obtain ⟨q, -, hord, hLay, -⟩ := Struct.trk_G hT
  rcases h with ⟨Lh, hLh, hLt, hc⟩ | ⟨y, hy, hyt, k, hk, rfl⟩
  · have hs := lst_size (gamOK_of_layout hLay) hLh hLt
    have key : ∀ k, k < 3 → a = Lh.cell k → PWl Γ0 p0 a := by
      intro k hk he
      subst he
      have hHs : Lh.HasSlot k := by unfold Obj.HasSlot; omega
      rcases back_cell hord0 hL0 hT hLh hHs with ⟨o0, ho0, hb0, ht0, hk0, hce⟩ | hna
      · left
        have hot : o0.ty ∈ lstTys := ht0 ▸ hLt
        refine ⟨⟨o0, ho0, k, hk0, ?_, hce⟩, Or.inl ⟨o0, ho0, hot, ?_⟩⟩
        · exact lst_prot _ hot k
        · unfold LCell
          rw [hce]
          interval_cases k <;> simp [Obj.cell]
      · right; exact hna
    rcases hc with h | h | h
    · exact key 0 (by omega) h
    · exact key 1 (by omega) h
    · exact key 2 (by omega) h
  · rcases back_cell hord0 hL0 hT hy hk with ⟨o0, ho0, hb0, ht0, hk0, hce⟩ | hna
    · exact Or.inl ⟨⟨o0, ho0, k, hk0, lstA_prot (ht0 ▸ hyt) k, hce⟩,
        Or.inr ⟨o0, ho0, ht0 ▸ hyt, k, hk0, hce⟩⟩
    · exact Or.inr hna

/-- A tracking with a smaller footprint is a tracking with a larger one. -/
theorem trk_pw_mono {PW PW' : BitVec 64 → Prop} (hPW : ∀ a, PW a → PW' a) {Γ : Gam}
    {t : State σ} (h : Struct.Trk guestC H Γ0 s0 p0 PW Γ t) :
    Struct.Trk guestC H Γ0 s0 p0 PW' Γ t := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod, hpg, hd, hbe⟩ := h
  exact ⟨p, hp, hm, hx, hnf, hG, hmod.mono (fun a ha => by
    rcases ha with h | h | h
    exacts [Or.inl h, Or.inr (Or.inl h), Or.inr (Or.inr (hPW a h))]), hpg, hd, hbe⟩

/-- A tracking with no protected writes keeps every `prot` cell of the entry typing. -/
theorem trk_protKeep (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) {Γ : Gam} {t : State σ}
    (hT : Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ t) :
    ∀ a, ProtCell guestC Γ0 a → t.memory a = s0.memory a := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod, hpg, -, -⟩ := hT
  rintro a ⟨o, ho, k, hk, hpr, rfl⟩
  refine hmod _ fun hh => ?_
  rcases hh with ⟨o', ho', k', hk', hnp, he⟩ | hna | hf
  · obtain ⟨rfl, rfl⟩ := cell_inj hord0 hL0 ho ho' hk hk' he
    exact hnp hpr
  · exact hna (Helpers.allocated_of_inObj hL0 (cell_in hord0 hL0 ho hk))
  · exact hf.elim

/-- **A 40-byte block of the temporaries becomes a frozen object of the typing**, a log record in
range. `hFw`: the hook of a frozen object is trivial. -/
theorem trk_adoptLog (hM : HooksMono guestC H) (hFw : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tLOG → H.wf Γ s o)
    {p : Ptrs} {Γ : Gam} {PW : BitVec 64 → Prop} {u : State σ}
    {bl : List (BitVec 64 × Nat)} {lg : BitVec 64}
    (hT : Struct.Trk guestC H Γ0 s0 p0 PW Γ u) (hp : ptrsOf u = some p)
    (hord : p.Ordered) (hbl : BlkL p0 p Γ bl) (hlg : (lg, 40) ∈ bl) :
    Struct.Trk guestC H Γ0 s0 p0 PW (Γ ++ [⟨lg, tLOG, 40⟩]) u ∧
      LogRec (Γ ++ [⟨lg, tLOG, 40⟩]) p.hp lg := by
  obtain ⟨h8, ⟨hh1, hh2⟩, hbd, hy⟩ := hbl _ hlg
  dsimp only at h8 hh1 hh2 hbd hy
  have hhe : heapEnd < 2 ^ 64 := by decide
  have hpo : p.hp ≤ heapEnd := hord.2.1
  -- a word-aligned cell of the block
  have hw : ∀ a : BitVec 64, lg.toNat ≤ a.toNat → a.toNat < lg.toNat + 40 →
      ¬ InObj Γ (a.toNat / 8 * 8) ∧ ¬ p0.Allocated (a.toNat / 8 * 8) := by
    intro a h1 h2
    have e : (BitVec.ofNat 64 (a.toNat / 8 * 8)).toNat = a.toNat / 8 * 8 := by
      rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
    have h3 := hy (BitVec.ofNat 64 (a.toNat / 8 * 8)) (by
      refine ⟨?_, ?_, ?_⟩ <;> rw [e] <;> omega)
    rw [e] at h3
    exact ⟨h3.1, h3.2.2⟩
  have hT' : Struct.Trk guestC H Γ0 s0 p0 PW (Γ ++ [⟨lg, tLOG, 40⟩]) u := by
    obtain ⟨q, hq, -, hLay, -⟩ := id (Struct.trk_G hT)
    refine trk_addObjLL hM hT hp h8 (by show (40 : Nat) % 8 = 0; decide) (by show 0 < 40; decide)
      (by rw [tlog_minSz]; show 0 ≤ 40; omega) ?_ ?_ ?_ tlog_prot tlog_untagged (fun _ _ => hFw _ _ _ rfl)
    · rw [tlog_region]; exact ⟨hh1, hh2⟩
    · intro a h1 h2
      have h1' : lg.toNat ≤ a.toNat := h1
      have h2' : a.toNat < lg.toNat + 40 := h2
      obtain ⟨-, hna⟩ := hw a h1' h2'
      left
      refine ⟨?_, by omega⟩
      by_contra hlt
      apply hna
      exact Or.inl ⟨by omega, by omega⟩
    · rintro a ⟨h1, h2⟩ ⟨o, ho, hlo, hhi⟩
      have h1' : lg.toNat ≤ a.toNat := h1
      have h2' : a.toNat < lg.toNat + 40 := h2
      obtain ⟨hni, -⟩ := hw a h1' h2'
      obtain ⟨hl8, hs8, -, -, -⟩ := hLay.1 o ho
      apply hni
      refine ⟨o, ho, ?_, ?_⟩
      · unfold Obj.lo at hlo hl8 ⊢; omega
      · unfold Obj.hi Obj.lo at *; omega
  exact ⟨hT', hh1, hh2, _, List.mem_append_right _ (List.mem_singleton.mpr rfl), rfl, rfl, le_rfl⟩

theorem rd_supd_self (m : Mem) (a w : BitVec 64) : rd (Struct.upd m a w) a = w := by
  simp [rd, Struct.upd]

theorem rd_supd_ne (m : Mem) {a b : BitVec 64} (w : BitVec 64) (h : b ≠ a) :
    rd (Struct.upd m a w) b = rd m b := by
  simp [rd, Struct.upd, h]

/-- `et_store` with a memory predicate. -/
theorem et_storeM (hH : HooksLawful guestC H) {bl : List (BitVec 64 × Nat)}
    {L : HolFiniteMapExact MlS (ValueHOL 64) → Prop} {ea ev' : ExpHOL 64} {A : BitVec 64}
    {V : State σ → BitVec 64} {M M' : Mem → Prop}
    (hA : ∀ u : State σ, L u.locals → ev u ea = some (.val (.word A)))
    (hV : ∀ u : State σ, ETk H Γ0 s0 p0 bl u → L u.locals → ev u ev' = some (.val (.word (V u))))
    (hIn : ∃ b ∈ bl, Overlap b.1.toNat b.2 A)
    (hMM : ∀ u : State σ, M u.memory → M' (Struct.upd u.memory A (V u))) :
    Hoare σ X (fun u => (ETk H Γ0 s0 p0 bl u ∧ L u.locals) ∧ M u.memory) (.store ea ev')
      (fun r t => r = none ∧ (ETk H Γ0 s0 p0 bl t ∧ L t.locals) ∧ M' t.memory) := by
  refine Spec.Inv.hoare_store_w (fun _ => A) V ?_ ?_ ?_
  · intro u _ ⟨⟨_, hL⟩, _⟩ w hw
    rw [hA u hL] at hw
    have h := Option.some.inj hw
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at h
    exact h.symm
  · intro u _ ⟨⟨hE, hL⟩, _⟩ v hv
    rw [hV u hE hL] at hv
    exact (Option.some.inj hv).symm
  · intro u _ ⟨⟨⟨Γ, p, hT, hp, hbl⟩, hL⟩, hM⟩
    obtain ⟨b, hb, ho⟩ := hIn
    obtain ⟨h1, h2, h3⟩ := (hbl b hb).2.2.2 A ho
    exact ⟨rfl, ⟨⟨Γ, p, trk_tmpI hH hT h1 h3 (V u), hp, hbl⟩, hL⟩, hMM u hM⟩

/-- `et_call` with a memory predicate that only depends on cells `K` of the blocks, which the
buffer arguments miss. -/
theorem et_callM (hH : HooksLawful guestC H) {f : MlS} {args : List (ExpHOL 64)} {sg' : Sig}
    (hf : CSumm σ X guestC H f sg' []) (hgw : ∀ g ∈ guestC.PG, g ∉ sg'.gw)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) {bl : List (BitVec 64 × Nat)}
    {L : HolFiniteMapExact MlS (ValueHOL 64) → Prop} {M : Mem → Prop} {K : BitVec 64 → Prop}
    (hMk : ∀ m m' : Mem, M m → (∀ a, K a → m' a = m a) → M m')
    (hKb : ∀ a, K a → ∃ b ∈ bl, Overlap b.1.toNat b.2 a)
    (hargs : ∀ u : State σ, L u.locals → ∀ vs, evs u args = some vs →
      (∀ Γ p, BlkL p0 p Γ bl → ArgsOK guestC Γ p sg'.params vs) ∧
      (∀ x, ArgCells sg'.params vs x → (∃ b ∈ bl, Overlap b.1.toNat b.2 x) ∧ ¬ K x)) :
    Hoare σ X (fun u => (ETk H Γ0 s0 p0 bl u ∧ L u.locals) ∧ M u.memory) (callD f args)
      (fun r t => r = none ∧ (ETk H Γ0 s0 p0 bl t ∧ L t.locals) ∧ M t.memory) := by
  refine hoare_callD (FunSpec.and (summ_funSpec hf) (Helpers.funSpec_dom _)) ?_
  intro s hs ⟨⟨⟨Γ, p, hT, hp, hbl⟩, hL⟩, hMs⟩ vs hvs callee v st ⟨hS, hd, hbe⟩ _
  obtain ⟨hA, hC⟩ := hargs s hL vs hvs
  have hG := Struct.trk_G hT
  obtain ⟨q, hq, hordq, hLay, -⟩ := id hG
  rw [hp] at hq
  cases hq
  have hGe : G guestC H Γ (callEntryStateHOLFinite s callee) :=
    Struct.G_congr (s := s) hH rfl rfl rfl rfl hG
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p :=
    (Frames.ptrsOf_congr rfl).trans hp
  obtain ⟨Γ', q1, q2, hcore, -⟩ := hS (by simp [Good]) (by simp [Abortive]) Γ hGe
    ⟨p, hpe, hA Γ p hbl⟩ (fun c hc => by cases hc)
  have hq1 : p = q1 := Option.some.inj (hpe.symm.trans hcore.1)
  subst hq1
  have hT' := Struct.trk_call hT hord0 hL0 rfl rfl hcore hgw
    (fun a ha => Or.inr (Or.inl (by
      obtain ⟨b, hb, ho⟩ := (hC a ha).1
      exact ((hbl b hb).2.2.2 a ho).2.2)))
    (fun a hpc hcap => by obtain ⟨c, hc, -⟩ := hcap; exact absurd hc (by simp)) hd hbe
  obtain ⟨hp1, hp2, hmo, hex, hnf, hG', hmod, -⟩ := hcore
  have hkeep : ∀ a, K a → st.memory a = s.memory a := by
    intro a hK
    refine hmod a fun hw => ?_
    obtain ⟨b, hb, ho⟩ := hKb a hK
    obtain ⟨hni, hal, -⟩ := (hbl b hb).2.2.2 a ho
    rcases hw with hw | hw | hw | hw
    · obtain ⟨o, ho', k, hk, -, rfl⟩ := hw
      exact hni (cell_in hordq hLay ho' hk)
    · exact (hC a hw).2 hK
    · exact hw hal
    · obtain ⟨⟨o, ho', k, hk, -, rfl⟩, -⟩ := hw
      exact hni (cell_in hordq hLay ho' hk)
  obtain ⟨q', hq', hord', -⟩ := hG'
  rw [hp2] at hq'
  cases hq'
  exact ⟨rfl, ⟨⟨Γ', q2, Struct.trk_congr hH hT' rfl rfl rfl rfl, hp2,
    blkL_after hordq hord' hmo hnf hbl⟩, hL⟩, hMk _ _ hMs hkeep⟩

/-- `et_alloc` with a memory predicate; the new block misses the cells `K` of the old blocks. -/
theorem et_allocM (hF : FoldOK σ X guestC H)
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : ∀ r (t : State σ) L, Q r t → Q r { t with locals := L })
    {bl : List (BitVec 64 × Nat)} {L : HolFiniteMapExact MlS (ValueHOL 64) → Prop}
    {L' : BitVec 64 → HolFiniteMapExact MlS (ValueHOL 64) → Prop} {M : Mem → Prop}
    {K : BitVec 64 → Prop} (hKb : ∀ a, K a → ∃ b ∈ bl, Overlap b.1.toNat b.2 a)
    {x : MlS} (n : Nat) (hn : n < 2 ^ 32) {k : ProgHOL 64}
    (hL' : ∀ (s st : State σ) (Ar : BitVec 64), L s.locals →
      L' Ar (setVarHOLFinite x (.val (.word Ar)) { st with locals := s.locals }).locals)
    (hk : ∀ Ar : BitVec 64, Ar.toNat % 8 = 0 → heapBase ≤ Ar.toNat → Ar.toNat + n ≤ heapEnd →
      (∀ a, K a → ¬ Overlap Ar.toNat n a) →
      Hoare σ X (fun t => (ETk H Γ0 s0 p0 ((Ar, n) :: bl) t ∧ L' Ar t.locals) ∧ M t.memory) k Q) :
    Hoare σ X (fun u => (ETk H Γ0 s0 p0 bl u ∧ L u.locals) ∧ M u.memory)
      (.decCall x .one (nm "alloc") [cw n] k) Q := by
  have hH := hF.hH
  have hA : Struct.AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (allocSpec_alloc hF.hX) (Helpers.funSpec_dom _))
    hQ ?_
  intro s hs ⟨⟨⟨Γ, p, hT, hp, hbl⟩, hL⟩, hMs⟩ vs hvs callee v st ⟨hAl, hd, hbe⟩ _ _
  rw [evs_cons (ev_cw _ n) evs_nil] at hvs
  cases hvs
  have hn' : (BitVec.ofNat 64 n).toNat = n := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  have hG := Struct.trk_G hT
  obtain ⟨q, hq, hordq, hLay, -⟩ := id hG
  rw [hp] at hq
  cases hq
  have hm0 : p0.Mono p := by
    obtain ⟨pT, hpT, hm0, -⟩ := hT
    rw [hp] at hpT
    cases hpT
    exact hm0
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p :=
    (Frames.ptrsOf_congr rfl).trans hp
  obtain ⟨hm, hgl, p1, hp1, hord1, hmo1, hret⟩ := hAl (by simp [Good]) _ p rfl hpe hordq
  obtain ⟨l, rfl, hl8, hlive1, hna1⟩ := hret _ rfl
  rw [hn'] at hlive1 hna1
  have hT1 := Struct.trk_alloc hH hA hT rfl rfl hpe hm hgl hp1 hord1 hmo1 hd hbe
  have hhe : p1.hp ≤ heapEnd := hord1.2.1
  have hlt : heapEnd < 2 ^ 64 := by decide
  have hdisj : ∀ a, K a → ¬ Overlap l.toNat n a := by
    intro a hK ⟨hy8, hy1, hy2⟩
    obtain ⟨b, hb, ho⟩ := hKb a hK
    have hal := ((hbl b hb).2.2.2 a ho).2.1
    have hy1' : l.toNat < a.toNat + 8 := hy1
    have hy2' : a.toNat < l.toNat + n := hy2
    exact hna1 a.toNat (by omega) hy2' hal
  refine hoare_pre (hk l hl8 hlive1.1 (by have := hlive1.2; omega) hdisj) (fun t _ ht => ?_)
  subst ht
  refine ⟨⟨⟨Γ, p1, Struct.trk_congr hH hT1 rfl rfl rfl rfl, (Frames.ptrsOf_congr rfl).trans hp1, ?_⟩,
    hL' s st l hL⟩, ?_⟩
  · intro b hb
    rcases List.mem_cons.mp hb with rfl | hb
    · refine ⟨hl8, ⟨hlive1.1, hlive1.2⟩, by have := hlive1.2; show l.toNat + n < 2 ^ 64; omega,
        fun y hy => ?_⟩
      obtain ⟨hy8, hy1, hy2⟩ := hy
      have hy1' : l.toNat < y.toNat + 8 := hy1
      have hy2' : y.toNat < l.toNat + n := hy2
      have hyl : l.toNat ≤ y.toNat := by omega
      refine ⟨?_, Helpers.allocated_of_live hlive1 hyl hy2', Struct.notAlloc_mono hm0 (hna1 _ hyl hy2')⟩
      rintro hio
      exact hna1 y.toNat hyl hy2' (Helpers.allocated_of_inObj hLay hio)
    · exact blkL_after hordq hord1 hmo1 Helpers.newFresh_same hbl b hb
  · show M st.memory
    rw [hm]; exact hMs

/-- **`log_append(ev, x)`** at the end of a run: the list header at `ev[88]` is a list header of
`Γ`, and `x` is a block of the temporaries. -/
theorem et_logAppend (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hLH : LstHooks H)
    (hFw : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tLOG → H.wf Γ s o)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) {bl : List (BitVec 64 × Nat)}
    {lgb : BitVec 64} (hlgb : (lgb, 40) ∈ bl)
    {L : HolFiniteMapExact MlS (ValueHOL 64) → Prop} {arg2 : ExpHOL 64}
    (hpre : ∀ (u : State σ) (Γ : Gam), Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ u →
      L u.locals → ∃ E, ev u gev = some (.val (.word E)) ∧ ev u arg2 = some (.val (.word lgb)) ∧
        ∃ Lh ∈ Γ, Lh.base = rd u.memory (E + BitVec.ofNat 64 88) ∧ Lh.ty ∈ lstTys ∧
          lstE Lh.ty = 8) :
    Hoare σ X (fun u => (ETk H Γ0 s0 p0 bl u ∧ L u.locals) ∧ LogF u.memory lgb)
      (callD (nm "log_append") [gev, arg2])
      (fun r t => r = none ∧ ∃ Γ', Struct.Trk guestC H Γ0 s0 p0 (PWl Γ0 p0) Γ' t ∧
        ∀ p', ptrsOf t = some p' → LogSub Γ0 Γ' p'.hp s0.memory t.memory) := by
  have hH := hF.hH
  refine hoare_callD (FunSpec.and (sumSpec_log_appendV hF hM hLH) (Helpers.funSpec_dom _)) ?_
  intro s _ ⟨⟨⟨Γb, p, hTb, hp, hbl⟩, hL⟩, hLF⟩ vs hvs callee v st ⟨hS, hd, hbe⟩ _
  obtain ⟨E, hE, hlgE, Lh, hLhb0, hLhb, hLht, hLhE⟩ := hpre s Γb hTb hL
  obtain ⟨z1, z2, rfl, hz1, hz2⟩ := evs2 hvs
  rw [hE] at hz1
  cases hz1
  rw [hlgE] at hz2
  cases hz2
  have hGb := Struct.trk_G hTb
  obtain ⟨qb, hqb, hordb, -⟩ := id hGb
  rw [hp] at hqb
  cases hqb
  -- the record joins the typing
  obtain ⟨hT, hrec⟩ := trk_adoptLog hM hFw hTb hp hordb hbl hlgb
  have hLhΓ : Lh ∈ Γb ++ [⟨lgb, tLOG, 40⟩] := List.mem_append_left _ hLhb0
  generalize Γb ++ [⟨lgb, tLOG, 40⟩] = Γ at hT hrec hLhΓ
  have hG := Struct.trk_G hT
  obtain ⟨q, hq, hordq, hLay, -⟩ := id hG
  rw [hp] at hq
  cases hq
  have hGe : G guestC H Γ (callEntryStateHOLFinite s callee) :=
    Struct.G_congr (s := s) hH rfl rfl rfl rfl hG
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p :=
    (Frames.ptrsOf_congr rfl).trans hp
  obtain ⟨Γ', q1, q2, hcore, hQ⟩ := hS (by simp [Good]) (by simp [Abortive]) Γ hGe
    ⟨p, hpe, argsOK_any2⟩ ⟨E, Lh, hLhΓ, rfl, hLhb, hLht, hLhE⟩
  have hq1 : p = q1 := Option.some.inj (hpe.symm.trans hcore.1)
  subst hq1
  have hT' := Struct.trk_call (trk_pw_mono (PW' := PWl Γ0 p0) (fun a ha => ha.elim) hT) hord0 hL0 rfl rfl
    hcore (fun g _ => by simp [laSig])
    (fun a ha => absurd ha argCells_any2)
    (fun a hpc hla => laPW_back hord0 hL0 hT hla) hd hbe
  refine ⟨rfl, Γ', Struct.trk_congr hH hT' rfl rfl rfl rfl, fun p' hp' => ?_⟩
  -- the lists: unchanged until the call, then `log_append`
  have hk0 := trk_protKeep hord0 hL0 hT
  have hs1 : LogSub Γ0 Γ p.hp s0.memory s.memory := logSub_of_protKeep hLH hG0 hk0
  have hlg : LogRecF Γ p.hp s.memory lgb := ⟨hrec, hLF⟩
  obtain ⟨-, hp2, hmo, hext, hnf, hG', -⟩ := hcore
  obtain ⟨pT, hpT, hmT, hxT, -⟩ := hT
  have hp'' : ptrsOf st = some p' := hp'
  have hp'q : p' = q2 := Option.some.inj (hp''.symm.trans hp2)
  subst hp'q
  have hs3 := hQ.2 v rfl ⟨E, Lh, hLhΓ, rfl, hLhb, hLht, hLhE⟩ E lgb rfl p p' hpe hp'' hlg
  obtain ⟨q', hq', hord', -⟩ := hG'
  rw [hp2] at hq'
  cases hq'
  exact logSub_trans hordq hord' hmo hxT hext hs3.2.2 hs1 hs3.1

end rules

end InitECandidate.Solver.MemSafe.Pre

#print axioms InitECandidate.Solver.MemSafe.Pre.et_decCall
#print axioms InitECandidate.Solver.MemSafe.Pre.ev_keep
#print axioms InitECandidate.Solver.MemSafe.Pre.trk_adoptLog
#print axioms InitECandidate.Solver.MemSafe.Pre.et_storeM
#print axioms InitECandidate.Solver.MemSafe.Pre.et_callM
#print axioms InitECandidate.Solver.MemSafe.Pre.et_allocM
#print axioms InitECandidate.Solver.MemSafe.Pre.et_logAppend
