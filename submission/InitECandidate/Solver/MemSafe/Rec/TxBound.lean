import InitECandidate.Solver.MemSafe.Rec.PayAu
import InitECandidate.Solver.MemSafe.Rec.TxEncEnv

set_option autoImplicit false

/-!
# `tx_encode_bound`: its value

**`footS_tx_encode_bound`**: `tx_encode_bound(TX)` keeps memory and globals and returns
`boundF m TX ALPf AUPf = 655 + DATA_N + ALPf(ACC, ACC_N) + AUPf(AUTH, AUTH_N) + 33 · BH_N`
(modulo `2^64`), `EncHyps.bval`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type} {X : Ctx 64}

theorem ev_op_evs {s : State σ} {o : BinOp} {es : List (ExpHOL 64)} {v : ValueHOL 64}
    (h : ev s (.op o es) = some v) : ∃ vs, evs s es = some vs := by
  simp only [ev, evalHOLExact] at h
  split at h
  · rename_i values hvals
    exact ⟨values, hvals⟩
  · simp at h

/-! ## `tx_encode_bound` -/

def tebBody : ProgHOL 64 :=
  .decCall (nm "al") .one (nm "access_list_payload_len") [tw 208, tw 216]
    (.decCall (nm "au") .one (nm "auth_list_payload_len") [tw 272, tw 280]
      (.dec (nm "bh") .one (.panop .mul [cw 33, tw 264])
        (.return (.op .add [cw 64, .panop .mul [cw 17, cw 33], cw 30, tw 200, lv (nm "al"),
          lv (nm "au"), lv (nm "bh")]))))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_tx_encode_bound : fnEntry Guest.Software.guestFn_tx_encode_bound =
    (nm "tx_encode_bound", [(nm "tx", .one)], tebBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_tx_encode_bound : guestCode (nm "tx_encode_bound") =
    some ([(nm "tx", .one)], tebBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 327) (by decide)) ⟨_, rfl⟩
    entry_tx_encode_bound

theorem bound_val (d x : BitVec 64) (a b : Nat) :
    BitVec.ofNat 64 64 + (BitVec.ofNat 64 17 * BitVec.ofNat 64 33 + (BitVec.ofNat 64 30 + (d +
      (BitVec.ofNat 64 a + (BitVec.ofNat 64 b + (BitVec.ofNat 64 33 * x + 0)))))) =
      BitVec.ofNat 64 (655 + d.toNat + a + b + 33 * x.toNat) := by
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
  simp
  omega

theorem footS_tx_encode_bound (hC : X.code.lookup = guestCode) :
    FootRetS σ X (nm "tx_encode_bound") (fun _ _ => True) NoF
      (fun vs s v => ∀ TX : BitVec 64, vs = [.val (.word TX)] →
        v = .val (.word (BitVec.ofNat 64 (boundF s.memory TX ALPf AUPf)))) := by
  have hAl := footS_access_list_payload_len (σ := σ) hC
  have hAu := footS_auth_list_payload_len (σ := σ) hC
  refine footRetS_of_hoareGX fun vs body callee rs hl s0 _ hloc _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, B, rfl, hsB, hlb⟩ := lookupCode_one code_tx_encode_bound hl
  obtain ⟨TX, rfl⟩ := val_of_shapeEq_one hsB
  have hT0 : s0.locals.lookup (nm "tx") = some (.val (.word TX)) := by rw [hloc]; exact hlb
  set m0 := s0.memory
  have htw : ∀ (t : State σ) (k : Nat), t.locals.lookup (nm "tx") = some (.val (.word TX)) →
      t.memory = m0 → ∀ v, ev t (tw k) = some v → v = .val (.word (fld m0 TX k)) := by
    intro t k ht hm v hv
    have := ev_ld1 (ev_add2 (ev_lw ht) (ev_cw _ k)) hv
    rw [hm] at this
    exact this
  unfold tebBody
  refine hoareGX_decCall (L' := fun _ _ => True) hAl (fun _ _ _ _ _ _ => ⟨trivial, fun _ h => h⟩) ?_
    (fun _ _ _ _ => trivial)
  intro s1 vs v1 callee _ hp1 hvs hR _
  have hm1 : s1.memory = m0 := mem_eq_of_bw hp1.2
  have ht1 : s1.locals.lookup (nm "tx") = some (.val (.word TX)) := by rw [hp1.1]; exact hT0
  obtain ⟨u1, vs1, rfl, hu1, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨u2, vs2, rfl, hu2, hvs2⟩ := evs_cons_inv hvs1
  rw [evs_nil] at hvs2
  cases hvs2
  rw [htw s1 208 ht1 hm1 _ hu1, htw s1 216 ht1 hm1 _ hu2] at hR
  have hv1 := hR _ _ rfl
  subst hv1
  rw [show (callEntryStateHOLFinite s1 callee).memory = m0 from hm1]
  refine hoareGX_decCall (L' := fun _ _ => True) hAu (fun _ _ _ _ _ _ => ⟨trivial, fun _ h => h⟩) ?_
    (fun _ _ _ _ => trivial)
  intro s2 vs v2 callee _ hp2 hvs hR _
  have hm2 : s2.memory = m0 := mem_eq_of_bw hp2.2
  have ht2 : s2.locals.lookup (nm "tx") = some (.val (.word TX)) := by
    rw [hp2.1, lookup_update_ne _ _ (by decide)]; exact ht1
  obtain ⟨u1, vs1, rfl, hu1, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨u2, vs2, rfl, hu2, hvs2⟩ := evs_cons_inv hvs1
  rw [evs_nil] at hvs2
  cases hvs2
  rw [htw s2 272 ht2 hm2 _ hu1, htw s2 280 ht2 hm2 _ hu2] at hR
  have hv2 := hR _ _ rfl
  subst hv2
  rw [show (callEntryStateHOLFinite s2 callee).memory = m0 from hm2]
  refine hoareGX_dec (L' := fun _ _ => True) (fun s3 _ hp3 v hv _ => ?_) (fun _ _ _ _ => trivial)
  have hm3 : s3.memory = m0 := mem_eq_of_bw hp3.2
  have ht3 : s3.locals.lookup (nm "tx") = some (.val (.word TX)) := by
    rw [hp3.1, lookup_update_ne _ _ (by decide)]; exact ht2
  obtain ⟨x, y, hx, hy, rfl⟩ := Spec.Mpt.Leaves.ev_mul2_inv' hv
  rw [ev_cw] at hx
  cases hx
  have hy' := htw s3 264 ht3 hm3 _ hy
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hy'
  subst hy'
  refine hoareGX_return fun t _ hp v hv => ?_
  have h1 := hp.1
  have hm4 : t.memory = m0 := mem_eq_of_bw hp.2
  have ht4 : t.locals.lookup (nm "tx") = some (.val (.word TX)) := by
    rw [h1, lookup_update_ne _ _ (by decide)]; exact ht3
  rw [hp3.1, hp2.1] at h1
  obtain ⟨vs, hvs⟩ := ev_op_evs hv
  obtain ⟨_, vs, rfl, -, hvs⟩ := evs_cons_inv hvs
  obtain ⟨_, vs, rfl, -, hvs⟩ := evs_cons_inv hvs
  obtain ⟨_, vs, rfl, -, hvs⟩ := evs_cons_inv hvs
  obtain ⟨u, vs, rfl, hu, -⟩ := evs_cons_inv hvs
  have hu' := htw t 200 ht4 hm4 u hu
  subst hu'
  rw [ev_op (xs := [BitVec.ofNat 64 64, BitVec.ofNat 64 17 * BitVec.ofNat 64 33, BitVec.ofNat 64 30,
      fld m0 TX 200, _, _, _]) (evs_cons (ev_cw _ 64) (evs_cons (ev_mul2 (ev_cw _ 17) (ev_cw _ 33))
    (evs_cons (ev_cw _ 30) (evs_cons hu
    (evs_cons (ev_lw (by rw [h1, lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide),
      lookup_update_self]))
    (evs_cons (ev_lw (by rw [h1, lookup_update_ne _ _ (by decide), lookup_update_self]))
    (evs_cons (ev_lw (by rw [h1, lookup_update_self])) evs_nil)))))))] at hv
  cases hv
  intro TX' hTX
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hTX
  subst hTX
  show ValueHOL.val (HolWordLab.word (_ + (_ + (_ + (_ + (_ + (_ + (_ + 0)))))))) = _
  rw [bound_val]
  rfl

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.footS_tx_encode_bound
