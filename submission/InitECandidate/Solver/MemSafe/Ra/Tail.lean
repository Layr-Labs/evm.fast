import InitECandidate.Solver.MemSafe.Ra.Rules

set_option autoImplicit false

/-!
# `recover_authority`: the tail, from `var pt = alloc(64)` (sonnet-ra)
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ra
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins

variable {σ : Type} {X : Ctx 64}

def raSig : Sig := ⟨[.any], [], [], true⟩

abbrev aR (σ : Type) (vs : List (ValueHOL 64)) (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) : Act σ :=
  actOf Types.guestC (Hooks.guestHooksR (σ := σ)) raSig [] vs s0 Γ0 p0

/-- The result: `0`, or an aligned block of `20` writable bytes. -/
def RaRv (Γ : Gam) (q : Ptrs) (_ : Mem) (v : ValueHOL 64) : Prop :=
  ∃ w : BitVec 64, v = .val (.word w) ∧ (w = 0 ∨ w.toNat % 8 = 0 ∧ BufOK Types.guestC Γ q w.toNat 20)

theorem raRv_zero (Γ : Gam) (q : Ptrs) (M : Mem) : RaRv Γ q M (.val (.word 0)) := ⟨0, rfl, Or.inl rfl⟩

theorem argsAnyF {a : Act σ} {sg' : Sig} (hps : ∀ pt ∈ sg'.params, pt = .any)
    {args : List (ExpHOL 64)} (hlen : sg'.params.length = args.length) {Γ : Gam} {q : Ptrs}
    {s : State σ} {vs : List (ValueHOL 64)} (hvs : evs s args = some vs) :
    ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
      ∀ (callee : HolFiniteMapExact MlS (ValueHOL 64)), True :=
  ⟨(anyArgsG (a := a) (Γ := Γ) (q := q) hps hlen hvs).1,
    fun x hx => absurd hx ((anyArgsG (a := a) (Γ := Γ) (q := q) hps hlen hvs).2 x), fun _ => trivial⟩

/-- A good `alloc(n)` returning `T`: an owned, aligned block. -/
theorem alloc_own {a : Act σ} (ha : ActOK a guestCtx) {s st : State σ} {vs : List (ValueHOL 64)}
    {Γ Γ' : Gam} {q q' : Ptrs} {r : PanSemResultExact 64} {n : Nat} (hn : n < 2 ^ 64)
    (hvs : evs s [cw n] = some vs)
    (co : COF a ⟨[.any], [.freshArg 0 1 0], [], false⟩ vs Γ Γ' q q' s st r) {T : BitVec 64}
    (hT : r = .returned (.val (.word T))) :
    Own a.p0 q' Γ' T.toNat n ∧ T.toNat % 8 = 0 := by
  rw [evs_cons (ev_cw s n) evs_nil] at hvs
  cases hvs
  obtain ⟨x, hx, hfb⟩ := co.ret _ hT 0 (.freshArg 0 1 0) T rfl (by simp [flattenHOL])
  simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hx
  subst hx
  have := own_of_fresh (a := a) (heap_ord co.heap0) (heap_ord co.heap) co.mono co.heap0.2.2.1
    ha.hord0 hfb
  rw [toNat_ofNat' hn] at this hfb
  exact ⟨by simpa using this, hfb.1⟩

theorem evs_nil_eq {s : State σ} {vs : List (ValueHOL 64)} (h : evs s [] = some vs) : vs = [] := by
  rw [evs_nil] at h
  exact (Option.some.inj h).symm

def tkv (A Mk H : BitVec 64) (YP R S : ValueHOL 64) : List (MlS × ValueHOL 64) :=
  [(nm "h", .val (.word H)), (nm "mark", .val (.word Mk)), (nm "auth", .val (.word A)),
   (nm "yp", YP), (nm "r", R), (nm "s", S)]

theorem tail_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aR σ vs s0 Γ0 p0) guestCtx) (A Mk H : BitVec 64) (YP R S : ValueHOL 64) :
    HoareG σ guestCtx (GI (aR σ vs s0 Γ0 p0) (LK (tkv A Mk H YP R S))
        (fun Γ q _ => Win (aR σ vs s0 Γ0 p0) Mk Γ q ∧ Own p0 q Γ H.toNat 32))
      raTail (GP (aR σ vs s0 Γ0 p0) (fun _ => False) (fun _ _ _ => True) RaRv) := by
  set a := aR σ vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have hX : guestCtx.code.lookup = guestCode := (Rec.foldOK_guestR (σ := σ)).hX
  unfold raTail
  -- var pt = alloc(64)
  refine gp_decCallW ha (sumA_of_csumm alloc_C) (funSpec_true _) (by simp) (fun h => by simp at h)
    (L1 := fun PT m => LK ((nm "pt", .val (.word PT)) :: tkv A Mk H YP R S) m)
    (E1 := fun PT Γ q _ => Win a Mk Γ q ∧ Own p0 q Γ H.toNat 32 ∧ Own p0 q Γ PT.toNat 64)
    (L2 := fun _ => False) (L3 := fun _ => False) ?_ ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q hs hL hh hE vs hvs
    exact argsAnyF (a := a) (by simp) rfl hvs
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ co
    refine ⟨scrOld_cof haC co rfl, fun PT hPT => ⟨win_cof haC co rfl hE.1, own_cof co rfl hE.2,
      (alloc_own ha (by norm_num) hvs co hPT).1⟩⟩
  · intro s st PT hL
    exact lk_upd_gen (s := { st with locals := s.locals }) hL (by ra_mem [tkv]) (by ra_rest [tkv])
  intro PT
  -- var ok = secp256k1_recover(h, r, s, yp, pt)
  refine gp_decCallW ha (sumA_of_csumm recover_C) (funSpec_true _) (by simp) (fun h => by simp at h)
    (L1 := fun O m => LK ((nm "pt", .val (.word PT)) :: tkv A Mk H YP R S) m)
    (E1 := fun O Γ q _ => Win a Mk Γ q ∧ Own p0 q Γ H.toNat 32 ∧ Own p0 q Γ PT.toNat 64)
    (L2 := fun _ => False) (L3 := fun _ => False) ?_ ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q hs hL hh hE vs hvs
    rw [evs_cons (lk_ev hL (x := nm "h") (v := .val (.word H)) (by ra_mem [tkv]))
      (evs_cons (lk_ev hL (x := nm "r") (v := R) (by ra_mem [tkv]))
      (evs_cons (lk_ev hL (x := nm "s") (v := S) (by ra_mem [tkv]))
      (evs_cons (lk_ev hL (x := nm "yp") (v := YP) (by ra_mem [tkv]))
      (evs_cons (lk_ev hL (x := nm "pt") (v := .val (.word PT)) (by ra_mem [tkv])) evs_nil))))] at hvs
    cases hvs
    exact ⟨ao_aaaab _ _ _ _ PT (own_bufOK hE.2.2), fun x hx =>
      Or.inr (Or.inr (Or.inl (own_foot hE.2.2 (ac_aaaab hx)))), fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ co
    exact ⟨scrOld_cof haC co rfl, fun O hO => ⟨win_cof haC co rfl hE.1, own_cof co rfl hE.2.1,
      own_cof co rfl hE.2.2⟩⟩
  · intro s st O hL
    exact lk_irr (s := { st with locals := s.locals }) hL (by ra_fresh [tkv]) _
  intro O
  -- if ok == 0 { heap_release(mark); return 0 }
  refine gp_seq (L := LK ((nm "pt", .val (.word PT)) :: tkv A Mk H YP R S))
    (E := fun Γ q _ => Win a Mk Γ q ∧ Own p0 q Γ H.toNat 32 ∧ Own p0 q Γ PT.toNat 64)
    (Rv := RaRv) (hoareG_ite ?_ ?_) ?_
  · refine hoareG_pre (gp_seq (gp_relH ha hX (E' := fun _ _ _ => True) (mk := nm "mark") (Mk := Mk)
      (fun m hm => hm (nm "mark", .val (.word Mk)) (by ra_mem [tkv]))
      (fun s Γ q hh hE => winOK_win ha haC hh hE.1) (fun Γ q M _ => trivial)) ?_)
      (fun s _ h => h.1)
    refine gp_ret ha.hH (fun s Γ q hs hL he hh hE v hv => ?_)
    rw [ev_cw] at hv
    cases hv
    exact raRv_zero _ _ _
  · exact hoareG_pre (gp_skip (fun s h => h)) (fun s _ h => h.1)
  -- keccak256(pt, 64, h)
  refine gp_seq (gp_callFM ha (sumA_of_csumm keccak_C) (funSpec_true _) (by simp) (fun h => by simp at h)
    (E' := fun Γ q _ => Win a Mk Γ q ∧ Own p0 q Γ H.toNat 32 ∧ Own p0 q Γ PT.toNat 64) ?_ ?_) ?_
  · intro s Γ q hs hL hh hE vs hvs
    rw [evs_cons (lk_ev hL (x := nm "pt") (v := .val (.word PT)) (by ra_mem [tkv]))
      (evs_cons (ev_cw s 64)
      (evs_cons (lk_ev hL (x := nm "h") (v := .val (.word H)) (by ra_mem [tkv])) evs_nil))] at hvs
    cases hvs
    exact ⟨ao_aab _ _ H (own_bufOK hE.2.1), fun x hx =>
      Or.inr (Or.inr (Or.inl (own_foot hE.2.1 (ac_aab hx)))), fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ co
    exact ⟨scrOld_cof haC co rfl, fun _ => ⟨win_cof haC co rfl hE.1, own_cof co rfl hE.2.1,
      own_cof co rfl hE.2.2⟩⟩
  -- heap_release(mark)
  refine gp_seq (gp_relH ha hX (E' := fun _ _ _ => True) (mk := nm "mark") (Mk := Mk)
    (fun m hm => hm (nm "mark", .val (.word Mk)) (by ra_mem [tkv]))
    (fun s Γ q hh hE => winOK_win ha haC hh hE.1) (fun Γ q M _ => trivial)) ?_
  -- var addr = alloc(24)
  refine gp_decCallW ha (sumA_of_csumm alloc_C) (funSpec_true _) (by simp) (fun h => by simp at h)
    (L1 := fun AD m => LK ((nm "addr", .val (.word AD)) :: (nm "pt", .val (.word PT)) ::
      tkv A Mk H YP R S) m)
    (E1 := fun AD Γ q _ => AD.toNat % 8 = 0 ∧ Own p0 q Γ AD.toNat 24)
    (L2 := fun _ => False) (L3 := fun _ => False) ?_ ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q hs hL hh hE vs hvs
    exact argsAnyF (a := a) (by simp) rfl hvs
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ co
    exact ⟨scrOld_cof haC co rfl, fun AD hAD => by
      obtain ⟨h1, h2⟩ := alloc_own ha (by norm_num) hvs co hAD
      exact ⟨h2, h1⟩⟩
  · intro s st AD hL
    exact lk_upd_gen (s := { st with locals := s.locals }) hL (by ra_mem [tkv]) (by ra_rest [tkv])
  intro AD
  -- memcpy(addr, h + 12, 20)
  refine gp_seq (gp_callFM ha (sumA_of_csumm memcpy_C) (funSpec_true _) (by simp [Helpers.sigMemcpy])
    (fun h => by simp [Helpers.sigMemcpy] at h)
    (E' := fun Γ q _ => AD.toNat % 8 = 0 ∧ Own p0 q Γ AD.toNat 24) ?_ ?_) ?_
  · intro s Γ q hs hL hh hE vs hvs
    obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
    obtain ⟨v3, vs3, rfl, h3, hvs3⟩ := evs_cons_inv hvs2
    have e1 := (Option.some.inj ((h1.symm).trans (lk_ev hL (x := nm "addr") (v := .val (.word AD))
      (by ra_mem [tkv]))))
    have e3 := (Option.some.inj ((h3.symm).trans (ev_cw s 20)))
    have := evs_nil_eq hvs3
    subst e1 e3 this
    have hb : BufOK Types.guestC Γ q AD.toNat (1 * (BitVec.ofNat 64 20).toNat + 0) := by
      rw [toNat_ofNat' (by norm_num)]
      exact bufOK_le (own_bufOK hE.2) (by norm_num)
    refine ⟨argsOK_memcpyV hb, fun x hx => ?_, fun _ => trivial⟩
    have hov := argCells_memcpyV hx
    rw [toNat_ofNat' (by norm_num)] at hov
    exact Or.inr (Or.inr (Or.inl (own_foot hE.2 ⟨hov.1, hov.2.1, by have := hov.2.2; omega⟩)))
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ co
    exact ⟨scrOld_cof haC co rfl, fun _ => ⟨hE.1, own_cof co rfl hE.2⟩⟩
  -- return addr
  refine gp_ret ha.hH (fun s Γ q hs hL he hh hE v hv => ?_)
  rw [lk_ev hL (x := nm "addr") (v := .val (.word AD)) (by ra_mem [tkv])] at hv
  cases hv
  exact ⟨AD, rfl, Or.inr ⟨hE.1, bufOK_le (own_bufOK hE.2) (by norm_num)⟩⟩

end InitECandidate.Solver.MemSafe.Ra

#print axioms InitECandidate.Solver.MemSafe.Ra.tail_G
