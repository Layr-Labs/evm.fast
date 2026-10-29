import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify65
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body81_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "result"), none)) "u256_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "result", Flapjack.Exp.var Flapjack.VarKind.local "base"]

def body81_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body81_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "bit") (Flapjack.Exp.const 1#64)) body81_0 body81_1

def body81_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 1#64])

def body81_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "base"), none)) "u256_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "base", Flapjack.Exp.var Flapjack.VarKind.local "base"]

def body81_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "t")
  (Flapjack.Exp.var Flapjack.VarKind.local "len")) body81_4 body81_1

def body81_6 : Prog (BitVec 64) :=
.seq body81_3 body81_5

def body81_7 : Prog (BitVec 64) :=
.seq body81_2 body81_6

def body81_8 : Prog (BitVec 64) :=
.decCall ("bit") (Flapjack.Shape.one) ("u256_bit") ([Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "t"]) body81_7

def body81_9 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "t")
  (Flapjack.Exp.var Flapjack.VarKind.local "len")) body81_8

def body81_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "result")

def body81_11 : Prog (BitVec 64) :=
.seq body81_9 body81_10

def body81_12 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body81_11

def body81_13 : Prog (BitVec 64) :=
.decCall ("len") (Flapjack.Shape.one) ("u256_bit_length") ([Flapjack.Exp.var Flapjack.VarKind.local "b"]) body81_12

def body81_14 : Prog (BitVec 64) :=
.dec ("base") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.var Flapjack.VarKind.local "a") body81_13

def body81_15 : Prog (BitVec 64) :=
.dec ("result") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body81_14

def body81_16 : Prog (BitVec 64) :=
.seq body81_2 body81_3

def body81_17 : Prog (BitVec 64) :=
.seq body81_16 body81_5

def body81_18 : Prog (BitVec 64) :=
.decCall ("bit") (Flapjack.Shape.one) ("u256_bit") ([Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "t"]) body81_17

def body81_19 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "t")
  (Flapjack.Exp.var Flapjack.VarKind.local "len")) body81_18

def body81_20 : Prog (BitVec 64) :=
.seq body81_19 body81_10

def body81_21 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body81_20

def body81_22 : Prog (BitVec 64) :=
.decCall ("len") (Flapjack.Shape.one) ("u256_bit_length") ([Flapjack.Exp.var Flapjack.VarKind.local "b"]) body81_21

def body81_23 : Prog (BitVec 64) :=
.dec ("base") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.var Flapjack.VarKind.local "a") body81_22

def body81_24 : Prog (BitVec 64) :=
.dec ("result") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body81_23

def originalData81 : Decl (BitVec 64) :=
.function { name := "u256_exp", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body81_15, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData81 : Decl (BitVec 64) :=
.function { name := "u256_exp", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body81_24, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original81 := Pancake.PanLang.declToHOL originalData81
def simplified81 := Pancake.PanLang.declToHOL simplifiedData81
end InitECandidate.Proofs.FrontendStages.Declarations
