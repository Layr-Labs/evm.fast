import InitECandidate.Proofs.FrontendComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body0_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mem_init" []

def body0_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_init" []

def body0_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak_init" []

def body0_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_init" []

def body0_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_init" []

def body0_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_ws_init" []

def body0_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "secp256k1_init" []

def body0_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn254_init" []

def body0_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bls_precompiles_init" []

def body0_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ripemd160_init" []

def body0_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "blake2_init" []

def body0_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "header_init" []

def body0_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "evm_init" []

def body0_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fork_init" []

def body0_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "z32", Flapjack.Exp.const 32#64]

def body0_15 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (some (Flapjack.VarKind.local, "si"),
      some
        ("SszErr", "err_code",
          Flapjack.Prog.decCall "n" Flapjack.Shape.one "serialize_result"
            [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "z32",
              Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]
            (Flapjack.Prog.seq
              (Flapjack.Prog.storeByte
                (Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "n"])
                (Flapjack.Exp.var Flapjack.VarKind.local "err_code"))
              (Flapjack.Prog.seq
                (Flapjack.Prog.call (some (none, none)) "output_write"
                  [Flapjack.Exp.var Flapjack.VarKind.local "out",
                    Flapjack.Exp.op Flapjack.BinOp.add
                      [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64]])
                (Flapjack.Prog.seq
                  (Flapjack.Prog.extCall "halt" Flapjack.Exp.baseAddr (Flapjack.Exp.const 0#64) Flapjack.Exp.baseAddr
                    (Flapjack.Exp.const 0#64))
                  (Flapjack.Prog.return (Flapjack.Exp.const 1#64))))))))
  "decode_host_input" []

def body0_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_new_payload_request"
  [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.var Flapjack.VarKind.local "root"]

def body0_17 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "n"])
  (Flapjack.Exp.var Flapjack.VarKind.global "fail_code")

def body0_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "output_write"
  [Flapjack.Exp.var Flapjack.VarKind.local "out",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64]]

def body0_19 : Prog (BitVec 64) :=
Flapjack.Prog.extCall "halt" Flapjack.Exp.baseAddr (Flapjack.Exp.const 0#64) Flapjack.Exp.baseAddr
  (Flapjack.Exp.const 0#64)

def body0_20 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body0_21 : Prog (BitVec 64) :=
.seq body0_19 body0_20

def body0_22 : Prog (BitVec 64) :=
.seq body0_18 body0_21

def body0_23 : Prog (BitVec 64) :=
.seq body0_17 body0_22

def body0_24 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("serialize_result") ([Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "root",
  Flapjack.Exp.var Flapjack.VarKind.local "succ",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.const 5377#64]) body0_23

def body0_25 : Prog (BitVec 64) :=
.decCall ("succ") (Flapjack.Shape.one) ("verify_stateless_new_payload") ([Flapjack.Exp.var Flapjack.VarKind.local "si"]) body0_24

def body0_26 : Prog (BitVec 64) :=
.seq body0_16 body0_25

def body0_27 : Prog (BitVec 64) :=
.decCall ("root") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body0_26

def body0_28 : Prog (BitVec 64) :=
.seq body0_15 body0_27

def body0_29 : Prog (BitVec 64) :=
.dec ("err_code") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body0_28

def body0_30 : Prog (BitVec 64) :=
.dec ("si") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body0_29

def body0_31 : Prog (BitVec 64) :=
.seq body0_14 body0_30

def body0_32 : Prog (BitVec 64) :=
.decCall ("z32") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body0_31

def body0_33 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 256#64]) body0_32

def body0_34 : Prog (BitVec 64) :=
.seq body0_13 body0_33

def body0_35 : Prog (BitVec 64) :=
.seq body0_12 body0_34

def body0_36 : Prog (BitVec 64) :=
.seq body0_11 body0_35

def body0_37 : Prog (BitVec 64) :=
.seq body0_10 body0_36

def body0_38 : Prog (BitVec 64) :=
.seq body0_9 body0_37

def body0_39 : Prog (BitVec 64) :=
.seq body0_8 body0_38

def body0_40 : Prog (BitVec 64) :=
.seq body0_7 body0_39

def body0_41 : Prog (BitVec 64) :=
.seq body0_6 body0_40

def body0_42 : Prog (BitVec 64) :=
.seq body0_5 body0_41

def body0_43 : Prog (BitVec 64) :=
.seq body0_4 body0_42

def body0_44 : Prog (BitVec 64) :=
.seq body0_3 body0_43

def body0_45 : Prog (BitVec 64) :=
.seq body0_2 body0_44

def body0_46 : Prog (BitVec 64) :=
.seq body0_1 body0_45

def body0_47 : Prog (BitVec 64) :=
.seq body0_0 body0_46

def body0_48 : Prog (BitVec 64) :=
.seq body0_0 body0_1

def body0_49 : Prog (BitVec 64) :=
.seq body0_48 body0_2

def body0_50 : Prog (BitVec 64) :=
.seq body0_49 body0_3

def body0_51 : Prog (BitVec 64) :=
.seq body0_50 body0_4

def body0_52 : Prog (BitVec 64) :=
.seq body0_51 body0_5

def body0_53 : Prog (BitVec 64) :=
.seq body0_52 body0_6

def body0_54 : Prog (BitVec 64) :=
.seq body0_53 body0_7

def body0_55 : Prog (BitVec 64) :=
.seq body0_54 body0_8

def body0_56 : Prog (BitVec 64) :=
.seq body0_55 body0_9

def body0_57 : Prog (BitVec 64) :=
.seq body0_56 body0_10

def body0_58 : Prog (BitVec 64) :=
.seq body0_57 body0_11

def body0_59 : Prog (BitVec 64) :=
.seq body0_58 body0_12

def body0_60 : Prog (BitVec 64) :=
.seq body0_59 body0_13

def body0_61 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (some (Flapjack.VarKind.local, "si"),
      some
        ("SszErr", "err_code",
          Flapjack.Prog.decCall "n" Flapjack.Shape.one "serialize_result"
            [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "z32",
              Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]
            (Flapjack.Prog.seq
              (Flapjack.Prog.seq
                (Flapjack.Prog.seq
                  (Flapjack.Prog.storeByte
                    (Flapjack.Exp.op Flapjack.BinOp.add
                      [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "n"])
                    (Flapjack.Exp.var Flapjack.VarKind.local "err_code"))
                  (Flapjack.Prog.call (some (none, none)) "output_write"
                    [Flapjack.Exp.var Flapjack.VarKind.local "out",
                      Flapjack.Exp.op Flapjack.BinOp.add
                        [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64]]))
                (Flapjack.Prog.extCall "halt" Flapjack.Exp.baseAddr (Flapjack.Exp.const 0#64) Flapjack.Exp.baseAddr
                  (Flapjack.Exp.const 0#64)))
              (Flapjack.Prog.return (Flapjack.Exp.const 1#64))))))
  "decode_host_input" []

def body0_62 : Prog (BitVec 64) :=
.seq body0_17 body0_18

def body0_63 : Prog (BitVec 64) :=
.seq body0_62 body0_19

def body0_64 : Prog (BitVec 64) :=
.seq body0_63 body0_20

def body0_65 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("serialize_result") ([Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "root",
  Flapjack.Exp.var Flapjack.VarKind.local "succ",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "si", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.const 5377#64]) body0_64

def body0_66 : Prog (BitVec 64) :=
.decCall ("succ") (Flapjack.Shape.one) ("verify_stateless_new_payload") ([Flapjack.Exp.var Flapjack.VarKind.local "si"]) body0_65

def body0_67 : Prog (BitVec 64) :=
.seq body0_16 body0_66

def body0_68 : Prog (BitVec 64) :=
.decCall ("root") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body0_67

def body0_69 : Prog (BitVec 64) :=
.seq body0_61 body0_68

def body0_70 : Prog (BitVec 64) :=
.dec ("err_code") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body0_69

def body0_71 : Prog (BitVec 64) :=
.dec ("si") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body0_70

def body0_72 : Prog (BitVec 64) :=
.seq body0_14 body0_71

def body0_73 : Prog (BitVec 64) :=
.decCall ("z32") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body0_72

def body0_74 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 256#64]) body0_73

def body0_75 : Prog (BitVec 64) :=
.seq body0_60 body0_74

def originalData0 : Decl (BitVec 64) :=
.function { name := "main", inline := false, exported := false, params := [], body := body0_47, returnShape := (Flapjack.Shape.one) }
def simplifiedData0 : Decl (BitVec 64) :=
.function { name := "main", inline := false, exported := false, params := [], body := body0_75, returnShape := (Flapjack.Shape.one) }
def original0 := Pancake.PanLang.declToHOL originalData0
def simplified0 := Pancake.PanLang.declToHOL simplifiedData0
end InitECandidate.Proofs.FrontendStages.Declarations
