import InitECandidate.Solver.MemSafe.Frames.GcrSpec

/-!
# `generic_create`'s summary: the prefix and the theorem (frames10, task 2)

* `gcr_acct` (from `var sender_address = lds 1 (msg + 32)`: its block is `BufOK` by the running
  frame's `GP`), `gcr_body`;
* **`gcr_sumSpecT hD hFo hK hMH hKc : SumSpecT … "generic_create" (sgA 4 (nmEv :: nmCC :: gwS))
  (PreGCR M) QGCR`**.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3200000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

section
variable {H : Hooks σ} (hD : DrvCfg guestC H tEV tCK) (hFo : FoldOK σ X guestC H)
  (hK : Shards.GuestHooks H) (hMH : ∀ Γ (s : State σ) o, o.ty = tMSGs → H.wf Γ s o)
  {M : Nat} {gwS gw : List MlS} (hKc : GcrCallees σ X H M gwS)
  (hgS : ∀ g, g ∈ (sgSC gwS).gw → g ∈ gw)
  {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
  (hfs : fs = (e, c) :: rest)
variable [Fact (ChainOf s0 fs)]
include hD hFo hK hMH hKc hgS hfs

/-- **From `var sender_address`** (`gcrAcct`). -/
theorem gcr_acct {ca mz : BitVec 64} {u : State σ} (hu : KG H gw Γ0 s0 p0 fs e [ca] 0 u)
    (lmsg : u.locals.lookup (nm "msg") = some (.val (.word (fld u.memory e 112))))
    (lca : u.locals.lookup (nm "contract_address") = some (.val (.word ca)))
    (lmz : u.locals.lookup (nm "msize") = some (.val (.word mz)))
    (hmz : mz.toNat ≤ 131072)
    (hsp0 : (fld s0.memory e evSp).toNat < (fld s0.memory e evStackCap).toNat)
    (hΦM : Phi s0 + 2 ≤ M) :
    HoareG σ X (fun t => t = u) gcrAcct (QB H gw Γ0 s0 p0) := by
  have hFr := hD.fc
  have hH := hFr.hooks
  unfold gcrAcct
  refine hoareG_dec fun s _ hs vsa hvsa _ => ?_
  rw [hs] at hvsa ⊢
  rw [ev_lLoad_eq lmsg hvsa]
  refine hoareG_conseq (Q := QB H gw Γ0 s0 p0) ?_ (fun _ _ h => h) (fun _ _ _ _ h => qb_locF hH h _)
  set sa := fld u.memory (fld u.memory e 112) 32 with hsad
  set u1 := setVarHOLFinite (nm "sender_address") (.val (.word sa)) u with hu1d
  have hu1 : KG H gw Γ0 s0 p0 fs e [sa, ca] 0 u1 := by
    obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, hB, h16, h232⟩ := kg_locF hH _ u1.locals hu
    refine ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, fun b hb => ?_, h16, h232⟩
    simp only [List.mem_cons, List.mem_nil_iff, or_false] at hb
    rcases hb with rfl | rfl
    · obtain ⟨-, hBm, -, -⟩ := hE.1 p1 hrun.2.1 (e, c) (by rw [hfs]; exact List.mem_cons_self ..)
      exact hBm 32 (by simp [msgXOffs])
    · exact hB _ (by simp)
  have L1 : ∀ x, x ≠ nm "sender_address" → u1.locals.lookup x = u.locals.lookup x :=
    fun x hx => lk_set_ne _ _ (Ne.symm hx)
  have lsa1 : u1.locals.lookup (nm "sender_address") = some (.val (.word sa)) := lk_set_self _ _ _
  refine hoareG_pre (P := fun t => t = u1) ?_ (fun _ _ h => h)
  refine gcr_acctDC hD hfs hKc.ga hKc.gaF (b := sa) (by simp) hu1 lsa1 fun v st hst => ?_
  have hu2 : KG H gw Γ0 s0 p0 fs e [sa, ca] 0
      (setVarHOLFinite (nm "sender") v { st with locals := u1.locals }) :=
    kg_locF hH _ _ (kg_locF hH _ _ hst)
  refine hoareG_kgDC0 hD hfs hKc.ult hKc.ultF (by simp [sgP]) (by decide) (by decide) hu2 ?_
    (fun _ _ _ _ _ _ hw => absurd hw capPW_nil) fun v2 st2 hst2 => ?_
  · intro _ _ _ _ _ _ _ vs hvs
    exact ⟨argsOK_any (sgP_any 2) (by rw [evs_len hvs]; rfl), fun _ => reqOK_nil⟩
  set u3 := setVarHOLFinite (nm "insufficient") v2 { st2 with locals :=
    (setVarHOLFinite (nm "sender") v { st with locals := u1.locals }).locals } with hu3d
  have hu3 : KG H gw Γ0 s0 p0 fs e [sa, ca] 0 u3 := kg_locF hH _ _ (kg_locF hH _ _ hst2)
  have L3 : ∀ x, x ≠ nm "insufficient" → x ≠ nm "sender" → u3.locals.lookup x = u1.locals.lookup x := by
    intro x h1 h2
    rw [lk_sv (Ne.symm h1)]
    exact lk_sv (Ne.symm h2) _ _ _
  refine hoareG_seq (R := fun ro t => (ro = none ∧ t = u3) ∨ (ro ≠ none ∧ QB H gw Γ0 s0 p0 ro t))
    ?_ (fun _ _ _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
  · refine hoareG_ite ?_ ?_
    · exact hoareG_conseq (gcr_push0 hFr hfs hKc.sp hKc.spF hu3) (fun _ _ h => h.1)
        (fun _ _ _ _ h => Or.inr ⟨h.1, qb_of_kf h.2⟩)
    · exact hoareG_skip fun _ _ h => Or.inl ⟨rfl, h.1⟩
  · refine hoareG_pt fun u4 h => ?_
    rcases h with ⟨-, rfl⟩ | ⟨h0, -⟩
    swap; · exact absurd rfl h0
    refine gcr_alive hD hFo hK hMH hKc hgS hfs hu3 ?_ ?_ ?_ hmz hsp0 hΦM
    · rw [L3 _ (by decide) (by decide)]; exact lsa1
    · rw [L3 _ (by decide) (by decide), L1 _ (by decide)]; exact lca
    · rw [L3 _ (by decide) (by decide), L1 _ (by decide)]; exact lmz

/-- **The body.** -/
theorem gcr_body {ca mz : BitVec 64} (hs0 : KG H gw Γ0 s0 p0 fs e [ca] 0 s0)
    (lca : s0.locals.lookup (nm "contract_address") = some (.val (.word ca)))
    (lmz : s0.locals.lookup (nm "msize") = some (.val (.word mz)))
    (hsp0 : (fld s0.memory e evSp).toNat < (fld s0.memory e evStackCap).toNat)
    (hΦM : Phi s0 + 2 ≤ M) :
    HoareG σ X (fun t => t = s0) gcrBody (QB H gw Γ0 s0 p0) := by
  have hFr := hD.fc
  have hH := hFr.hooks
  obtain ⟨he, -⟩ := kg_head hfs hs0
  unfold gcrBody
  refine hoareG_seq (R := fun ro t => (ro = none ∧ t = s0 ∧ mz.toNat ≤ 131072) ∨
      (ro ≠ none ∧ QB H gw Γ0 s0 p0 ro t)) ?_
    (fun _ _ _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_raise fun s _ h v _ => ?_
      rw [h.1]
      exact Or.inr ⟨by simp, qb_of_kf fun _ _ _ => kf_of_kg (kg_locF hH _ _ hs0)⟩
    · refine hoareG_skip fun s _ h => ?_
      obtain ⟨rfl, hc⟩ := h
      refine Or.inl ⟨rfl, rfl, ?_⟩
      rw [ev_cmp (ev_cw _ 131072) (ev_lv_eq lmz)] at hc
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hc
      split at hc
      · exact absurd hc (by decide)
      · rename_i hlt
        rw [lower_iff, BitVec.lt_def] at hlt
        simp only [BitVec.toNat_ofNat] at hlt
        omega
  refine hoareG_pt fun u h => ?_
  rcases h with ⟨-, hu0, hmz⟩ | ⟨h0, -⟩
  swap; · exact absurd rfl h0
  subst u
  refine hoareG_dec fun s _ hs vcd _ _ => ?_
  rw [hs]
  refine hoareG_conseq (Q := QB H gw Γ0 s0 p0) ?_ (fun _ _ h => h) (fun _ _ _ _ h => qb_locF hH h _)
  refine hoareG_dec fun s' _ hs' vem _ _ => ?_
  rw [hs']
  refine hoareG_conseq (Q := QB H gw Γ0 s0 p0) ?_ (fun _ _ h => h) (fun _ _ _ _ h => qb_locF hH h _)
  set u2 := setVarHOLFinite (nm "empty") vem (setVarHOLFinite (nm "call_data") vcd s0) with hu2d
  have hu2 : KG H gw Γ0 s0 p0 fs e [ca] 0 u2 := kg_locF hH _ _ (kg_locF hH _ _ hs0)
  have L2 : ∀ x, x ≠ nm "empty" → x ≠ nm "call_data" → u2.locals.lookup x = s0.locals.lookup x := by
    intro x h1 h2
    show (setVarHOLFinite _ _ _).locals.lookup x = _
    rw [lk_set_ne _ _ (Ne.symm h1)]
    exact lk_set_ne _ _ (Ne.symm h2)
  refine hoareG_pre (P := fun t => t = u2) ?_ (fun _ _ h => h)
  -- `set_retdata(empty, 0)`
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, hB, h16, h232⟩ := hu2
  obtain ⟨he2, -⟩ := kg_head hfs (kg_locF hH _ _ (kg_locF hH _ _ hs0) : KG H gw Γ0 s0 p0 fs e [ca] 0 u2)
  refine hoareG_seq (R := PS (KG H gw Γ0 s0 p0 fs e [ca] 0) u2.locals)
    (hoareG_kgCallD hFr hfs hKc.sd hKc.sdF (by simp [sgA]) (by decide) (by decide)
      (ks := [18, 19, 27]) (by decide) (by decide) (by decide) hrun hch hE hJ ?_
      (fun _ _ _ _ h => h) (Or.inl (by decide)) (Or.inr fun vs callee r st Γ2 hq => hq.2 e he2)
      (kg_locF hH) ?_) (fun _ _ _ hr _ h => qb_of_ps hr h) ?_
  · intro vs hvs
    refine ⟨argsOK_any (sgA_any 2 []) (by rw [evs_len hvs]; rfl), fun callee => ?_⟩
    obtain ⟨o, ⟨ho, hot, hob⟩, hoe⟩ := evRun_of_chainL (hfs ▸ hch)
    exact ⟨o, ⟨ho, hot, hob⟩, by rw [hoe]; exact hch.retd (e, c) (by rw [hfs]; simp)⟩
  · intro Γ2 p2 st hrun2 hch2 hE2 hΦ2 hJ2 hbuf hkE
    exact ⟨hJ2, Γ2, p2, hrun2, hch2, hE2, by omega, fun b hb => hbuf _ _ (hB b hb),
      (hkE 2 (by simp [evProtSlots]) (by decide)).trans h16,
      (hkE 29 (by simp [evProtSlots]) (by decide)).trans h232⟩
  refine hoareG_pt fun u3 h => ?_
  rcases h with ⟨-, hu3, hl3⟩ | ⟨h0, -⟩
  swap; · exact absurd rfl h0
  obtain ⟨he3, -⟩ := kg_head hfs hu3
  refine hoareG_dec fun s _ hs vm hvm _ => ?_
  rw [hs] at hvm ⊢
  obtain ⟨rfl, -⟩ := ev_gLoad_eq he3 hvm
  refine hoareG_conseq (Q := QB H gw Γ0 s0 p0) ?_ (fun _ _ h => h) (fun _ _ _ _ h => qb_locF hH h _)
  have L4 : ∀ x, x ≠ nm "msg" → x ≠ nm "empty" → x ≠ nm "call_data" →
      (setVarHOLFinite (nm "msg") (.val (.word (fld u3.memory e 112))) u3).locals.lookup x =
        s0.locals.lookup x := by
    intro x h0 h1 h2
    rw [lk_set_ne _ _ (Ne.symm h0), hl3]
    exact L2 x h1 h2
  exact gcr_acct hD hFo hK hMH hKc hgS hfs (kg_locF hH _ _ hu3) (lk_set_self _ _ _)
    ((L4 _ (by decide) (by decide) (by decide)).trans lca)
    ((L4 _ (by decide) (by decide) (by decide)).trans lmz) hmz hsp0 hΦM

end

/-- **`generic_create`'s summary** (frames10, task 2). -/
theorem gcr_sumSpecT {H : Hooks σ} (hD : DrvCfg guestC H tEV tCK) (hFo : FoldOK σ X guestC H)
    (hK : Shards.GuestHooks H) (hMH : ∀ Γ (s : State σ) o, o.ty = tMSGs → H.wf Γ s o)
    {M : Nat} {gwS : List MlS} (hKc : GcrCallees σ X H M gwS) :
    SumSpecT σ X guestC H (nm "generic_create") (sgA 4 (nmEv :: nmCC :: gwS)) (PreGCR M) QGCR := by
  intro vs body callee rs hl s0 hs0 hloc r hr hg hna Γ hG _
    ⟨en, ca, ms, mz, hvs, fs, e0, c0, rest, hch, hfs, hE0, hsp, hΦM, hJ0, hbuf⟩
  subst hvs
  rw [hFo.hX] at hl
  obtain ⟨ps, hps, hlk⟩ := lookupCode_k hl
  rw [code_gcr] at hps
  simp only [Option.some.injEq, Prod.mk.injEq] at hps
  obtain ⟨rfl, rfl, -⟩ := hps
  have L : ∀ (k : Nat) (x : MlS × ShapeHOL) (v : ValueHOL 64), gcrParams[k]? = some x →
      (gcrArgs en ca ms mz)[k]? = some v → s0.locals.lookup x.1 = some v :=
    fun k x v h1 h2 => by rw [hloc]; exact hlk k x v h1 h2
  have lca := L 1 _ _ rfl rfl
  have lmz := L 3 _ _ rfl rfl
  have ⟨p, hps0, _⟩ := hG
  haveI : Fact (ChainOf s0 fs) := ⟨hch.chain⟩
  have hk0 : KG H (nmEv :: nmCC :: gwS) Γ s0 p fs e0 [ca] 0 s0 :=
    ⟨hJ0, Γ, p, runT_refl hG hps0, hch, hE0, by omega,
      fun b hb => by simp only [List.mem_singleton] at hb; subst hb; exact hbuf p hps0, rfl, rfl⟩
  have H0 := gcr_body hD hFo hK hMH hKc (gw := nmEv :: nmCC :: gwS) (fun g h => h) hfs hk0 lca lmz
    hsp hΦM s0 hs0 rfl (by rw [hr]; exact hg)
  rw [hr] at H0
  obtain ⟨Γ', p', hrun, hx⟩ := H0 r rfl hna
  exact ⟨Γ', p, p', sumCoreT_of_runT (sg := sgA 4 (nmEv :: nmCC :: gwS)) rfl rfl hrun,
    fun v hv => hx (Or.inl ⟨v, hv⟩), fun v hv => hx (Or.inr ⟨v, hv⟩)⟩

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.gcr_acct
#print axioms InitECandidate.Solver.MemSafe.Frames.gcr_body
#print axioms InitECandidate.Solver.MemSafe.Frames.gcr_sumSpecT
