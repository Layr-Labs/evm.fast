import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify704
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body720_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body720_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body720_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64)) body720_0 body720_1

def body720_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "lt") (Flapjack.Exp.const 0#64)) body720_0 body720_1

def body720_4 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "out") (Flapjack.Exp.var Flapjack.VarKind.local "m")

def body720_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body720_6 : Prog (BitVec 64) :=
.seq body720_4 body720_5

def body720_7 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_to_mont") ([Flapjack.Exp.var Flapjack.VarKind.local "c"]) body720_6

def body720_8 : Prog (BitVec 64) :=
.seq body720_3 body720_7

def body720_9 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("bls_fp_lt_raw") ([Flapjack.Exp.var Flapjack.VarKind.local "c",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13402431016077863595#64, Flapjack.Exp.const 2210141511517208575#64,
      Flapjack.Exp.const 7435674573564081700#64, Flapjack.Exp.const 7239337960414712511#64,
      Flapjack.Exp.const 5412103778470702295#64, Flapjack.Exp.const 1873798617647539866#64]]) body720_8

def body720_10 : Prog (BitVec 64) :=
.decCall ("c") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_from_be48") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 16#64]]) body720_9

def body720_11 : Prog (BitVec 64) :=
.seq body720_2 body720_10

def body720_12 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("is_zero_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 16#64]) body720_11

def originalData720 : Decl (BitVec 64) :=
.function { name := "bls_fp_decode64", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body720_12, returnShape := (Flapjack.Shape.one) }
def simplifiedData720 : Decl (BitVec 64) :=
.function { name := "bls_fp_decode64", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body720_12, returnShape := (Flapjack.Shape.one) }
def original720 := Pancake.PanLang.declToHOL originalData720
def simplified720 := Pancake.PanLang.declToHOL simplifiedData720
end InitECandidate.Proofs.FrontendStages.Declarations
