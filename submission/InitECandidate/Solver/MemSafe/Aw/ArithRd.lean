import InitECandidate.Solver.MemSafe.Aw.RdFw
import InitECandidate.Solver.MemSafe.Helpers.U256Mod

set_option autoImplicit false

/-!
# Read-only callees of the header validation: the u256 arithmetic and the blob-gas formulas
All proved from the code by `PureR` (`.primitive` statements, `throw`, calls to already proved callees).
`u256_div` and `trap_with` come from their existing certificates.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-- A read-only function of the guest, from its declaration. -/
theorem rdSpec_fn {S : List MlS} (hS : ∀ f ∈ S, RdSpec σ X f) (hC : X.code.lookup = guestCode)
    {d : Flapjack.Decl (BitVec 64)} (hd : d ∈ Guest.Software.guestAst)
    (hf : ∃ fd, d = .function fd) {name : MlS} (hname : (fnEntry d).1 = name)
    (hpure : PureR S (fnEntry d).2.2.1 = true) : RdSpec σ X name := by
  have hcode : guestCode name = some (fnEntry d).2 := by
    rw [← hname]
    exact code_of_entry hd hf (Prod.mk.eta (p := fnEntry d))
  exact rdSpec_of_pureR hS (ps := (fnEntry d).2.1) (rsh := (fnEntry d).2.2.2) (by rw [hC]; exact hcode) hpure

theorem rdSpec_of_footS {f : MlS} (h : FootSpecS σ X f WsPre DDR) : RdSpec σ X f :=
  rdSpec_of_strong (h.mono fun vs s r t hh hg hok => by
    obtain ⟨hg1, hm⟩ := hh hg hok.2
    refine ⟨hg1, hm.mono fun a ha => Or.inr ?_⟩
    exact ha)

theorem rdSpec_u256_div (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    RdSpec σ X (nm "u256_div") := rdSpec_of_footS (footS_u256_div hC hA)

def arithFns : List MlS :=
  [nm "u256_from_word", nm "mul64x64", nm "nlz32", nm "u256_add", nm "u256_sub", nm "u256_lt", nm "u256_gt", nm "div64by32", nm "udivmod", nm "udiv", nm "check_gas_limit", nm "u256_mul", nm "u256_mul_full", nm "taylor_exponential", nm "calculate_blob_gas_price", nm "calculate_excess_blob_gas", nm "calculate_base_fee_per_gas", nm "u256_div", nm "u256_is_zero", nm "trap_with"]

theorem rdArith (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    ∀ f ∈ arithFns, RdSpec σ X f := by
  have t0 : RdSpec σ X (nm "trap_with") := rdSpec_trap_with hC
  have t1 : RdSpec σ X (nm "u256_is_zero") := rdSpec_u256_is_zero hC
  have t2 : RdSpec σ X (nm "u256_div") := rdSpec_u256_div hC hA
  have h0 : RdSpec σ X (nm "u256_from_word") :=
    rdSpec_fn (S := []) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_u256_from_word)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 39) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have h1 : RdSpec σ X (nm "mul64x64") :=
    rdSpec_fn (S := []) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_mul64x64)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 59) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have h2 : RdSpec σ X (nm "nlz32") :=
    rdSpec_fn (S := []) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_nlz32)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 62) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have h3 : RdSpec σ X (nm "u256_add") :=
    rdSpec_fn (S := []) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_u256_add)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 56) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have h4 : RdSpec σ X (nm "u256_sub") :=
    rdSpec_fn (S := []) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_u256_sub)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 57) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have h5 : RdSpec σ X (nm "u256_lt") :=
    rdSpec_fn (S := []) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_u256_lt)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 46) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have h6 : RdSpec σ X (nm "u256_gt") :=
    rdSpec_fn (S := [nm "u256_lt"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_u256_gt)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 47) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have h7 : RdSpec σ X (nm "div64by32") :=
    rdSpec_fn (S := []) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_div64by32)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 63) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have h8 : RdSpec σ X (nm "udivmod") :=
    rdSpec_fn (S := [nm "trap_with"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_udivmod)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 33) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have h9 : RdSpec σ X (nm "udiv") :=
    rdSpec_fn (S := [nm "udivmod"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_udiv)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 34) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have h10 : RdSpec σ X (nm "check_gas_limit") :=
    rdSpec_fn (S := [nm "udiv"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_check_gas_limit)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 235) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have h11 : RdSpec σ X (nm "u256_mul") :=
    rdSpec_fn (S := [nm "mul64x64"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_u256_mul)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 60) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have h12 : RdSpec σ X (nm "u256_mul_full") :=
    rdSpec_fn (S := [nm "mul64x64"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_u256_mul_full)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 61) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have h13 : RdSpec σ X (nm "taylor_exponential") :=
    rdSpec_fn (S := [nm "u256_from_word", nm "u256_mul", nm "u256_is_zero", nm "u256_add", nm "u256_mul_full", nm "trap_with", nm "u256_div"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_taylor_exponential)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 232) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have h14 : RdSpec σ X (nm "calculate_blob_gas_price") :=
    rdSpec_fn (S := [nm "taylor_exponential"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_calculate_blob_gas_price)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 233) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have h15 : RdSpec σ X (nm "calculate_excess_blob_gas") :=
    rdSpec_fn (S := [nm "calculate_blob_gas_price", nm "u256_from_word", nm "u256_mul", nm "u256_gt", nm "udiv"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_calculate_excess_blob_gas)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 234) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  have h16 : RdSpec σ X (nm "calculate_base_fee_per_gas") :=
    rdSpec_fn (S := [nm "check_gas_limit", nm "u256_from_word", nm "u256_mul", nm "u256_div", nm "u256_is_zero", nm "u256_add", nm "u256_sub"]) (fun f hf => by simp at hf <;> aesop) hC (d := Guest.Software.guestFn_calculate_base_fee_per_gas)
      (List.getElem_mem (l := Guest.Software.guestAst) (n := 236) (by decide)) ⟨_, rfl⟩ rfl (by cbv)
  intro f hf
  simp [arithFns] at hf
  aesop

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.rdArith
