import InitECandidate.Solver.MemSafe.Bn2.SubmulBody
import InitECandidate.Solver.MemSafe.WaveHelpers.Common
import InitECandidate.Solver.MemSafe.Fold
import InitECandidate.Solver.MemSafe.Wire.Guest

set_option autoImplicit false

/-!
# `fq_poly_submul`: the summary

`fq_poly_submul(a, b, q, s, db)`: `a[s + i] -= q * b[i]` for `i = 0, ..., db`
(`a[k]` is the 32-byte coefficient at `a + 32 k`).

* `bnSubSig = [buf 416, any, any, any, any]`, `grows := false`: `a` is a `13`-coefficient polynomial.
* `Pre` (`SubPre`): `s + db <= 12` (the written coefficients `a[s .. s + db]` lie in `a[0 .. 12]`).
  The callers in `fq12_inv` pass `(s, db) = (d0 - d1, d1)` with `d0 <= 12`, and `(j, 12 - j)`.
* The theorem is generic in the hook family and takes the summaries of the two callees
  `fq_mul`, `fq_sub` (the fold-table entries, `sgFq = [any, any]`) as hypotheses.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bn2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

theorem abn_nb'' {r : PanSemResultExact 64} (h : Abn r) : r ≠ .break ∧ r ≠ .continue := by
  rcases h with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> exact ⟨by simp, by simp⟩

/-- **The loop with the body triple as hypothesis.** -/
theorem hoareG_submulFun {a : Act σ} (ha : ActOK a X) {A S DB : BitVec 64}
    (hlb : ∀ I : BitVec 64, I.toNat ≤ DB.toNat →
      HoareG σ X (WaveHelpers.PreH a (SL A S DB I)) Fq12.submulBody1
        (WaveHelpers.SPA a (SLI A S DB))) :
    HoareG σ X (WaveHelpers.PreH a (fun m => LkW m "a" A ∧ LkW m "s" S ∧ LkW m "db" DB))
      Fq12.submulBody (WaveHelpers.HQa a) := by
  unfold Fq12.submulBody
  refine WaveHelpers.hoareG_decH ha.hH (L' := SLI A S DB) ?_ ?_
  · intro s _ hL v hv
    rw [ev_cw] at hv
    cases hv
    exact ⟨_, ⟨hL.1.set (by decide), hL.2.1.set (by decide), hL.2.2.set (by decide),
      lk_set_self _ _ _⟩, by simp⟩
  refine WaveHelpers.hoareG_seqSP (L := SLI A S DB) WaveHelpers.hqa_of_abn ?_ ?_
  · unfold Fq12.submulLoop
    refine hoareG_while (fun t h => ⟨h.1, WaveHelpers.hha_congr (s := t) ha.hH rfl rfl rfl rfl h.2⟩)
      ?_ ?_
    · refine hoareG_conseq (Q := WaveHelpers.SPA a (SLI A S DB)) ?_ (fun _ _ h => h) ?_
      · intro s hs ⟨⟨⟨I, hSL, hIle⟩, hH'⟩, hc⟩
        obtain ⟨w, hw, hw0⟩ := condTrue_iff.mp hc
        have hge := cmp_val_true hw hw0 (ev_lw hSL.2.2.1) (ev_lw hSL.2.2.2)
        simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Bool.not_eq_true',
          decide_eq_false_iff_not, BitVec.lt_def] at hge
        exact hlb I (by omega) s hs ⟨hSL, hH'⟩
      · intro r t _ _ h
        refine ⟨h.1, fun hc => ?_, fun hb => ?_, fun r' hr' _ _ => ⟨fun h' => ?_, h.2⟩⟩
        · exact absurd rfl (abn_nb'' (h.2 _ hc).1).2
        · exact absurd rfl (abn_nb'' (h.2 _ hb).1).1
        · rw [hr'] at h'; cases h'
    · intro s _ h _
      exact ⟨fun _ => h, fun r' h => absurd h (by simp)⟩
  · exact hoareG_return fun t _ ⟨_, hH'⟩ v _ =>
      WaveHelpers.hqa_of_hha (t := emptyLocalsHOLFinite t)
        (WaveHelpers.hha_congr (s := t) ha.hH rfl rfl rfl rfl hH') _

theorem sumCore_pw_mono {σ : Type} {C : Cfg} {H : Hooks σ} {sg : Sig} {PW PW' : BitVec 64 → Prop}
    {Γ : Gam} {s : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {t : State σ}
    {Γ' : Gam} {p p' : Ptrs} (h : SumCore C H sg PW Γ s vs r t Γ' p p') (hPW : ∀ x, PW x → PW' x) :
    SumCore C H sg PW' Γ s vs r t Γ' p p' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, hmod, h8, h9, h10⟩ := h
  refine ⟨h1, h2, h3, h4, h5, h6, hmod.mono fun a ha => ?_, h8, h9, h10⟩
  rcases ha with h | h | h | h
  · exact Or.inl h
  · exact Or.inr (Or.inl h)
  · exact Or.inr (Or.inr (Or.inl h))
  · exact Or.inr (Or.inr (Or.inr (hPW _ h)))

/-- **A `SumSpecA` with a hand precondition from a body ending in the activation invariant**
(`csumm_of_heap` with a precondition, no capabilities). -/
theorem sumSpecA_of_heap {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    {sg : Sig} {f : MlS} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → ∀ (Γ0 : Gam) (p0 : Ptrs),
        Pre vs s0 Γ0 →
        ActOK (actOf C H sg [] vs s0 Γ0 p0) X → Heap (actOf C H sg [] vs s0 Γ0 p0) Γ0 p0 s0 →
        HoareG σ X (fun t => t = s0) body (fun r t => ∀ r', r = some r' → ¬ Abortive r' →
          ∃ Γ' p', Ext Γ0 Γ' ∧ Heap (actOf C H sg [] vs s0 Γ0 p0) Γ' p' t ∧
            ∀ v, r' = .returned v → RetOK Γ' p0 p' vs sg.ret v)) :
    SumSpecA σ X C H f sg Pre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs hpre
  obtain ⟨p1, hps, hargs⟩ := hargs
  obtain ⟨ha, hh⟩ := act_entry hH hC hal hAC hNS (WaveHelpers.capsOK_nil C sg) hG hps hargs
    (fun c hc => by cases hc)
  have HH := h vs body callee rs hl s hs hloc Γ p1 hpre ha hh s hs rfl (by rw [hr]; exact hgood)
  rw [hr] at HH
  obtain ⟨Γ', p', hext, hh', hret⟩ := HH r rfl hna
  refine ⟨Γ', p1, p', sumCore_pw_mono (act_exit (WaveHelpers.capsOK_nil C sg) hps hext hh' hret)
    ?_, trivial⟩
  rintro x ⟨hx, c, hc, -⟩
  cases hc

/-! ## The summary -/

def bnSubSig : Sig := { params := [.buf 416, .any, .any, .any, .any], grows := false }

/-- The caller obligation: `s + db <= 12`. -/
def SubPre (vs : List (ValueHOL 64)) (_ : State σ) (_ : Gam) : Prop :=
  ∀ S DB : BitVec 64, argW vs 3 = some S → argW vs 4 = some DB → S.toNat + DB.toNat ≤ 12

theorem sumSpec_fq_poly_submul_core {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H)
    (hC : CfgOK C) (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C)
    (hNS : NullSafe X) (hX : X.code.lookup = guestCode)
    (hmul : CSumm σ X C H (nm "fq_mul") sgFq []) (hsub : CSumm σ X C H (nm "fq_sub") sgFq []) :
    SumSpecA σ X C H (nm "fq_poly_submul") bnSubSig SubPre (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True) := by
  refine sumSpecA_of_heap hH hC hal hAC hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, Av, Bv, Qv, Sv, Dv, rfl, hA', hB', hQ', hS', hD', hla, hlb, hlq, hls, hld⟩ :=
    Helpers.lookupCode_five Fq12.code_fq_poly_submul (by decide) hl
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨S, rfl⟩ := val_of_shapeEq_one hS'
  obtain ⟨DB, rfl⟩ := val_of_shapeEq_one hD'
  have hSD : S.toNat + DB.toNat ≤ 12 := hpre S DB rfl rfl
  obtain ⟨v0, hv0, w0, hw0, hbufE⟩ := argAt ha.hargs0 (i := 0) (pt := .buf 416) rfl
  have hA0 : argW [.val (.word A), Bv, Qv, .val (.word S), .val (.word DB)] 0 = some A := rfl
  have hw0A : w0 = A := by
    have this : argW [.val (.word A), Bv, Qv, .val (.word S), .val (.word DB)] 0 = some w0 :=
      argWOf hv0 hw0
    rw [hA0] at this
    exact (Option.some.inj this).symm
  subst hw0A
  have hA416 : w0.toNat + 416 < 2 ^ 64 := by
    obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
    rw [hh.2.1] at hp1
    cases hp1
    have := Helpers.bufOK_bound hord hL w0.isLt hbufE
    have hse : scratchEnd < 2 ^ 63 := by decide
    omega
  have hlkA : callee.lookup (nm "a") = some (.val (.word w0)) := hla
  refine hoareG_conseq
    (P := WaveHelpers.PreH (actOf C H bnSubSig [] [.val (.word w0), Bv, Qv, .val (.word S), .val (.word DB)] s0 Γ0 p0)
      (fun m => LkW m "a" w0 ∧ LkW m "s" S ∧ LkW m "db" DB))
    (Q := WaveHelpers.HQa (actOf C H bnSubSig [] [.val (.word w0), Bv, Qv, .val (.word S), .val (.word DB)] s0 Γ0 p0))
    (hoareG_submulFun ha fun I hI => ?_) ?_ ?_
  · refine hoareG_submulIter ha hmul hsub hI hSD hA416 fun Γ p s he hh' x hx => ?_
    rcases WaveHelpers.bufOK_later ha hh' he hbufE x hx with hs | ⟨hn, -⟩
    · exact ⟨Or.inl hs, Or.inr (Or.inl (WaveHelpers.argCells_buf_at (i := 0) (n := 416) rfl hA0 hx))⟩
    · exact ⟨Or.inr hn, Or.inr (Or.inl (WaveHelpers.argCells_buf_at (i := 0) (n := 416) rfl hA0 hx))⟩
  · intro t _ ht
    subst ht
    exact ⟨⟨by rw [hloc]; exact hla, by rw [hloc]; exact hls, by rw [hloc]; exact hld⟩, Γ0, p0,
      ext_refl _, hh⟩
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh'⟩ := h r' hr hna
    exact ⟨Γ', p', he, hh', fun v _ i rt w hrt => by simp [bnSubSig] at hrt⟩

theorem sumSpec_fq_poly_submul {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hmul : CSumm σ X Types.guestC H (nm "fq_mul") sgFq [])
    (hsub : CSumm σ X Types.guestC H (nm "fq_sub") sgFq []) :
    SumSpecA σ X Types.guestC H (nm "fq_poly_submul") bnSubSig SubPre (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True) :=
  sumSpec_fq_poly_submul_core hF.hH hF.hC hF.hal hF.hAC hF.hNS hF.hX hmul hsub

theorem sumSpec_fq_poly_submul_guestJL
    (hmul : CSumm σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "fq_mul") sgFq [])
    (hsub : CSumm σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "fq_sub") sgFq []) :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "fq_poly_submul") bnSubSig
      SubPre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpec_fq_poly_submul Wire.foldOK_guestJL hmul hsub

end InitECandidate.Solver.MemSafe.Bn2

#print axioms InitECandidate.Solver.MemSafe.Bn2.sumSpec_fq_poly_submul
#print axioms InitECandidate.Solver.MemSafe.Bn2.sumSpec_fq_poly_submul_guestJL
