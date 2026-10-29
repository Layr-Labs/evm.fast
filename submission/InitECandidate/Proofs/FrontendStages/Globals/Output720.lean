import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data720
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate704
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody720_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody720_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody720_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64)) globalBody720_0 globalBody720_1

def globalBody720_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "lt") (Flapjack.Exp.const 0#64)) globalBody720_0 globalBody720_1

def globalBody720_4 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "out") (Flapjack.Exp.var Flapjack.VarKind.local "m")

def globalBody720_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody720_6 : Prog (BitVec 64) :=
.seq globalBody720_4 globalBody720_5

def globalBody720_7 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_to_mont") ([Flapjack.Exp.var Flapjack.VarKind.local "c"]) globalBody720_6

def globalBody720_8 : Prog (BitVec 64) :=
.seq globalBody720_3 globalBody720_7

def globalBody720_9 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("bls_fp_lt_raw") ([Flapjack.Exp.var Flapjack.VarKind.local "c",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13402431016077863595#64, Flapjack.Exp.const 2210141511517208575#64,
      Flapjack.Exp.const 7435674573564081700#64, Flapjack.Exp.const 7239337960414712511#64,
      Flapjack.Exp.const 5412103778470702295#64, Flapjack.Exp.const 1873798617647539866#64]]) globalBody720_8

def globalBody720_10 : Prog (BitVec 64) :=
.decCall ("c") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_from_be48") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 16#64]]) globalBody720_9

def globalBody720_11 : Prog (BitVec 64) :=
.seq globalBody720_2 globalBody720_10

def globalBody720_12 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("is_zero_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 16#64]) globalBody720_11

def globalData720 : Decl (BitVec 64) :=
.function { name := "bls_fp_decode64", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody720_12, returnShape := (Flapjack.Shape.one) }
def globalOutput720 := Pancake.PanLang.declToHOL globalData720
end InitECandidate.Proofs.FrontendStages.Declarations
