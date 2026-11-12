import InitECandidate.Solver.MemSafe.HtabEntries.JGet
import InitECandidate.Solver.MemSafe.HtabEntries.NoExcHtab

/-!
# `htab_item`

```
fun {1,1,1} htab_item(1 t, 1 ordinal) {
  if ordinal >=+ (lds 1 (t + 24)) { return <0, 0, 0>; }
  var leaf = lds 1 ((lds 1 (t + 48)) + ordinal * 8); var stride = lds 1 (t + 8);
  var keyp = (lds 1 (t + 32)) + leaf * stride; var val = lds 1 ((lds 1 (t + 40)) + leaf * 32 + 8);
  return <1, keyp, val>; }
```

* `funSpec_item_ret`: a found result `<a, b, c>` (`a ≠ 0`) has `ordinal < count`,
  `b = keyPtr (ORD ordinal)` and `c = LEFT (ORD ordinal)` (`HiRet`);
* `funSpec_item_j`: one call: memory, globals, domain and byte order unchanged, and `HiRet`;
* `item_key_reg`: in a well-formed table the key bytes of a found item lie in the table's
  region (the key array), without wrapping; `item_leafVal`: its value is a `LeafVal`.
-/

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def hiTail : ProgHOL 64 :=
  .dec (nm "leaf") .one (.load .one (.op .add [.load .one (.op .add [lv (nm "t"), cw 48]),
      .panop .mul [lv (nm "ordinal"), cw 8]]))
    (.dec (nm "stride") .one (.load .one (.op .add [lv (nm "t"), cw 8]))
      (.dec (nm "keyp") .one (.op .add [.load .one (.op .add [lv (nm "t"), cw 32]),
          .panop .mul [lv (nm "leaf"), lv (nm "stride")]])
        (.dec (nm "val") .one (.load .one (.op .add [.load .one (.op .add [lv (nm "t"), cw 40]),
            .panop .mul [lv (nm "leaf"), cw 32], cw 8]))
          (.return (.rstruct [cw 1, lv (nm "keyp"), lv (nm "val")])))))

def hiBody : ProgHOL 64 :=
  .seq (.ite (.cmp .notLower (lv (nm "ordinal")) (.load .one (.op .add [lv (nm "t"), cw 24])))
      (.return (.rstruct [cw 0, cw 0, cw 0])) .skip) hiTail

theorem entry_htab_item : fnEntry Guest.Software.guestFn_htab_item =
    (nm "htab_item", [(nm "t", .one), (nm "ordinal", .one)], hiBody, .comb [.one, .one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_htab_item : guestCode (nm "htab_item") =
    some ([(nm "t", .one), (nm "ordinal", .one)], hiBody, .comb [.one, .one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 143) (by decide)) ⟨_, rfl⟩
    entry_htab_item

/-- A found item: ordinal below the count, its key slot and its value. -/
def HiRet (s : State σ) (T I : BitVec 64) (v : ValueHOL 64) : Prop :=
  ∀ a b c : BitVec 64, v = .rStruct [.val (.word a), .val (.word b), .val (.word c)] → a ≠ 0 →
    I.toNat < Inv.CNT s.memory T ∧ b = Inv.keyPtr s.memory T (Inv.ORD s.memory T I) ∧
      c = Inv.LEFT s.memory T (Inv.ORD s.memory T I)

theorem ld_w {u : State σ} {e : ExpHOL 64} {w : BitVec 64} (he : ev u e = some (.val (.word w)))
    {v : ValueHOL 64} (h : ev u (.load .one e) = some v) : v = .val (.word (rd u.memory w)) := by
  obtain ⟨w', hw', -, rfl⟩ := Mpt.Leaves.ev_load1_inv' h
  rw [he] at hw'
  cases hw'
  rfl

theorem funSpec_item_ret (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_item") (fun vs s r _ => ∀ v, r = .returned v → ∀ T I,
      vs = [.val (.word T), .val (.word I)] → HiRet s T I v) := by
  refine FunSpec.mono (funSpec_of_hoare (R := fun vs s v _ => ∀ T I,
      vs = [.val (.word T), .val (.word I)] → HiRet s T I v) ?_) fun _ _ _ _ h => h
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_htab_item (by decide) hl
  obtain ⟨T, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨I, rfl⟩ := val_of_shapeEq_one hsB
  have hlt : s0.locals.lookup (nm "t") = some (.val (.word T)) := by rw [hloc]; exact hA
  have hli : s0.locals.lookup (nm "ordinal") = some (.val (.word I)) := by rw [hloc]; exact hB
  refine hoare_conseq (Q := fun r _ => ∀ v, r = some (.returned v) → HiRet s0 T I v) ?_
    (fun _ _ h => h) fun r t _ _ h v hv T' I' hvs => by
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
      obtain ⟨rfl, rfl⟩ := hvs
      exact h v hv
  let J : State σ → Prop := fun t => t.locals.lookup (nm "t") = some (.val (.word T)) ∧
    t.locals.lookup (nm "ordinal") = some (.val (.word I)) ∧ t.memory = s0.memory
  refine hoare_pre (P := J) ?_ fun t _ ht => by subst ht; exact ⟨hlt, hli, rfl⟩
  unfold hiBody
  refine Mpt.Leaves.hoare_retGuard (fun t _ _ v hv => fun w hw => ?_) ?_
  · simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
    subst hw
    intro a b c hab ha
    rw [ev_rstruct (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) evs_nil)))] at hv
    rw [← Option.some.inj hv] at hab
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
      and_true] at hab
    exact absurd hab.1.symm ha
  -- the count check failed: `ordinal < count`
  refine hoare_pre (P := fun t => J t ∧ I.toNat < Inv.CNT s0.memory T) ?_ fun t _ ⟨hJ, hc⟩ => ⟨hJ, by
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    rw [Mpt.Leaves.ev_lv' hJ.2.1] at hx
    cases hx
    have hy' := ld_w (ev_add2 (Mpt.Leaves.ev_lv' hJ.1) (ev_cw _ 24)) hy
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hy'
    subst hy'
    have := Inv.notLower_false hxy
    rw [hJ.2.2] at this
    exact this⟩
  unfold hiTail
  refine Mpt.Leaves.hoare_decL (fun _ _ _ h => h) fun u _ ⟨⟨j1, j2, j3⟩, hc⟩ v hv _ => ?_
  obtain ⟨w, hw, -, rfl⟩ := Mpt.Leaves.ev_load1_inv' hv
  obtain ⟨x, y, hx, hy, hxy⟩ := Mpt.Leaves.ev_add2_inv' hw
  have hx' := ld_w (ev_add2 (Mpt.Leaves.ev_lv' j1) (ev_cw _ 48)) hx
  rw [ev_mul2 (Mpt.Leaves.ev_lv' j2) (ev_cw _ 8)] at hy
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hx' hy hxy
  subst hx' hy hxy
  set L := rd u.memory (rd u.memory (T + BitVec.ofNat 64 48) + I * BitVec.ofNat 64 8) with hL
  -- `leaf`
  refine Mpt.Leaves.hoare_decL (fun _ _ _ h => h) fun u1 _ hu1 v1 hv1 _ => ?_
  have m1 : u1.memory = u.memory := by rw [hu1]; rfl
  have k1t : u1.locals.lookup (nm "t") = some (.val (.word T)) := by
    rw [hu1, lk_set_ne _ _ (by decide)]; exact j1
  have k1l : u1.locals.lookup (nm "leaf") = some (.val (.word L)) := by
    rw [hu1]; exact lk_set_self _ _ _
  have hv1' := ld_w (ev_add2 (Mpt.Leaves.ev_lv' k1t) (ev_cw _ 8)) hv1
  subst hv1'
  -- `stride`
  refine Mpt.Leaves.hoare_decL (fun _ _ _ h => h) fun u2 _ hu2 v2 hv2 _ => ?_
  have m2 : u2.memory = u.memory := by rw [hu2]; exact m1
  have k2t : u2.locals.lookup (nm "t") = some (.val (.word T)) := by
    rw [hu2, lk_set_ne _ _ (by decide)]; exact k1t
  have k2l : u2.locals.lookup (nm "leaf") = some (.val (.word L)) := by
    rw [hu2, lk_set_ne _ _ (by decide)]; exact k1l
  have k2s : u2.locals.lookup (nm "stride") = some (.val (.word (rd u1.memory (T + BitVec.ofNat 64 8)))) := by
    rw [hu2]; exact lk_set_self _ _ _
  obtain ⟨x2, y2, hx2, hy2, hxy2⟩ := Mpt.Leaves.ev_add2_inv' hv2
  have hx2' := ld_w (ev_add2 (Mpt.Leaves.ev_lv' k2t) (ev_cw _ 32)) hx2
  rw [ev_mul2 (Mpt.Leaves.ev_lv' k2l) (Mpt.Leaves.ev_lv' k2s)] at hy2
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hx2' hy2
  subst hx2' hy2
  subst hxy2
  -- `keyp`
  refine Mpt.Leaves.hoare_decL (fun _ _ _ h => h) fun u3 _ hu3 v3 hv3 _ => ?_
  have m3 : u3.memory = u.memory := by rw [hu3]; exact m2
  have k3t : u3.locals.lookup (nm "t") = some (.val (.word T)) := by
    rw [hu3, lk_set_ne _ _ (by decide)]; exact k2t
  have k3l : u3.locals.lookup (nm "leaf") = some (.val (.word L)) := by
    rw [hu3, lk_set_ne _ _ (by decide)]; exact k2l
  have k3k : u3.locals.lookup (nm "keyp") =
      some (.val (.word (rd u2.memory (T + BitVec.ofNat 64 32) + L * rd u1.memory (T + BitVec.ofNat 64 8)))) := by
    rw [hu3]; exact lk_set_self _ _ _
  obtain ⟨w3, hw3, -, rfl⟩ := Mpt.Leaves.ev_load1_inv' hv3
  obtain ⟨x3, y3, z3, hx3, hy3, hz3, hxyz3⟩ := Mpt.Leaves.ev_add3_inv' hw3
  have hx3' := ld_w (ev_add2 (Mpt.Leaves.ev_lv' k3t) (ev_cw _ 40)) hx3
  rw [ev_mul2 (Mpt.Leaves.ev_lv' k3l) (ev_cw _ 32)] at hy3
  rw [ev_cw] at hz3
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hx3' hy3 hz3 hxyz3
  subst hx3' hy3 hz3 hxyz3
  -- the return
  refine hoare_return fun t _ ht v hv => fun w hw => ?_
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
  subst hw
  have k4k : t.locals.lookup (nm "keyp") =
      some (.val (.word (rd u2.memory (T + BitVec.ofNat 64 32) + L * rd u1.memory (T + BitVec.ofNat 64 8)))) := by
    rw [ht, lk_set_ne _ _ (by decide)]; exact k3k
  have k4v : t.locals.lookup (nm "val") = some (.val (.word (rd u3.memory
      (rd u3.memory (T + BitVec.ofNat 64 40) + (L * BitVec.ofNat 64 32 + BitVec.ofNat 64 8))))) := by
    rw [ht]; exact lk_set_self _ _ _
  rw [ev_rstruct (evs_cons (ev_cw _ 1) (evs_cons (Mpt.Leaves.ev_lv' k4k)
    (evs_cons (Mpt.Leaves.ev_lv' k4v) evs_nil)))] at hv
  intro a b c hab _
  rw [← Option.some.inj hv] at hab
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
    and_true] at hab
  obtain ⟨-, rfl, rfl⟩ := hab
  refine ⟨hc, ?_, ?_⟩
  · rw [m2, m1, hL, j3]; rfl
  · rw [m3, hL, j3, ← BitVec.add_assoc]; rfl

def itemFns : EntryList := [fnEntry Guest.Software.guestFn_htab_item]

theorem itemFns_valid : ∀ e ∈ itemFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [itemFns, List.mem_cons, List.not_mem_nil, or_false] at he
  subst he
  exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 143) (by decide)) ⟨_, rfl⟩

set_option maxHeartbeats 0 in
theorem itemFns_gw (g : MlS) : itemFns.all (fun e => gwFreeB g (itemFns.map Prod.fst) e.2.2.1) = true := by
  conv => lhs; cbv

theorem item_mem' : (itemFns.map Prod.fst).contains (nm "htab_item") = true := by decide_cbv

/-- **One call of `htab_item`**: nothing but the result changes. -/
theorem funSpec_item_j (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_item") (fun vs s r t => t.memory = s.memory ∧
      (∀ g, t.globals.lookup g = s.globals.lookup g) ∧ t.memaddrs = s.memaddrs ∧ t.be = s.be ∧
      ∀ v, r = .returned v → ∀ T I, vs = [.val (.word T), .val (.word I)] → HiRet s T I v) := by
  have h1 := Inv.funSpec_read (σ := σ) hC Inv.item_mem
  have h3 := funSpec_item_ret (σ := σ) hC
  intro vs body callee rs hl s hs hloc r hr
  refine ⟨(h1 vs body callee rs hl s hs hloc r hr).1, fun g => ?_, memaddrs_preserved s body,
    Inv.be_preserved s body, h3 vs body callee rs hl s hs hloc r hr⟩
  exact funSpec_gw (g := g)
    (by rw [hC]; exact closed_of_entries (chk := gwFreeB g) itemFns_valid (itemFns_gw g))
    item_mem' vs body callee rs hl s hs hloc r hr

theorem xchk_htab_item : xChk [] false (declPair Guest.Software.guestFn_htab_item).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_htab_item (hX : X.code.lookup = guestCode) : NoExc σ X (nm "htab_item") :=
  noExc_of_pair (noExcTab_nil (σ := σ)) hX (p := declPair Guest.Software.guestFn_htab_item)
    (declPair_valid (List.getElem_mem (n := 143) (by decide)) ⟨_, rfl⟩) xchk_htab_item

/-- The key slot of a live entry lies in the table's key array, without wrapping. -/
theorem item_key_reg {s : State σ} {T I : BitVec 64} (hwf : Inv.TableWF s T)
    (hI : I.toNat < Inv.CNT s.memory T) :
    (Inv.keyPtr s.memory T (Inv.ORD s.memory T I)).toNat + (Inv.hdr s.memory T 0).toNat ≤ 2 ^ 64 ∧
    ∀ a : BitVec 64, (Inv.keyPtr s.memory T (Inv.ORD s.memory T I)).toNat ≤ a.toNat →
      a.toNat < (Inv.keyPtr s.memory T (Inv.ORD s.memory T I)).toNat + (Inv.hdr s.memory T 0).toNat →
      Inv.TableRegion s.memory T a := by
  obtain ⟨hsep, L, hsh, -⟩ := hwf
  obtain ⟨hlv, -, -⟩ := hsh.order_live I hI
  obtain ⟨h1, h2⟩ := hsh.live_range _ hlv
  obtain ⟨-, -, -, -, -, hkl, -, -, -, hK, -⟩ := hsep
  have hjS : (Inv.ORD s.memory T I).toNat * (Inv.hdr s.memory T 8).toNat ≤
      Inv.CAP s.memory T * (Inv.hdr s.memory T 8).toNat := Nat.mul_le_mul_right _ h2
  have hCS : Inv.CAP s.memory T * (Inv.hdr s.memory T 8).toNat + (Inv.hdr s.memory T 8).toNat =
      (Inv.hdr s.memory T 8).toNat * (Inv.CAP s.memory T + 1) := by
    rw [Nat.mul_comm (Inv.hdr s.memory T 8).toNat, Nat.add_mul, Nat.one_mul]
  have hK32 := (Inv.hdr s.memory T 32).isLt
  have hlt : (Inv.hdr s.memory T 32).toNat +
      (Inv.ORD s.memory T I).toNat * (Inv.hdr s.memory T 8).toNat < 2 ^ 64 := by
    rcases Nat.eq_zero_or_pos (Inv.hdr s.memory T 8).toNat with h0 | hp
    · rw [h0, Nat.mul_zero]; omega
    · omega
  have hkp : (Inv.keyPtr s.memory T (Inv.ORD s.memory T I)).toNat =
      (Inv.hdr s.memory T 32).toNat + (Inv.ORD s.memory T I).toNat * (Inv.hdr s.memory T 8).toNat := by
    unfold Inv.keyPtr
    rw [BitVec.toNat_add, BitVec.toNat_mul, Nat.mod_eq_of_lt (a := (Inv.ORD s.memory T I).toNat * _)
      (by omega), Nat.mod_eq_of_lt hlt]
  rw [hkp]
  refine ⟨by omega, fun a ha1 ha2 => Or.inr (Or.inr (Or.inr ⟨by omega, by omega⟩))⟩

/-- The value of a live entry is a leaf value. -/
theorem item_leafVal {m : Mem} {T I : BitVec 64} (hI : I.toNat < Inv.CNT m T) :
    Inv.LeafVal m T (Inv.LEFT m T (Inv.ORD m T I)) := ⟨I, hI, rfl⟩

end InitECandidate.Solver.MemSafe.HtabEntries
