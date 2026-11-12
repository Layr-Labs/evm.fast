import InitECandidate.Solver.MemSafe.Ra.Win

set_option autoImplicit false

/-!
# `rlp_put_u256`: the summary (sonnet-ra)

```
fun 1 rlp_put_u256(1 dst, {1,1,1,1} v) {
  var 1 mark = heap_mark();
  var 1 tmp = alloc(32);
  var 1 n = u256_to_be_min(v, tmp);
  var 1 w = rlp_encode_bytes(dst, tmp, n);
  heap_release(mark);
  return w;
}
```
`sumSpecA_put_u256_G`: with `dst` a `buf 41`, the call writes only there, grows nothing, and returns
a width `<= 33`.
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

def putSig : Sig := ⟨[.buf 41, .any], [], [], false⟩

def putDef : ProgHOL 64 :=
  .decCall (nm "mark") .one (nm "heap_mark") []
  (.decCall (nm "tmp") .one (nm "alloc") [cw 32]
  (.decCall (nm "n") .one (nm "u256_to_be_min") [lv (nm "v"), lv (nm "tmp")]
  (.decCall (nm "w") .one (nm "rlp_encode_bytes") [lv (nm "dst"), lv (nm "tmp"), lv (nm "n")]
  (.seq (callD (nm "heap_release") [lv (nm "mark")]) (.return (lv (nm "w")))))))

theorem entry_put : fnEntry Guest.Software.guestFn_rlp_put_u256 =
    (nm "rlp_put_u256", [(nm "dst", .one), (nm "v", .comb [.one, .one, .one, .one])], putDef, .one) := by
  conv => lhs; cbv
  conv => rhs; unfold putDef; cbv
  all_goals rfl

theorem code_put : guestCode (nm "rlp_put_u256") =
    some ([(nm "dst", .one), (nm "v", .comb [.one, .one, .one, .one])], putDef, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 228) (by decide)) ⟨_, rfl⟩
    entry_put

theorem retOK_nil {Γ : Gam} {p p' : Ptrs} {vs : List (ValueHOL 64)} {v : ValueHOL 64} :
    RetOK Γ p p' vs [] v := fun i r w hr => by simp at hr

theorem hdrLen_20_32 {n : Nat} (h : n ≤ 32) : Helpers.hdrLen n = 1 := by
  unfold Helpers.hdrLen; simp; omega

theorem sumSpecA_put_u256_G :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "rlp_put_u256") putSig
      (fun _ _ _ => True) (fun _ _ _ _ => False)
      (fun vs s Γ r t Γ' => ∀ v, r = .returned v → ∃ w : BitVec 64, v = .val (.word w) ∧
        w.toNat ≤ 33) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_mono (Pre := fun _ _ _ => True) (PW := fun _ _ _ _ => False)
    (sumSpecA_of_gp2 (Pre := fun _ _ _ => True)
      (Rx := fun _ _ _ _ v => ∃ w : BitVec 64, v = .val (.word w) ∧ w.toNat ≤ 33)
      hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_) (fun _ _ _ h => h) (fun _ _ _ _ h => h)
    (fun vs s Γ r t Γ' h v hv => ?_)
  swap
  · obtain ⟨p', -, w, hw, hle⟩ := h v hv
    exact ⟨w, hw, hle⟩
  intro vs body callee rs hl s0 hs0 hloc Γ0 p0 _ ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, hlen, hbind⟩ := MemSafe.lookupCode_gen code_put hl
  obtain ⟨d, V, rfl⟩ : ∃ d V, vs = [d, V] := by
    match vs, hlen with
    | [d, V], _ => exact ⟨d, V, rfl⟩
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) putSig [] [d, V] s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have h0 : ArgsOK Types.guestC Γ0 p0 putSig.params [d, V] := ha.hargs0
  obtain ⟨D, hD, hbuf0⟩ := h0.2 0 (.buf 41) d (by simp [putSig]) (by simp)
  have hd := wordOf_eq hD
  subst hd
  have hdst := (hbind 0 (by decide) (by simp)).1
  obtain ⟨ws, hws, hVws⟩ := eq_wv_of_shapeEq (k := 4) (hbind 1 (by decide) (by simp)).2
  have hv := (hbind 1 (by decide) (by simp)).1
  subst hVws
  obtain ⟨a0, a1, a2, a3, rfl⟩ := Struct.wv4 hws
  let kv0 : List (MlS × BitVec 64) := [(nm "dst", D)]
  have hL0 : LKVV kv0 (wv [a0, a1, a2, a3]) s0.locals := by
    refine ⟨fun p hp => ?_, by rw [hloc]; exact hv⟩
    simp only [kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
    subst hp
    rw [hloc]; exact hdst
  -- the foot of the destination buffer
  have hfoot : ∀ (m : Nat) (x : BitVec 64), m ≤ 41 → Overlap D.toNat m x → a.Foot x := by
    intro m x hm hx
    refine Or.inr (Or.inl ⟨0, D, by simp [hadef, actOf, argW, wordOf], Or.inl ⟨41, by simp [hadef, actOf, putSig], ?_⟩⟩)
    exact ⟨hx.1, hx.2.1, by have := hx.2.2; omega⟩
  have hbufD : ∀ (Γ : Gam) (q : Ptrs) (s : State σ), Heap a Γ q s → BufOK Types.guestC Γ q D.toNat 41 := fun Γ q s hh' =>
    bufOK_later ha hh' hh'.2.2.2.1 hbuf0
  refine hoareG_conseq (P := GI a (LKVV kv0 (wv [a0, a1, a2, a3])) (fun _ _ _ => True))
    (Q := GP a (fun _ => False) (fun _ _ _ => True)
      (fun Γ' p' _ v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ ∃ w : BitVec 64, v = .val (.word w) ∧
        w.toNat ≤ 33)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨hL0, Γ0, p0, ext_refl _, hh, scrOld_refl _, trivial⟩
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', e1, e2, e3, e4⟩ := gp_final h r' hr hna
    exact ⟨Γ', p', e1, e2, e4⟩
  unfold putDef
  -- var mark = heap_mark()
  refine gp_markH ha hX (L1 := fun w m => LKVV ((nm "mark", w) :: kv0) (wv [a0, a1, a2, a3]) m)
    (E1 := fun w Γ q M => Win a w Γ q) (L2 := fun _ => False) (L3 := fun _ => False)
    (fun s st w hL => lkvv_new (s := { st with locals := s.locals }) hL (by ra_fresh [kv0])
      (by decide) w)
    (fun s Γ q w hh' _ hw => win_mark haC hh' hw) ?_ (fun _ _ _ h => h.elim)
  intro Mk
  -- var tmp = alloc(32)
  refine gp_decCallW ha (sumA_of_csumm alloc_C) (funSpec_true _) (by simp) (fun h => by simp at h)
    (L1 := fun T m => LKVV ((nm "tmp", T) :: (nm "mark", Mk) :: kv0) (wv [a0, a1, a2, a3]) m)
    (E1 := fun T Γ q M => Win a Mk Γ q ∧ Own a.p0 q Γ T.toNat 32)
    (L2 := fun _ => False) (L3 := fun _ => False)
    ?_ ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q hs hL hh' hE vs hvs
    have h := anyArgsG (a := a) (Γ := Γ) (q := q) (sg' := ⟨[.any], [.freshArg 0 1 0], [], false⟩) (by simp) rfl hvs
    exact ⟨h.1, fun x hx => absurd hx (h.2 x), fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ co
    refine ⟨scrOld_cof haC co rfl, fun T hT => ⟨win_cof haC co rfl hE, ?_⟩⟩
    rw [evs_cons (ev_cw s 32) evs_nil] at hvs
    cases hvs
    obtain ⟨x, hx, hfb⟩ := co.ret _ hT 0 (.freshArg 0 1 0) T rfl (by simp [flattenHOL])
    simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hx
    subst hx
    have := own_of_fresh (a := a) (heap_ord co.heap0) (heap_ord co.heap) co.mono co.heap0.2.2.1
      ha.hord0 hfb
    simpa [toNat_ofNat'] using this
  · intro s st T hL
    exact lkvv_new (s := { st with locals := s.locals }) hL (by ra_fresh [kv0]) (by decide) T
  intro T
  -- var n = u256_to_be_min(v, tmp)
  refine gp_decCallW ha (sumA_of_csumm toBeMin_C) (funSpec_u256_to_be_min hX) (by simp)
    (fun h => by simp at h)
    (L1 := fun N m => LKVV ((nm "n", N) :: (nm "tmp", T) :: (nm "mark", Mk) :: kv0)
      (wv [a0, a1, a2, a3]) m)
    (E1 := fun N Γ q M => Win a Mk Γ q ∧ N.toNat ≤ 32)
    (L2 := fun _ => False) (L3 := fun _ => False)
    ?_ ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q hs hL hh' hE vs hvs
    have hT : s.locals.lookup (nm "tmp") = some (.val (.word T)) := hL.1 (nm "tmp", T) (by simp)
    rw [evs_cons (Struct.ev_lw' hL.2) (evs_cons (ev_lw hT) evs_nil)] at hvs
    cases hvs
    exact ⟨ao_ab _ T (own_bufOK hE.2),
      fun x hx => Or.inr (Or.inr (Or.inl (own_foot hE.2 (ac_ab hx)))), fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ co
    refine ⟨scrOld_cof haC co rfl, fun N hN => ⟨win_cof haC co rfl hE.1, ?_⟩⟩
    have hT : s.locals.lookup (nm "tmp") = some (.val (.word T)) := hL.1 (nm "tmp", T) (by simp)
    rw [evs_cons (Struct.ev_lw' hL.2) (evs_cons (ev_lw hT) evs_nil)] at hvs
    cases hvs
    have hbo := own_bufOK (C := Types.guestC) hE.2
    have hend := bufOK_end (heap_ord co.heap0) (layout_heap haC co.heap0) (b := T.toNat) (n := 32)
      T.isLt (by omega) (by omega) hbo
    have hse : scratchEnd < 2 ^ 60 := by decide
    have := hLc (by simp [Good, hN]) a0 a1 a2 a3 T rfl (by omega)
    obtain ⟨-, -, hret⟩ := this
    obtain ⟨hw, -⟩ := hret _ hN
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    rw [hw]
    exact Rec.ubyF_le a0 a1 a2 a3
  · intro s st N hL
    exact lkvv_new (s := { st with locals := s.locals }) hL (by ra_fresh [kv0]) (by decide) N
  intro N
  -- var w = rlp_encode_bytes(dst, tmp, n)
  refine gp_decCallW ha (sumA_of_csumm encBytes_C)
    (Helpers.footRet_rlp_encode_bytes (σ := σ) (X := guestCtx) hX Helpers.alignedDom_guestCtx) (by simp)
    (fun h => by simp at h)
    (L1 := fun W m => LKVV ((nm "w", W) :: (nm "n", N) :: (nm "tmp", T) :: (nm "mark", Mk) :: kv0)
      (wv [a0, a1, a2, a3]) m)
    (E1 := fun W Γ q M => Win a Mk Γ q ∧ W.toNat ≤ 33)
    (L2 := fun _ => False) (L3 := fun _ => False)
    ?_ ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q hs hL hh' hE vs hvs
    have hT : s.locals.lookup (nm "tmp") = some (.val (.word T)) := hL.1 (nm "tmp", T) (by simp)
    have hN : s.locals.lookup (nm "n") = some (.val (.word N)) := hL.1 (nm "n", N) (by simp)
    have hDl : s.locals.lookup (nm "dst") = some (.val (.word D)) := hL.1 (nm "dst", D) (by simp [kv0])
    rw [evs_cons (ev_lw hDl) (evs_cons (ev_lw hT) (evs_cons (ev_lw hN) evs_nil))] at hvs
    cases hvs
    refine ⟨ao_barg D _ N 9 (bufOK_le (hbufD Γ q s hh') (by have := hE.2; omega)),
      fun x hx => hfoot _ x (by have := hE.2; have := ac_barg hx; omega) (ac_barg hx), fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ co
    refine ⟨scrOld_cof haC co rfl, fun W hW => ⟨win_cof haC co rfl hE.1, ?_⟩⟩
    have hT : s.locals.lookup (nm "tmp") = some (.val (.word T)) := hL.1 (nm "tmp", T) (by simp)
    have hN : s.locals.lookup (nm "n") = some (.val (.word N)) := hL.1 (nm "n", N) (by simp)
    have hDl : s.locals.lookup (nm "dst") = some (.val (.word D)) := hL.1 (nm "dst", D) (by simp [kv0])
    rw [evs_cons (ev_lw hDl) (evs_cons (ev_lw hT) (evs_cons (ev_lw hN) evs_nil))] at hvs
    cases hvs
    have hb41 := bufOK_end (heap_ord co.heap0) (layout_heap haC co.heap0) (b := D.toNat) (n := 41)
      D.isLt (by omega) (by omega) (hbufD Γ q s co.heap0)
    have hN32 := hE.2
    have hhd := hdrLen_20_32 hN32
    have hP : Helpers.EncPre [.val (.word D), .val (.word T), .val (.word N)] :=
      ⟨D, N, by simp [argW, wordOf], by simp [argW, wordOf], by rw [hhd]; omega⟩
    obtain ⟨-, -, hret⟩ := hLc (by simp [Good, hW]) hP
    obtain ⟨k, hk, -, hk2, -⟩ := hret _ hW N (by simp [argW, wordOf])
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hk
    rw [hhd] at hk2
    have hk64 : k < 2 ^ 64 := by omega
    rw [hk, toNat_ofNat' hk64]
    omega
  · intro s st W hL
    exact lkvv_new (s := { st with locals := s.locals }) hL (by ra_fresh [kv0]) (by decide) W
  intro W
  -- heap_release(mark); return w
  refine gp_seq (gp_relH ha hX (E' := fun Γ q M => W.toNat ≤ 33) (mk := nm "mark") (Mk := Mk)
    (fun m hm => hm.1 (nm "mark", Mk) (by simp)) (fun s Γ q hh' hE => winOK_win ha haC hh' hE.1)
    (fun Γ q M hE => hE.2)) ?_
  refine gp_ret ha.hH (fun s Γ q hs hL he hh' hE v hv => ?_)
  rw [ev_lw (hL.1 (nm "w", W) (by simp))] at hv
  cases hv
  exact ⟨retOK_nil, W, rfl, hE⟩

end InitECandidate.Solver.MemSafe.Ra

#print axioms InitECandidate.Solver.MemSafe.Ra.sumSpecA_put_u256_G
