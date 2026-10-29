import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify813
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body829_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "cplx"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "words"],
      Flapjack.Exp.var Flapjack.VarKind.local "words"])

def body829_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body829_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 32#64) (Flapjack.Exp.var Flapjack.VarKind.local "maxlen")) body829_0 body829_1

def body829_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "hbits"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "hbits", Flapjack.Exp.const 1#64])

def body829_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "hbits")) body829_3 body829_1

def body829_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "count" (Flapjack.Exp.var Flapjack.VarKind.local "hbits")

def body829_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "count"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.const 16#64,
          Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.var Flapjack.VarKind.local "elen", Flapjack.Exp.const 32#64]],
      Flapjack.Exp.var Flapjack.VarKind.local "hbits"])

def body829_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 32#64) (Flapjack.Exp.var Flapjack.VarKind.local "elen")) body829_5 body829_6

def body829_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "count" (Flapjack.Exp.const 1#64)

def body829_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "count") (Flapjack.Exp.const 1#64)) body829_8 body829_1

def body829_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "cost" (Flapjack.Exp.const 500#64)

def body829_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "cost") (Flapjack.Exp.const 500#64)) body829_10 body829_1

def body829_12 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "cost")

def body829_13 : Prog (BitVec 64) :=
.seq body829_11 body829_12

def body829_14 : Prog (BitVec 64) :=
.dec ("cost") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul
  [Flapjack.Exp.var Flapjack.VarKind.local "cplx", Flapjack.Exp.var Flapjack.VarKind.local "count"]) body829_13

def body829_15 : Prog (BitVec 64) :=
.seq body829_9 body829_14

def body829_16 : Prog (BitVec 64) :=
.seq body829_7 body829_15

def body829_17 : Prog (BitVec 64) :=
.dec ("count") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body829_16

def body829_18 : Prog (BitVec 64) :=
.seq body829_4 body829_17

def body829_19 : Prog (BitVec 64) :=
.decCall ("hbits") (Flapjack.Shape.one) ("u256_bit_length") ([Flapjack.Exp.var Flapjack.VarKind.local "head"]) body829_18

def body829_20 : Prog (BitVec 64) :=
.seq body829_2 body829_19

def body829_21 : Prog (BitVec 64) :=
.dec ("cplx") (Flapjack.Shape.one) (Flapjack.Exp.const 16#64) body829_20

def body829_22 : Prog (BitVec 64) :=
.dec ("words") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "maxlen", Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 3#64)) body829_21

def body829_23 : Prog (BitVec 64) :=
.decCall ("maxlen") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "blen", Flapjack.Exp.var Flapjack.VarKind.local "mlen"]) body829_22

def body829_24 : Prog (BitVec 64) :=
.seq body829_7 body829_9

def body829_25 : Prog (BitVec 64) :=
.seq body829_24 body829_14

def body829_26 : Prog (BitVec 64) :=
.dec ("count") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body829_25

def body829_27 : Prog (BitVec 64) :=
.seq body829_4 body829_26

def body829_28 : Prog (BitVec 64) :=
.decCall ("hbits") (Flapjack.Shape.one) ("u256_bit_length") ([Flapjack.Exp.var Flapjack.VarKind.local "head"]) body829_27

def body829_29 : Prog (BitVec 64) :=
.seq body829_2 body829_28

def body829_30 : Prog (BitVec 64) :=
.dec ("cplx") (Flapjack.Shape.one) (Flapjack.Exp.const 16#64) body829_29

def body829_31 : Prog (BitVec 64) :=
.dec ("words") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "maxlen", Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 3#64)) body829_30

def body829_32 : Prog (BitVec 64) :=
.decCall ("maxlen") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "blen", Flapjack.Exp.var Flapjack.VarKind.local "mlen"]) body829_31

def originalData829 : Decl (BitVec 64) :=
.function { name := "modexp_gas", inline := false, exported := false, params := [("blen", Flapjack.Shape.one), ("mlen", Flapjack.Shape.one), ("elen", Flapjack.Shape.one),
  ("head", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body829_23, returnShape := (Flapjack.Shape.one) }
def simplifiedData829 : Decl (BitVec 64) :=
.function { name := "modexp_gas", inline := false, exported := false, params := [("blen", Flapjack.Shape.one), ("mlen", Flapjack.Shape.one), ("elen", Flapjack.Shape.one),
  ("head", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body829_32, returnShape := (Flapjack.Shape.one) }
def original829 := Pancake.PanLang.declToHOL originalData829
def simplified829 := Pancake.PanLang.declToHOL simplifiedData829
end InitECandidate.Proofs.FrontendStages.Declarations
