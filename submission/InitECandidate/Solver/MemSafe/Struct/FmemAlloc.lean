import InitECandidate.Solver.Spec.Inv.Alloc
import InitECandidate.Solver.MemSafe.Struct.StackCode

/-!
# `frame_mem_alloc` (exact return) and the code of `extend_memory`

* `funSpec_frame_mem_alloc`: a returning `frame_mem_alloc(n)` started with word globals
  `frame_mem_ptr = F0`, `scratch_ptr = S0` and `n ≤ S0 - F0` returns `F0`, sets
  `frame_mem_ptr` to `Q = (F0 + n + 7) & -8 ≤ S0`, keeps every other global and the memory
  (`FmemRet`). `extend_memory` relies on the returned block starting at the old pointer (it
  ignores the result), which `AllocSpec` does not say.
* `code_extend_memory`: the body of `extend_memory`, certified by `cbv`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Struct
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## `frame_mem_alloc` -/

def trapIf6 (c : ExpHOL 64) : ProgHOL 64 := .ite c (callD (nm "trap_with") [cw 6]) .skip

def fmemBody : ProgHOL 64 :=
  .dec (nm "p") .one (gv (nm "frame_mem_ptr"))
    (.seq (trapIf6 (.cmp .lower (.op .sub [gv (nm "scratch_ptr"), lv (nm "p")]) (lv (nm "n"))))
      (.dec (nm "q") .one (.op .and [.op .add [lv (nm "p"), lv (nm "n"), cw 7], .op .sub [cw 0, cw 8]])
        (.seq (trapIf6 (.cmp .lower (gv (nm "scratch_ptr")) (lv (nm "q"))))
          (.seq (.assign .global (nm "frame_mem_ptr") (lv (nm "q"))) (.return (lv (nm "p")))))))

theorem entry_frame_mem_alloc : fnEntry Guest.Software.guestFn_frame_mem_alloc =
    (nm "frame_mem_alloc", [(nm "n", .one)], fmemBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_frame_mem_alloc :
    guestCode (nm "frame_mem_alloc") = some ([(nm "n", .one)], fmemBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 10) (by decide)) ⟨_, rfl⟩
    entry_frame_mem_alloc

def fpN' : MlS := nm "frame_mem_ptr"
def spN' : MlS := nm "scratch_ptr"

variable {σ : Type} {X : Ctx 64}

/-- What a returning `frame_mem_alloc(n)` did. -/
def FmemRet (vs : List (ValueHOL 64)) (s0 : PanSemStateFiniteExact 64 σ) (v : ValueHOL 64)
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ N F0 S0 Q : BitVec 64, vs = [.val (.word N)] ∧
    s0.globals.lookup fpN' = some (.val (.word F0)) ∧
    s0.globals.lookup spN' = some (.val (.word S0)) ∧ v = .val (.word F0) ∧
    t.globals.lookup fpN' = some (.val (.word Q)) ∧
    (∀ g, g ≠ fpN' → t.globals.lookup g = s0.globals.lookup g) ∧ t.memory = s0.memory ∧
    N.toNat ≤ (S0 - F0).toNat ∧ Q.toNat = (F0 + (N + BitVec.ofNat 64 7)).toNat / 8 * 8 ∧
    Q.toNat ≤ S0.toNat

theorem funSpec_frame_mem_alloc (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "frame_mem_alloc") (fun vs s r t => ∀ v, r = .returned v → FmemRet vs s v t) := by
  have hf := funRet_trap_with (σ := σ) hC
  apply funSpec_of_hoare
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA, hla⟩ := lookupCode_one code_frame_mem_alloc hl
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hA
  refine hoare_dec fun s _ hs v hv hsh => ?_
  subst hs
  obtain ⟨F0, rfl⟩ := val_of_shapeEq_one hsh
  have hfp : s.globals.lookup fpN' = some (.val (.word F0)) := hv
  have hn0 : s.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hla
  refine hoare_pre (P := fun t => t.locals.lookup (nm "p") = some (.val (.word F0)) ∧
      t.locals.lookup (nm "n") = some (.val (.word N)) ∧ t.globals = s.globals ∧
      t.memory = s.memory) ?_ ?_
  · refine hoare_guard_seq hf ?_
    refine hoare_dec fun t _ ⟨⟨hp, hn, hg, hm⟩, hc⟩ v hv hsh => ?_
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    obtain ⟨S0, F0', hS, hF0', hxe⟩ := ev_sub2_inv hx
    subst hxe
    rw [ev_lw hp] at hF0'
    cases hF0'
    rw [ev_lw hn] at hy
    cases hy
    have hsp : s.globals.lookup spN' = some (.val (.word S0)) := by rw [← hg]; exact hS
    have h1 := lower_false hxy
    have hval : ev t (.op .and [.op .add [lv (nm "p"), lv (nm "n"), cw 7], .op .sub [cw 0, cw 8]]) =
        some (.val (.word ((F0 + (N + BitVec.ofNat 64 7)) &&&
          ((BitVec.ofNat 64 0 - BitVec.ofNat 64 8) &&& ~~~0)))) := by
      rw [ev_op2 (ev_add3 (ev_lw hp) (ev_lw hn) (ev_cw _ 7)) (ev_sub2 (ev_cw _ 0) (ev_cw _ 8))]
      rfl
    rw [hval] at hv
    cases hv
    generalize hQ : (F0 + (N + BitVec.ofNat 64 7)) &&& ((BitVec.ofNat 64 0 - BitVec.ofNat 64 8) &&& ~~~0) = Q
    have hQv : Q.toNat = (F0 + (N + BitVec.ofNat 64 7)).toNat / 8 * 8 := by
      rw [← hQ]; exact Spec.Inv.toNat_mask8 _
    refine hoare_pre (P := fun u => u.locals.lookup (nm "q") = some (.val (.word Q)) ∧
        u.locals.lookup (nm "p") = some (.val (.word F0)) ∧
        u.globals = s.globals ∧ u.memory = s.memory) ?_ ?_
    · refine hoare_guard_seq hf ?_
      refine hoare_seq (R := fun r u => r = none ∧
          u.locals.lookup (nm "p") = some (.val (.word F0)) ∧
          u.globals.lookup fpN' = some (.val (.word Q)) ∧
          (∀ g, g ≠ fpN' → u.globals.lookup g = s.globals.lookup g) ∧ u.memory = s.memory ∧
          Q.toNat ≤ S0.toNat) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine hoare_assignK fun u _ ⟨⟨hq, hp', hg', hm'⟩, hc2⟩ w hw _ => ?_
        rw [ev_lw hq] at hw
        cases hw
        obtain ⟨x2, y2, hx2, hy2, hxy2⟩ := cmp_false hc2
        have hx2' : u.globals.lookup spN' = some (.val (.word x2)) := hx2
        rw [hg', hsp] at hx2'
        cases hx2'
        rw [ev_lw hq] at hy2
        cases hy2
        refine ⟨rfl, hp', ?_, ?_, hm', lower_false hxy2⟩
        · show (u.globals.update (fpN', _)).lookup fpN' = _
          exact lookup_update_self _ _ _
        · intro g hg
          show (u.globals.update (fpN', _)).lookup g = _
          rw [lookup_update_ne _ _ (Ne.symm hg), hg']
      · refine hoare_return fun u _ ⟨_, hp', hfp', hgl, hm', hQle⟩ w hw => ?_
        rw [ev_lw hp'] at hw
        cases hw
        intro v hv
        simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv
        subst hv
        exact ⟨N, F0, S0, Q, rfl, hfp, hsp, rfl, hfp', hgl, hm', h1, hQv, hQle⟩
    · intro u _ hu
      subst hu
      refine ⟨lk_set_self _ _ _, ?_, hg, hm⟩
      rw [lk_set_ne _ _ (by decide)]; exact hp
  · intro t _ ht
    subst ht
    exact ⟨lk_set_self _ _ _, by rw [lk_set_ne _ _ (by decide)]; exact hn0, rfl, rfl⟩

/-! ## `extend_memory` -/

/-- The growth branch: `var ncap = cap * 2; if ncap < nlen { ncap = nlen + 1024 };
frame_mem_alloc(ncap - cap); memzero(MEM + cap, ncap - cap); st ev + 40, ncap` -/
def emGrow : ProgHOL 64 :=
  .dec (nm "ncap") .one (.panop .mul [lv (nm "cap"), cw 2])
    (.seq (.ite (.cmp .lower (lv (nm "ncap")) (lv (nm "nlen")))
        (.assign .local (nm "ncap") (.op .add [lv (nm "nlen"), cw 1024])) .skip)
      (.seq (callD (nm "frame_mem_alloc") [.op .sub [lv (nm "ncap"), lv (nm "cap")]])
        (.seq (callD (nm "memzero") [.op .add [evL 24, lv (nm "cap")],
            .op .sub [lv (nm "ncap"), lv (nm "cap")]])
          (.store (evA 40) (lv (nm "ncap"))))))

/-- `memzero(MEM + len, expand_by); st ev + 32, nlen; return 0` -/
def emTail : ProgHOL 64 :=
  .seq (callD (nm "memzero") [.op .add [evL 24, lv (nm "len")], lv (nm "expand_by")])
    (.seq (.store (evA 32) (lv (nm "nlen"))) rz)

def emBody : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "expand_by")) (cw 0)) rz .skip)
    (.dec (nm "len") .one (evL 32)
      (.dec (nm "cap") .one (evL 40)
        (.dec (nm "nlen") .one (.op .add [lv (nm "len"), lv (nm "expand_by")])
          (.seq (.ite (.cmp .lower (lv (nm "cap")) (lv (nm "nlen"))) emGrow .skip) emTail))))

theorem entry_extend_memory : fnEntry Guest.Software.guestFn_extend_memory =
    (nm "extend_memory", [(nm "expand_by", .one)], emBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_extend_memory :
    guestCode (nm "extend_memory") = some ([(nm "expand_by", .one)], emBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 460) (by decide)) ⟨_, rfl⟩
    entry_extend_memory

end InitECandidate.Solver.MemSafe.Struct
